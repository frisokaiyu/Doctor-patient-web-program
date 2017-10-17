package au.edu.elec5619.web;

import java.util.Locale;

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
import au.edu.elec5619.domain.Patient;
import au.edu.elec5619.service.PatientService;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
    @Autowired
    private PatientService patientService;
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
    public @ResponseBody Disease getDiseaseBySymptom(@PathVariable("symptom") String name){
    	Disease disease = patientService.getDiseaseBySymptom(name);
    	System.out.println(disease);
    	return disease;
    }
	
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(@RequestParam ("username") String username,@RequestParam ("password") String password){
    	Patient patient = patientService.login(username,password);
    	if(patient!=null)
    	{
    		System.out.println("login succeed");
    	}
    	else
    	{
    		System.out.println("login fail");
    	}
    	return "contact";
    }
}
