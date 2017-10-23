package au.edu.elec5619.domain;

import junit.framework.TestCase;

public class MedicineTest extends TestCase{
	 private Medicine medicine;
	 
	 protected void setUp() throws Exception {
		 medicine = new Medicine();
	 }
	 
	 public void testSetAndGetID() {
		 int testID = 1;
		 assertEquals(0,0,0);
		 medicine.setId(testID);
		 assertEquals(testID, medicine.getId(),0);
	 }
	 
	 public void testSetAndGetMedicine() {
		 String testmedicine = "amedicine";
		 assertNull(medicine.getMedicine());
		 medicine.setMedicine(testmedicine);
		 assertEquals(testmedicine, medicine.getMedicine());
	 }
	 
	 public void testSetAndGetDescription() {
		 String testdescription = "adescription";
		 assertNull(medicine.getDescription());
		 medicine.setDescription(testdescription);
		 assertEquals(testdescription, medicine.getDescription());
	 }
	 
	 public void testSetAndGetPrice() {
		 Double testprice = 1.0;
		 assertEquals(0,0,0);
		 medicine.setPrice(testprice);;
		 assertEquals(testprice, medicine.getPrice(),0);
	 }
	 
}