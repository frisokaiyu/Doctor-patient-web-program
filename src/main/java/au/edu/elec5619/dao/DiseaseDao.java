package au.edu.elec5619.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import au.edu.elec5619.domain.Disease;
import au.edu.elec5619.domain.Patient;;

@Repository(value = "DiseaseDao")
public class DiseaseDao {

    @Resource
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    public Disease getDiseaseByName(String name){
    	String hql = "from Disease as p where p.name=:name";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("name", name);
		Disease disease = (Disease)query.uniqueResult();
        return disease;
    }


	public List<Disease> getDiseasesBySymptom(String name) {
    	String hql = "from Disease as p where p.symptom  like ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, "%"+name+"%");
		List<Disease> diseaseList = query.list();
        return diseaseList;
	}
}