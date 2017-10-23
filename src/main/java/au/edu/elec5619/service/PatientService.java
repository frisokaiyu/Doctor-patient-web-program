package au.edu.elec5619.service;

import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.edu.elec5619.dao.DiagnosisDao;
import au.edu.elec5619.dao.DiseaseDao;
import au.edu.elec5619.dao.EvaluationDao;
import au.edu.elec5619.dao.MedicineDao;
import au.edu.elec5619.dao.OrderDao;
import au.edu.elec5619.dao.PatientDao;
import au.edu.elec5619.domain.Appoint;
import au.edu.elec5619.domain.Apporder;
import au.edu.elec5619.domain.Diagnosis;
import au.edu.elec5619.domain.Disease;
import au.edu.elec5619.domain.Evaluation;
import au.edu.elec5619.domain.Medicine;
import au.edu.elec5619.domain.Patient;;

@Service(value="patientService")
@Transactional
public class PatientService {

    @Autowired
    private PatientDao patientDao;
    
    @Autowired
    private DiseaseDao diseaseDao;
    
    @Autowired
    private DiagnosisDao diagnosisDao;
    
    @Autowired
    private MedicineDao medicineDao;
    
    @Autowired
    private EvaluationDao evaluationDao;
    
    @Autowired
    private OrderDao orderDao;
    
    public Patient getPatientByUsername(String username){
    	Patient patient = patientDao.getPatientByUsername(username);
    	return patient;
    }
    
    public Disease getDiseaseByName(String name){
    	Disease disease = diseaseDao.getDiseaseByName(name);
    	return disease;
    }
    
    
    public String registerPatient(Patient patient){
    	if(isPatientRegistered(patient)== false){
    		patientDao.savePatient(patient);
    		return "registered";
    	}
    	else
    		return "existed";
    }
    
    public boolean isPatientRegistered(Patient patient){
    	if(patientDao.getPatientByUsername(patient.getUsername())!=null)
    		return true;
    	else
    		return false;
    }


	public Patient login(String username, String password) {
		Patient patient = patientDao.getPatientByUsernameAndPassword(username,password);
		return patient;
	}

	public List<Disease> getDiseasesBySymptom(String name) {
    	List<Disease> diseaseList = diseaseDao.getDiseasesBySymptom(name);
    	return diseaseList;
	}
	
	public Patient getPatientById(String id){
    	
        return patientDao.getPatientById(id);
    }
	
	public List<Diagnosis> getDiagnosisByPatientid(String patientid) {

	    return diagnosisDao.getDiagnosisByPatientid(patientid);
	}
	
    public List<Medicine> getMedicinesByIds(String ids) {
        return medicineDao.getMedicinesByIds(ids);
	}
    
    public void saveEvaluation(Evaluation evaluation) {
    	  
    	evaluationDao.saveEvaluation(evaluation);
   
    }

	public Diagnosis getDiagnosisById(String id) {
		
		return diagnosisDao.getDiagnosisById(id);
	}
	
	public void updatePatient(Patient patient) {
	  	  
    	patientDao.updatePatient(patient);
    }

	public List<Apporder> getApporderByPatientid(String patientid){
		
		return orderDao.getApporderByPatientid(patientid);
	}
	
}