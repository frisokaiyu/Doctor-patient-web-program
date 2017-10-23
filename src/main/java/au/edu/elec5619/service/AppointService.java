package au.edu.elec5619.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.edu.elec5619.dao.AppointDao;
import au.edu.elec5619.dao.OrderDao;
import au.edu.elec5619.domain.Appoint;
import au.edu.elec5619.domain.Apporder;;

@Service(value="appointService")
@Transactional
public class AppointService {

    @Autowired
    private AppointDao appointDao;
    
    @Autowired
    private OrderDao orderDao;
    
    public void saveAppoint(Appoint appoint) {
    	  
    	appointDao.saveAppoint(appoint);
   
    }
    
    public void updateAppoint(Appoint appoint) {
  	  
    	appointDao.updateAppoint(appoint);
   
    }
    
    public void saveOrder(Apporder order) {
    	  
    	orderDao.saveOrder(order);
   
    }

}