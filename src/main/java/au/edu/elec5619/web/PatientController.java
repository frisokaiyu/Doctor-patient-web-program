package au.edu.elec5619.web;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import au.edu.elec5619.domain.Appoint;
import au.edu.elec5619.domain.Disease;
import au.edu.elec5619.domain.Doctor;
import au.edu.elec5619.domain.Evaluation;
import au.edu.elec5619.domain.Medicine;
import au.edu.elec5619.domain.Apporder;
import au.edu.elec5619.domain.Department;
import au.edu.elec5619.domain.Diagnosis;
import au.edu.elec5619.domain.Patient;
import au.edu.elec5619.service.AppointService;
import au.edu.elec5619.service.DepartmentService;
import au.edu.elec5619.service.DoctorService;
import au.edu.elec5619.service.PatientService;



@Controller
public class PatientController {
	
    @Autowired
    private PatientService patientService;
    
    @Autowired
    private DoctorService doctorService;
    
    @Autowired
    private AppointService appointService;
    
    @Autowired
    private DepartmentService departmentService;
    
    private Map<String, Disease> issuers = new HashMap<String, Disease>();

    @InitBinder
    public void initBinder(WebDataBinder binder) {
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    dateFormat.setLenient(false);
    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }
    
    @RequestMapping(value = "patient/{patientUserName}", method = RequestMethod.GET)
    public Patient getPatientByName(@PathVariable("patientUserName") String username){
    	Patient patient = patientService.getPatientByUsername(username);
    	return patient;
    }
    
	@RequestMapping(value = "patients", method = RequestMethod.POST)
	public @ResponseBody String register(@ModelAttribute Patient patient) {

		String msg = patientService.registerPatient(patient);
		JSONObject json = new JSONObject();
		json.put("msg", msg);
		System.out.println(msg);
    	return json.toJSONString();

	}
	
	@RequestMapping(value = "selectdept", method = RequestMethod.GET)
    public String selectdept(HttpServletRequest request,Locale locale, Model model){
		List<Department> departmentList = departmentService.listDepartments();
		String date = request.getParameter("date");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String nowDate = sdf.format(new Date());
		date = date == null ? nowDate : date ;
		request.setAttribute("departmentList", departmentList);
		request.setAttribute("date", date);
    	return "patient/departmentlist";
    }
	
	@RequestMapping(value = "appointPat", method = RequestMethod.GET)
    public String appointPat(HttpServletRequest request,@RequestParam String departmentid,Locale locale, Model model){
		List<Doctor> doctorList = doctorService.getAllDoctor(departmentid);
		String date = request.getParameter("date");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String nowDate = sdf.format(new Date());
		date = date == null ? nowDate : date ;
		request.setAttribute("doctorList", doctorList);
		request.setAttribute("departmentid", departmentid);
		request.setAttribute("date", date);
    	return "patient/doctorlist";
    }
	
	@RequestMapping(value = "timetable", method = RequestMethod.GET)
    public String timetable(HttpServletRequest request,@RequestParam ("doctorid") String doctorid,@RequestParam ("date") String date,Locale locale, Model model){
		Appoint appoint = doctorService.getAppointmentByDoctorid(doctorid,date);
		request.setAttribute("doctorid", doctorid);
		//request.setAttribute("departmentid", departmentid);
		request.setAttribute("date", date);
		request.setAttribute("appoint", appoint);
    	return "patient/appoint";
    }
	
	@RequestMapping(value = "comfirmpage", method = RequestMethod.GET)
    public String comfirmpage(HttpServletRequest request,HttpServletResponse response,@RequestParam ("doctorid") String doctorid,@RequestParam ("date") String date,Locale locale, Model model) throws Exception{
		Enumeration em = request.getParameterNames();
		String timemark = em.nextElement().toString();
		System.out.println("===================="+timemark+"============");
		Doctor appDoctor = doctorService.getDoctorByID(doctorid);
		String Dfirstname = appDoctor.getFirstname();
		String Dlastname = appDoctor.getLastname();
		String Depid = Integer.toString(appDoctor.getDeptid());
		Department appDept = departmentService.getDepartmentByID(Depid);
		String Depname = appDept.getName();
		
		String timeperiod = null;
		if (timemark.matches("time1")){timeperiod= "Morning: 8:00-9:00";}
		if (timemark.matches("time2")){timeperiod= "Morning: 9:00-10:00";}
		if (timemark.matches("time3")){timeperiod= "Morning: 10:00-11:00";}
		if (timemark.matches("time4")){timeperiod= "Morning: 11:00-12:00";}
		if (timemark.matches("time5")){timeperiod= "Afternoon: 1:00-2:00";}
		if (timemark.matches("time6")){timeperiod= "Afternoon: 2:00-3:00";}
		if (timemark.matches("time7")){timeperiod= "Afternoon: 3:00-4:00";}
		if (timemark.matches("time8")){timeperiod= "Afternoon: 4:00-5:00";}
		
		request.setAttribute("Dfirstname", Dfirstname);
		request.setAttribute("Dlastname", Dlastname);
		request.setAttribute("Depname", Depname);
		request.setAttribute("timeperiod", timeperiod);
		request.setAttribute("date", date);
		return "patient/confirmpage";
	}
	
