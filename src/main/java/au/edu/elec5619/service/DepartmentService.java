package au.edu.elec5619.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.edu.elec5619.dao.DepartmentDao;
import au.edu.elec5619.domain.Department;
import au.edu.elec5619.domain.Doctor;

@Service(value="departmentService")
@Transactional
public class DepartmentService {

	@Autowired
	private DepartmentDao departmentDao; 

	public List<Department> listDepartments(){
		List<Department> departmentList = departmentDao.listDepartments();
		return departmentList;
	}
	
	 public Department getDepartmentByID(String id){
		 Department Department = departmentDao.getDepartmentByID(id);
	     return Department;
	    }

}