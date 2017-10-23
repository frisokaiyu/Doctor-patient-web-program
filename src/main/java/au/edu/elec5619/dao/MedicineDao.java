package au.edu.elec5619.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import au.edu.elec5619.domain.Appoint;
import au.edu.elec5619.domain.Apporder;
import au.edu.elec5619.domain.Doctor;
import au.edu.elec5619.domain.Medicine;;

@Repository(value = "MedicineDao")
public class MedicineDao {

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
    
    public List<Medicine> getAllMedicine() {
    	String hql = "from Medicine";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<Medicine> medicineList = query.list();
        return medicineList;
	}
    
    public List<Medicine> getMedicinesByIds(String ids) {
    	String hql = "from Medicine where id in (:ids)";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		String[] idsArr = ids.split(",");
		Integer[] idsIntArr = new Integer[idsArr.length];
		for (int i = 0; i < idsArr.length; i++) {
			idsIntArr[i] = Integer.valueOf(idsArr[i]);
		}
		query.setParameterList("ids", idsIntArr); 
		List<Medicine> medicineList = query.list();
        return medicineList;
	}
    
    public Medicine getMedicineById(String id) {
    	String hql = "from Medicine where id = :id";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("id", id);
		Medicine medicine = (Medicine)query.uniqueResult();
        return medicine;
	}
    

}