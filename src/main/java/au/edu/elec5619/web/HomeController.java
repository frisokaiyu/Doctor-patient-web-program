package au.edu.elec5619.web;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import au.edu.elec5619.domain.Disease;
import au.edu.elec5619.domain.Doctor;
import au.edu.elec5619.domain.Evaluation;
import au.edu.elec5619.domain.Patient;
import au.edu.elec5619.service.DoctorService;
import au.edu.elec5619.service.PatientService;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
    @Autowired
    private PatientService patientService;
    
    @Autowired
    private DoctorService doctorService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "index";
	}
	@RequestMapping(value = "/{name}", method = RequestMethod.GET)
	public String componants(@PathVariable("name") String name) {
		return name;
	}
	
    @RequestMapping(value = "disease", method = RequestMethod.GET)
    public String getDiseaseByName(@RequestParam("diseasename") String name,ModelMap map){
    	Disease disease = patientService.getDiseaseByName(name);
    	map.addAttribute("disease", disease);
    	return "searchResult";
    }
    
	@RequestMapping(value = "symptom/{symptom}", method = RequestMethod.GET)
    public @ResponseBody List getDiseaseBySymptom(@PathVariable("symptom") String name){
    	List<Disease> diseaseList = patientService.getDiseasesBySymptom(name);
    	System.out.println(diseaseList);
    	return diseaseList;
    }
    
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registration(Locale locale, Model model) {
		return "registration";
	}
	
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(HttpServletRequest request,@RequestParam ("username") String username,@RequestParam ("password") String password,@RequestParam ("type") String type){
    	if("1".equals(type)){
    		Patient patient = patientService.login(username,password);
        	if(patient!=null)
        	{
        		request.getSession().setAttribute("patient", patient);
        		System.out.println("login succeed");
        		return "patient/index";
        	}
        	else
        	{
        		System.out.println("login fail");
            	return "index";
        	}
    	}else {
    		Doctor doctor = doctorService.login(username,password);

    		if(doctor!=null)
        	{
    			request.getSession().setAttribute("doctor", doctor);
        		System.out.println("login succeed");
            	List<Evaluation> evaluationList = doctorService.getEvaluationByDoctorid(doctor.getId()+"");
            	request.setAttribute("evaluationList", evaluationList);
        		return "doctor/index";
        	}
        	else
        	{
        		System.out.println("login fail");
            	return "index";
        	}
    	}
    	

    }
}
