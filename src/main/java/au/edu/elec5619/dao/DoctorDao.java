package au.edu.elec5619.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import au.edu.elec5619.domain.Appoint;
import au.edu.elec5619.domain.Disease;
import au.edu.elec5619.domain.Doctor;
import au.edu.elec5619.domain.Patient;;

@Repository(value = "DoctorDao")
public class DoctorDao {

    @Resource
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Doctor getDoctorByUsername(String username){
    	String hql = "from Doctor as p where p.username=:username";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("username", username);
		Doctor doctor = (Doctor)query.uniqueResult();
        return doctor;
    }
    
    public Doctor getDoctorByID(String id){
    	String hql = "from Doctor as p where p.id=:id";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("id", id);
		Doctor doctor = (Doctor)query.uniqueResult();
        return doctor;
    }
    
    public void saveDoctor(Doctor doctor) {
  
    	sessionFactory.getCurrentSession().save(doctor);
   
    }
    public void updateDoctor(Doctor doctor) {
    	  
    	sessionFactory.getCurrentSession().update(doctor);
   
    }

	public Doctor getDoctorByUsernameAndPassword(String username, String password) {

    	String hql = "from Doctor as p where p.username=:username and p.password =:password";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("username", username);
		query.setString("password", password);
		Doctor doctor = (Doctor)query.uniqueResult();
        return doctor;
	}
	
	public List<Doctor> getAllDoctor(String departmentid) {
		String hql = "from Doctor as d where d.dept_id=:Did";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("Did", departmentid);
		List<Doctor> doctorList = query.list();
        return doctorList;
	}
	
	public Appoint getAppointmentByDoctorid(String doctorid, String date) {
    	String hql = "from Appoint as d where d.doctorid=:doctorid and d.createdate=:date";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("doctorid", doctorid);
		query.setString("date", date);
		Appoint appoint = (Appoint)query.uniqueResult();
        return appoint;
	}
}