package au.edu.elec5619.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.edu.elec5619.dao.DiseaseDao;
import au.edu.elec5619.dao.PatientDao;
import au.edu.elec5619.domain.Disease;
import au.edu.elec5619.domain.Patient;;

@Service(value="patientService")
@Transactional
public class PatientService {

    @Autowired
    private PatientDao patientDao;
    
    @Autowired
    private DiseaseDao diseaseDao;
    
    public Patient getPatientByUsername(String username){
    	Patient patient = patientDao.getPatientByUsername(username);
    	return patient;
    }
    
    public Disease getDiseaseByName(String name){
    	Disease disease = diseaseDao.getDiseaseByName(name);
    	return disease;
    }
    
    public void savePatient(Patient patient){
    	patientDao.savePatient(patient);
    }
    
    public void registerPatient(Patient patient){
    	if(patientDao.getPatientByUsername(patient.getUsername())!=null)
    	{ 
    	}	
    	else
    	{
    		patientDao.savePatient(patient);
    	}
    }
}