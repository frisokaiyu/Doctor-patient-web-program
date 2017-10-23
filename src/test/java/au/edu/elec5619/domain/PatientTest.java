package au.edu.elec5619.domain;

import java.util.Date;

import org.junit.Test;

import junit.framework.TestCase;

public class PatientTest extends TestCase{
	
	private Patient patient;
	
	protected void setUp() throws Exception {
		
		patient = new Patient();
	}
	
	@Test
	public void testSetAndGetId() {
		int testId = 1;
		assertEquals(0,0,0);
		patient.setId(testId);
		assertEquals(testId, patient.getId(),0);
	}
	
	@Test
	public void testSetAndGetUsername() {
		String testUsername = "testUsername";
		assertNull(patient.getUsername());
		patient.setUsername(testUsername);
		assertEquals(testUsername, patient.getUsername());
	}
	
	@Test
	public void testSetAndGetPassword() {
		String testPassword = "testPassword";
		assertNull(patient.getPassword());
		patient.setPassword(testPassword);
		assertEquals(testPassword, patient.getPassword());
	}
	
	@Test
	public void testSetAndGetFirstname() {
		String testFirstname = "testFirstname";
		assertNull(patient.getFirstname());
		patient.setFirstname(testFirstname);
		assertEquals(testFirstname, patient.getFirstname());
	}
	
	@Test
	public void testSetAndGetLastname() {
		String testLastname = "testLastname";
		assertNull(patient.getLastname());
		patient.setLastname(testLastname);
		assertEquals(testLastname, patient.getLastname());
	}
	
	@Test
	public void testSetAndGetGender() {
		String testGender = "testGender";
		assertNull(patient.getGender());
		patient.setGender(testGender);
		assertEquals(testGender, patient.getGender());
	}
	
	@Test
	public void testSetAndGetBirthday() {
		Date testBirthday = new Date();
		assertNull(patient.getBirthday());
		patient.setBirthday(testBirthday);
		assertEquals(testBirthday, patient.getBirthday());
	}
	
	@Test
	public void testSetAndGetPhone() {
		String testPhone = "testPhone";
		assertNull(patient.getPhone());
		patient.setPhone(testPhone);
		assertEquals(testPhone, patient.getPhone());
	}
	
	@Test
	public void testSetAndGetEmail() {
		String testEmail = "testEmail";
		assertNull(patient.getEmail());
		patient.setEmail(testEmail);
		assertEquals(testEmail, patient.getEmail());
	}
	
	@Test
	public void testSetAndGetBloodtype() {
		String testBloodtype = "testBloodtype";
		assertNull(patient.getBloodtype());
		patient.setBloodtype(testBloodtype);
		assertEquals(testBloodtype, patient.getBloodtype());
	}
	
	@Test
	public void testSetAndGetIllnessdesc() {
		String testIllnessdesc = "testIllnessdesc";
		assertNull(patient.getIllnessdesc());
		patient.setIllnessdesc(testIllnessdesc);
		assertEquals(testIllnessdesc, patient.getIllnessdesc());
	}
}
