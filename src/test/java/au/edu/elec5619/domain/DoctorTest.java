package au.edu.elec5619.domain;
import java.util.Date;

import junit.framework.TestCase;

public class DoctorTest extends TestCase{
	 private Doctor doctor;
	 
	 protected void setUp() throws Exception {
		 doctor = new Doctor();
	 }
	 
	 public void testSetAndGetID() {
		 int testID = 1;
		 assertEquals(0,0,0);
		 doctor.setId(testID);
		 assertEquals(testID, doctor.getId(),0);
	 }
	 
	 public void testSetAndGetUsername() {
		 String testusername = "ausername";
		 assertNull(doctor.getUsername());
		 doctor.setUsername(testusername);
		 assertEquals(testusername, doctor.getUsername());
	 }
	 
	 public void testSetAndGetPassword() {
		 String testpassword = "apassword";
		 assertNull(doctor.getPassword());
		 doctor.setPassword(testpassword);
		 assertEquals(testpassword, doctor.getPassword());
	 }
	 
	 public void testSetAndGetFirstname() {
		 String testfirstname = "afirstname";
		 assertNull(doctor.getFirstname());
		 doctor.setFirstname(testfirstname);
		 assertEquals(testfirstname, doctor.getFirstname());
	 }
	 
	 public void testSetAndGetLastname() {
		 String testlastname = "alastname";
		 assertNull(doctor.getLastname());
		 doctor.setLastname(testlastname);
		 assertEquals(testlastname, doctor.getLastname());
	 }
	 
	 public void testSetAndGetAge() {
		 int testage = 0;
		 assertEquals(0,0,0);
		 doctor.setAge(testage);
		 assertEquals(testage, doctor.getAge(),0);
	 }
	 
	 public void testSetAndGetGender() {
		 String testgender = "agender";
		 assertNull(doctor.getGender());
		 doctor.setGender(testgender);
		 assertEquals(testgender, doctor.getGender());
	 }
	 
	 public void testSetAndGetBirthday() {
		 Date testbirthday = new Date();
		 assertNull(doctor.getBirthday());
		doctor.setBirthday(testbirthday);
		 assertEquals(testbirthday, doctor.getBirthday());
	 }
	 
	 public void testSetAndGetPhone() {
		 String testphone = "aphone";
		 assertNull(doctor.getPhone());
		 doctor.setPhone(testphone);
		 assertEquals(testphone, doctor.getPhone());
	 }
	 
	 public void testSetAndGetEmail() {
		 String testemail = "aemail";
		 assertNull(doctor.getEmail());
		 doctor.setEmail(testemail);
		 assertEquals(testemail, doctor.getEmail());
	 }
	 
	 public void testSetAndGetDescription() {
		 String testdescription = "adescription";
		 assertNull(doctor.getDescription());
		 doctor.setDescription(testdescription);
		 assertEquals(testdescription, doctor.getDescription());
	 }
	 
	 public void testSetAndGetDept() {
		 String testdept = "adept";
		 assertNull(doctor.getDept());
		 doctor.setDept(testdept);
		 assertEquals(testdept, doctor.getDept());
	 }
	 
	 public void testSetAndGetDeptid() {
		 int testdeptid = 0;
		 assertEquals(0,0,0);
		 doctor.setDeptid(testdeptid);
		 assertEquals(testdeptid,doctor.getDeptid(),0);
	 }
}