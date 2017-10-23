package au.edu.elec5619.domain;

import org.junit.Test;

import junit.framework.TestCase;

public class ApporderTest extends TestCase{

		private Apporder apporder;
		
		protected void setUp() throws Exception {
			
			apporder = new Apporder();
		}
		
		
		@Test
		public void testSetAndGetId() {
			int testId = 1;
			assertEquals(0,0,0);
			apporder.setId(testId);
			assertEquals(testId, apporder.getId(),0);
		}
		
		@Test
		public void testSetAndGetDoctorid() {
			String testDoctorid = "testDoctorid";
			assertNull(apporder.getDoctorid());
			apporder.setDoctorid(testDoctorid);
			assertEquals(testDoctorid, apporder.getDoctorid());
		}
		
		@Test
		public void testSetAndGetDoctorname() {
			String testDoctorname = "testDoctorname";
			assertNull(apporder.getdoctorname());
			apporder.setdoctorame(testDoctorname);
			assertEquals(testDoctorname, apporder.getdoctorname());
		}
		
		@Test
		public void testSetAndGetPatientid() {
			String testPatientid = "testPatientid";
			assertNull(apporder.getPatientid());
			apporder.setPatientid(testPatientid);
			assertEquals(testPatientid, apporder.getPatientid());
		}
		
		@Test
		public void testSetAndGetPatname() {
			String testPatname = "testPatname";
			assertNull(apporder.getPatname());
			apporder.setPatname(testPatname);
			assertEquals(testPatname, apporder.getPatname());
		}
		
		@Test
		public void testSetAndGetAppointtime() {
			String testAppointtime = "testAppointtime";
			assertNull(apporder.getappointtime());
			apporder.setappointtime(testAppointtime);
			assertEquals(testAppointtime, apporder.getappointtime());
		}
		
		@Test
		public void testSetAndGetAppointdate() {
			String testAppointdate = "testAppointdate";
			assertNull(apporder.getappointdate());
			apporder.setappointdate(testAppointdate);
			assertEquals(testAppointdate, apporder.getappointdate());
		}
}
