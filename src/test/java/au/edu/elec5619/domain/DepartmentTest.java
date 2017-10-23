package au.edu.elec5619.domain;
import junit.framework.TestCase;

public class DepartmentTest extends TestCase{
	 private Department department;
	 
	 protected void setUp() throws Exception {
		 department = new Department();
	 }
	 
	 public void testSetAndGetID() {
		 int testID = 1;
		 assertEquals(0,0,0);
		 department.setId(testID);;
		 assertEquals(testID, department.getId(),0);
	 }
	 
	 
	 public void testSetAndGetDescription() {
		 String testDescription = "aDescription";
		 assertNull(department.getdescription());
		 department.setdescription(testDescription);
		 assertEquals(testDescription, department.getdescription());
	 }
	 
	 public void testSetAndGetName() {
		 String testName = "aName";
		 assertNull(department.getName());
		 department.setName(testName);
		 assertEquals(testName, department.getName());
	 }
}