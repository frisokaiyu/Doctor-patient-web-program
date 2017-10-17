package au.edu.elec5619.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import au.edu.elec5619.domain.Patient;;

@Repository(value = "PatientDao")
public class PatientDao {

    @Resource
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Patient getPatientByUsername(String username){
    	String hql = "from Patient as p where p.username=:username";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("username", username);
		Patient patient = (Patient)query.uniqueResult();
        return patient;
    }
    public void savePatient(Patient patient) {
  
    	sessionFactory.getCurrentSession().save(patient);
   
    }

	public Patient getPatientByUsernameAndPassword(String username, String password) {

    	String hql = "from Patient as p where p.username=:username and p.password =:password";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("username", username);
		query.setString("password", password);
		Patient patient = (Patient)query.uniqueResult();
        return patient;
	}
}