	@RequestMapping(value = "comfirmappo", method = RequestMethod.GET)
    public String comfirmappo(HttpServletRequest request,HttpServletResponse response,@RequestParam ("doctorid") String doctorid,@RequestParam ("date") String date,Locale locale, Model model) throws Exception{
		Patient patient =  (Patient) request.getSession().getAttribute("patient");
		System.out.println("===================="+request.getSession()+"============");
		Appoint appoint = doctorService.getAppointmentByDoctorid(doctorid,date);
		if(appoint == null){
			appoint = new Appoint();
			setRequestProperties(request, appoint);
			System.out.println("===================="+appoint+"============");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			appoint.setCreatedate(sdf.parse(date));
			appoint.setDoctorid(doctorid);
			appointService.saveAppoint(appoint);
		}else{
			setRequestProperties(request, appoint);
			appointService.updateAppoint(appoint);
		}
		
		Enumeration em = request.getParameterNames();
		String timemark = em.nextElement().toString();
		
		String timeperiod = null;
		if (timemark.matches("time1")){timeperiod= "Morning: 8:00-9:00";}
		if (timemark.matches("time2")){timeperiod= "Morning: 9:00-10:00";}
		if (timemark.matches("time3")){timeperiod= "Morning: 10:00-11:00";}
		if (timemark.matches("time4")){timeperiod= "Morning: 11:00-12:00";}
		if (timemark.matches("time5")){timeperiod= "Afternoon: 1:00-2:00";}
		if (timemark.matches("time6")){timeperiod= "Afternoon: 2:00-3:00";}
		if (timemark.matches("time7")){timeperiod= "Afternoon: 3:00-4:00";}
		if (timemark.matches("time8")){timeperiod= "Afternoon: 4:00-5:00";}
		
		Doctor appDoctor = doctorService.getDoctorByID(doctorid);
		String Dfirstname = appDoctor.getFirstname();
		String Dlastname = appDoctor.getLastname();
		String doctorname = Dfirstname + " " + Dlastname;
		
		Apporder order = new Apporder();
		order.setCreatetime(new Date());
		order.setDoctorid(doctorid);
		order.setPatientid(patient.getId()+"");
		order.setPatname(patient.getUsername());
		order.setappointdate(date);
		order.setappointtime(timeperiod);
		order.setdoctorame(doctorname);
		appointService.saveOrder(order);
		
		request.setAttribute("doctorid", doctorid);
		request.setAttribute("appoint", appoint);
		request.setAttribute("message", "successful");
		request.setAttribute("date", date);
    	return "patient/appoint";
    }
	

	@RequestMapping(value = "medicalRec", method = RequestMethod.GET)
    public String medicalRec(HttpServletRequest request,Locale locale, Model model){
		Patient patient =  (Patient) request.getSession().getAttribute("patient");
		List<Diagnosis> diagnosisList = patientService.getDiagnosisByPatientid(patient.getId()+"");
		
		
		request.setAttribute("diagnosisList", diagnosisList);
    	return "patient/medicalRecList";
    }

	@RequestMapping(value = "updatePatient", method = RequestMethod.POST)
    public @ResponseBody String updatePatient(HttpServletRequest request,Locale locale, Model model){
		Patient patient = (Patient) request.getSession().getAttribute("patient");
		System.out.println(patient);
		JSONObject json = new JSONObject();
		String firstname = request.getParameter("firstname");
       	String lastname = request.getParameter("lastname");
       	String ageStr = request.getParameter("age");
       	int age = Integer.parseInt(ageStr);
       	String bloodtype = request.getParameter("bloodtype");
       	String phone = request.getParameter("phone");
       	String email = request.getParameter("email");
       	String illnessdesc = request.getParameter("illnessdesc");
		
       	patient.setFirstname(firstname);
       	patient.setLastname(lastname);
       	patient.setAge(age);
       	patient.setBloodtype(bloodtype);
       	patient.setPhone(phone);
       	patient.setEmail(email);
       	patient.setIllnessdesc(illnessdesc);
       	
       	patientService.updatePatient(patient);
       	request.getSession().setAttribute("patient", patient);
       	json.put("msg", "Successful, basic information has been saved");
    	return json.toJSONString();
    }
	
