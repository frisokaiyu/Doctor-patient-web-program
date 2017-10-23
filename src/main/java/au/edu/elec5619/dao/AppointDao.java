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

@Repository(value = "AppointDao")
public class AppointDao {

    @Resource
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void saveAppoint(Appoint appoint) {
  
    	sessionFactory.getCurrentSession().save(appoint);
   
    }
    
    public void updateAppoint(Appoint appoint) {
    	  
    	sessionFactory.getCurrentSession().update(appoint);
   
    }

}