package au.edu.elec5619.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import au.edu.elec5619.domain.Department;
import au.edu.elec5619.domain.Doctor;

@Repository(value="departmentDao")
public class DepartmentDao {
	@Resource
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

	public List<Department> listDepartments() {
		
    	String hql = "from Department";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<Department> departmentList = query.list();
    	//List<Department> departmentList = (List<Department>) session.createQuery("from User").list();
        return departmentList;
	}
	
	  public Department getDepartmentByID(String id){
	    	String hql = "from Department as p where p.id=:id";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setString("id", id);
			Department department = (Department)query.uniqueResult();
	        return department;
	    }


}