	@RequestMapping(value = "medicalRecDetail", method = RequestMethod.GET)
    public String medicalRecDetail(HttpServletRequest request,Locale locale, Model model){
		Patient patient =  (Patient) request.getSession().getAttribute("patient");
		String id = request.getParameter("id");
		Diagnosis diagnosis = patientService.getDiagnosisById(id);
		if(diagnosis != null){
			List<Medicine> medicines = patientService.getMedicinesByIds(diagnosis.getMedicine());
			
			String medicineStr = "";
			for (Medicine medicine : medicines) {
				medicineStr += "<div><span>"+medicine.getMedicine()+"&nbsp;&nbsp;$"+medicine.getPrice()+"&nbsp;&nbsp;"+medicine.getDescription()+"</span></div>";
			}
			request.setAttribute("medicines", medicineStr);
			request.setAttribute("doctorid", diagnosis.getDoctorid());


		}
		
		request.setAttribute("diagnosis", diagnosis);
    	return "patient/medicalRec";
    }
	
    @RequestMapping(value = "indexPat", method = RequestMethod.GET)
    public String indexPat(Locale locale, Model model){
    	return "patient/index";
    }
    
    @RequestMapping(value = "exitPat", method = RequestMethod.GET)
    public String exitPat(HttpServletRequest request,Locale locale, Model model){
    	request.getSession().removeAttribute("patient");
    	return "index";
    }
    
    @RequestMapping(value = "saveEvaluation", method = RequestMethod.GET)
    public @ResponseBody String saveEvaluation(HttpServletRequest request,@ModelAttribute Evaluation evaluation,Locale locale, Model model){
    	evaluation.setCreatetime(new Date());
    	patientService.saveEvaluation(evaluation);
    	
		
		JSONObject json = new JSONObject();
		json.put("msg", "Evalution success");
    	return json.toJSONString();
    }
	
    @RequestMapping(value = "comfirmPwdModifyPat", method = RequestMethod.POST)
	public @ResponseBody String comfirmPwdModifyPat(HttpServletRequest request) {
    	Patient patient = (Patient) request.getSession().getAttribute("patient");
    	JSONObject json = new JSONObject();
    	String currentPwd = request.getParameter("currentPwd");
    	String newPassword = request.getParameter("newPassword");
    	if(!patient.getPassword().equals(currentPwd)){
    		json.put("msg", "Password incorrect");
    	}else{
    		patient.setPassword(newPassword);
    		patientService.updatePatient(patient);
    		request.getSession().setAttribute("patient", patient);
    		json.put("msg", "Successful, password has been changed");
    	}		
    	return json.toJSONString();
	}
    
    @RequestMapping(value = "passmodifyPat", method = RequestMethod.GET)
    public String passmodifyPat(HttpServletRequest request,Locale locale, Model model){
    	
    	return "patient/passmodifyPat";
    }
    
    @RequestMapping(value = "appointmentRec", method = RequestMethod.GET)
    public String appointmentRec(HttpServletRequest request,Locale locale, Model model){
		Patient patient =  (Patient) request.getSession().getAttribute("patient");
		List<Apporder> apporderList = patientService.getApporderByPatientid(Integer.toString(patient.getId()));
		
		
		request.setAttribute("apporderList", apporderList);
    	return "patient/appointmentList";
    }
    
	public Object setRequestProperties(HttpServletRequest request, Object bean) throws Exception{
		Enumeration em = request.getParameterNames();
		while (em.hasMoreElements()) {
			Object obj = em.nextElement();
			try {
			    //if(checkFieldPropertyExists(bean,obj.toString())){
    				Class cls = PropertyUtils.getPropertyType(bean, obj.toString());
    				Object beanValue = ConvertUtils.convert(request.getParameter(obj.toString()), cls);
    				if(obj.toString().trim().equals("createTime")){
    				    String cr = request.getParameter(obj.toString().trim());
    				    System.out.println(obj.toString()+"    "+cr);
    				    System.out.println("isnotnull    "+convertStringNull(cr+"").length());
    				    PropertyUtils.setProperty(bean, obj.toString().trim(), beanValue);
    				}
    				if(convertStringNull(beanValue+"").length()>0){
    				    PropertyUtils.setProperty(bean, obj.toString().trim(), beanValue);
    				}
			    //}
			} catch (Exception e) {
			}
		}
		return bean;
	} 
	
	
	  public static final String convertStringNull(String strOrig) {
	    String strReturn= "";
	    if (strOrig == null || strOrig.equals("null")) {
	      strReturn= "";
	    } else {
	      strReturn= strOrig.trim();
	    }
	    return strReturn;
	  }
	
}
