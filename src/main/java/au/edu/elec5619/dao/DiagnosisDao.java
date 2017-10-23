package au.edu.elec5619.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import au.edu.elec5619.domain.Appoint;
import au.edu.elec5619.domain.Apporder;
import au.edu.elec5619.domain.Diagnosis;
import au.edu.elec5619.domain.Doctor;;

@Repository(value = "DiagnosisDao")
public class DiagnosisDao {

    @Resource
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void saveDiagnosis(Diagnosis diagnosis) {
  
    	sessionFactory.getCurrentSession().save(diagnosis);
   
    }
    
    public List<Diagnosis> getDiagnosisByPatientid(String patientid) {

    	String hql = "from Diagnosis as p where p.patientid =:patientid";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("patientid", patientid);
		List<Diagnosis> diagnosisList = query.list();

        return diagnosisList;
	}

	public Diagnosis getDiagnosisById(String id) {
		String hql = "from Diagnosis as p where p.id =:id";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("id", id);
		Diagnosis diagnosis = (Diagnosis)query.uniqueResult();

        return diagnosis;
	}
    
    
    
  

}