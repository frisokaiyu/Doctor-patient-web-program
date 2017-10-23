package au.edu.elec5619.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import au.edu.elec5619.domain.Appoint;
import au.edu.elec5619.domain.Apporder;
import au.edu.elec5619.domain.Diagnosis;
import au.edu.elec5619.domain.Disease;
import au.edu.elec5619.domain.Doctor;
import au.edu.elec5619.domain.Evaluation;
import au.edu.elec5619.domain.Medicine;
import au.edu.elec5619.domain.Patient;
import au.edu.elec5619.service.DoctorService;
import au.edu.elec5619.service.PatientService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestMethod;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;



@Controller
public class DoctorController {
	
    @Autowired
    private PatientService patientService;
    
    @Autowired
    private DoctorService doctorService;
    
    private Map<String, Disease> issuers = new HashMap<String, Disease>();

    @InitBinder
    public void initBinder(WebDataBinder binder) {
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    dateFormat.setLenient(false);
    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }
    
    @RequestMapping(value = "appoint", method = RequestMethod.GET)
    public String appoint(HttpServletRequest request,Locale locale, Model model){
    	Doctor doctor = (Doctor) request.getSession().getAttribute("doctor");
    	String date = request.getParameter("date");
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String nowDate = sdf.format(new Date());
		date = date == null ? nowDate : date ;
    	Appoint appoint = doctorService.getAppointmentByDoctorid(doctor.getId()+"",date);

    	request.setAttribute("doctorid", doctor.getId()+"");
		request.setAttribute("date", date);
		request.setAttribute("appoint", appoint);
    	return "doctor/appoint";
    }
    
    @RequestMapping(value = "diagnosismk", method = RequestMethod.GET)
    public String diagnosismk(HttpServletRequest request,Locale locale, Model model){
    	String patientid = request.getParameter("patientid");
    	Doctor doctor = (Doctor) request.getSession().getAttribute("doctor");
    	List<Apporder> apporderList = doctorService.getAppordersByDoctorid(doctor.getId()+"");
    	Patient patient = new Patient();
    	Apporder apporder = new Apporder();
    	if(!StringUtils.isEmpty(patientid)){
        	patient = patientService.getPatientById(patientid);
        	apporder = doctorService.getApporderByDoctoridAndPatientid(doctor.getId()+"", patientid);
        	
    	}
    	request.setAttribute("nowdate", new Date());
    	request.setAttribute("patient", patient);
    	request.setAttribute("patientid", patientid);
    	request.setAttribute("apporder", apporder);
    	request.setAttribute("apporderList", apporderList);
    	return "doctor/diagnosismk";
    }
    
    @RequestMapping(value = "getAllMedicine", method = RequestMethod.GET)
    public @ResponseBody String getAllMedicine(Locale locale, Model model){
    	
    	List<Medicine> medicineList = doctorService.getAllMedicine();
    	
		String str = "";
		str += "<div>"; 
		str += "	<select class=\"medicine\" onchange=\"changeMedicine(this)\">";
		str += "<option >please select</option>";
    	for (Medicine medicine : medicineList) {
    		
    		str += "<option value=\""+medicine.getId()+"\">"+medicine.getMedicine()+"</option>";
    		
		}
    	str += "</select>";
		str += "<span></span>";
		str += "</div>";
		JSONObject json = new JSONObject();
		json.put("str", str);
    	return json.toJSONString();
    }
    
    @RequestMapping(value = "updateDoctor", method = RequestMethod.GET)
    public @ResponseBody String updateDoctor(HttpServletRequest request,Locale locale, Model model){
    	Doctor doctor = (Doctor) request.getSession().getAttribute("doctor");

    	String firstname = request.getParameter("firstname");
    	String age = request.getParameter("age");
    	String gender = request.getParameter("gender");
    	String dept = request.getParameter("dept");
    	String description = request.getParameter("description");
    	
    	doctor.setFirstname(firstname);
    	doctor.setAge(Integer.valueOf(age));
    	doctor.setGender(gender);
    	doctor.setDept(dept);
    	doctor.setDescription(description);
    	
    	request.getSession().setAttribute("doctor", doctor);
    	doctorService.updateDoctor(doctor);
		JSONObject json = new JSONObject();
		json.put("msg", "successful");
    	return json.toJSONString();
    }
    
    @RequestMapping(value = "getMedicine", method = RequestMethod.GET)
    public @ResponseBody String getMedicine(HttpServletRequest request,Locale locale, Model model){
    	String id = request.getParameter("id");
    	Medicine medicine = doctorService.getMedicineById(id);
    	
		String str = "<span>$"+medicine.getPrice()+"  "+medicine.getDescription()+"</span>";
		
		JSONObject json = new JSONObject();
		json.put("str", str);
    	return json.toJSONString();
    }
    
    @RequestMapping(value = "saveDiagnose", method = RequestMethod.POST)
	public @ResponseBody String saveDiagnose(HttpServletRequest request,@ModelAttribute Diagnosis diagnosis) {
    	Doctor doctor = (Doctor) request.getSession().getAttribute("doctor");
    	diagnosis.setDoctorid(doctor.getId()+"");
    	diagnosis.setDoctorname(doctor.getFirstname());
    	diagnosis.setCreatetime(new Date());
		doctorService.saveDiagnosis(diagnosis);
		JSONObject json = new JSONObject();
		json.put("msg", "save successful");
    	return json.toJSONString();

	}
    
    @RequestMapping(value = "comfirmPwdModify", method = RequestMethod.POST)
	public @ResponseBody String comfirmPwdModify(HttpServletRequest request) {
    	Doctor doctor = (Doctor) request.getSession().getAttribute("doctor");
    	JSONObject json = new JSONObject();
    	String initPwd = request.getParameter("initPwd");
    	String newPassword = request.getParameter("newPassword");
    	if(!doctor.getPassword().equals(initPwd)){
    		json.put("msg", "initial password error");
    	}else{
    		doctor.setPassword(newPassword);
    		doctorService.updateDoctor(doctor);
    		request.getSession().setAttribute("doctor", doctor);
    		json.put("msg", "successful");
    	}
		
		
    	return json.toJSONString();

	}
    
    @RequestMapping(value = "passmodify", method = RequestMethod.GET)
    public String passmodify(HttpServletRequest request,Locale locale, Model model){
    	
    	return "doctor/passmodify";
    }
    
    @RequestMapping(value = "exitDoc", method = RequestMethod.GET)
    public String exitDoc(HttpServletRequest request,Locale locale, Model model){
    	request.getSession().removeAttribute("doctor");
    	return "index";
    }
    
    @RequestMapping(value = "indexDoc", method = RequestMethod.GET)
    public String indexDoc(HttpServletRequest request,Locale locale, Model model){
    	Doctor doctor = (Doctor) request.getSession().getAttribute("doctor");
    	List<Evaluation> evaluationList = doctorService.getEvaluationByDoctorid(doctor.getId()+"");
    	request.setAttribute("evaluationList", evaluationList);
    	return "doctor/index";
    }
    
	
	
}
