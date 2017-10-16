package au.edu.elec5619.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import au.edu.elec5619.domain.Disease;
import au.edu.elec5619.domain.Patient;
import au.edu.elec5619.service.PatientService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestMethod;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;



@Controller
public class PatientController {
	
    @Autowired
    private PatientService patientService;
    
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
	public String register(@ModelAttribute Patient patient) {

		System.out.println(patient);
		if(patientService.register(patient))
		{
			System.out.println("register succeed");
		}	
		else 
		{
			System.out.println("user name has been used");
		}
		return "home";
			
		
	}
	
}
