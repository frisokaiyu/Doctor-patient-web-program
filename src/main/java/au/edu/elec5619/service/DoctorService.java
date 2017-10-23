package au.edu.elec5619.service;

import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.edu.elec5619.dao.DiagnosisDao;
import au.edu.elec5619.dao.DoctorDao;
import au.edu.elec5619.dao.EvaluationDao;
import au.edu.elec5619.dao.MedicineDao;
import au.edu.elec5619.dao.OrderDao;
import au.edu.elec5619.domain.Appoint;
import au.edu.elec5619.domain.Apporder;
import au.edu.elec5619.domain.Diagnosis;
import au.edu.elec5619.domain.Disease;
import au.edu.elec5619.domain.Doctor;
import au.edu.elec5619.domain.Evaluation;
import au.edu.elec5619.domain.Medicine;
import au.edu.elec5619.domain.Patient;;

@Service(value="doctorService")
@Transactional
public class DoctorService {

    @Autowired
    private DoctorDao doctorDao;
    
    @Autowired
    private OrderDao orderDao;
    @Autowired
    private MedicineDao medicineDao;
    @Autowired
    private DiagnosisDao diagnosisDao;
    @Autowired
    private EvaluationDao evaluationDao;
    
    
    public Doctor getDoctorByUsername(String username){
    	Doctor doctor = doctorDao.getDoctorByUsername(username);
    	return doctor;
    }
    public Doctor getDoctorByID(String id){
    	Doctor doctor = doctorDao.getDoctorByID(id);
    	return doctor;
    }

	public Doctor login(String username, String password) {
		Doctor doctor = doctorDao.getDoctorByUsernameAndPassword(username,password);
		return doctor;
	}
	
	public List<Doctor> getAllDoctor(String departmentid) {
		List<Doctor> doctorList = doctorDao.getAllDoctor(departmentid);
        return doctorList;
	}
	
	
	
	public Appoint getAppointmentByDoctorid(String doctorid, String date) {
    	
        return doctorDao.getAppointmentByDoctorid(doctorid,date);
	}
	
	public List<Apporder> getAppordersByDoctorid(String doctorid) {
    	
        return orderDao.getAppordersByDoctorid(doctorid);
	}
	
	public Apporder getApporderByDoctoridAndPatientid(String doctorid,String patientid) {
    	
        return orderDao.getApporderByDoctoridAndPatientid(doctorid, patientid);
	}
	
	public List<Medicine> getAllMedicine() {
		return medicineDao.getAllMedicine();
	}
	
    public Medicine getMedicineById(String id) {
		 
		return medicineDao.getMedicineById(id);
	}
    
    public void saveDiagnosis(Diagnosis diagnosis) {
    	  
    	diagnosisDao.saveDiagnosis(diagnosis);
   
    }
    
    public void updateDoctor(Doctor doctor) {
  	  
    	doctorDao.updateDoctor(doctor);
   
    }
    
    public List<Evaluation> getEvaluationByDoctorid(String doctorid) {
    	
        return evaluationDao.getEvaluationByDoctorid(doctorid);
	}
    

}