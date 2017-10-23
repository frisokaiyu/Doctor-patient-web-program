package au.edu.elec5619.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import au.edu.elec5619.domain.Apporder;
import au.edu.elec5619.domain.Evaluation;;

@Repository(value = "EvaluationDao")
public class EvaluationDao {

    @Resource
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void saveEvaluation(Evaluation evaluation) {
  
    	sessionFactory.getCurrentSession().save(evaluation);
   
    }
    
    public List<Evaluation> getEvaluationByDoctorid(String doctorid) {
    	String hql = "from Evaluation as p where p.doctorid=:doctorid";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("doctorid", doctorid);
		List<Evaluation> evaluationList = query.list();
        return evaluationList;
	}
    

}