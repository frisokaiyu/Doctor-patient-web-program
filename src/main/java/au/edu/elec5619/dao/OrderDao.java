package au.edu.elec5619.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import au.edu.elec5619.domain.Appoint;
import au.edu.elec5619.domain.Apporder;
import au.edu.elec5619.domain.Doctor;;

@Repository(value = "OrderDao")
public class OrderDao {

    @Resource
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void saveOrder(Apporder order) {
  
    	sessionFactory.getCurrentSession().save(order);
   
    }
    
    public List<Apporder> getAppordersByDoctorid(String doctorid) {
    	String hql = "from Apporder as p where p.doctorid=:doctorid";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("doctorid", doctorid);
		List<Apporder> apporderList = query.list();
        return apporderList;
	}
    
    public Apporder getApporderByDoctoridAndPatientid(String doctorid,String patientid) {

    	String hql = "from Apporder as p where p.doctorid=:doctorid and p.patientid =:patientid";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("doctorid", doctorid);
		query.setString("patientid", patientid);
		query.setMaxResults(1); 
		Apporder apporder = (Apporder)query.uniqueResult();
        return apporder;
	}

    public List<Apporder> getApporderByPatientid(String patientid){
		
    	String hql = "from Apporder as p where p.patientid =:patientid";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("patientid", patientid);
		List<Apporder> apporderList = query.list();
		return apporderList;
	}

}