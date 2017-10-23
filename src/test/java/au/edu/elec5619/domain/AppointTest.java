package au.edu.elec5619.domain;
import java.util.Date;

import junit.framework.TestCase;

public class AppointTest extends TestCase{
	 private Appoint appoint;
	 
	 protected void setUp() throws Exception {
		 appoint = new Appoint();
	 }
	 
	 public void testSetAndGetID() {
		 int testID = 1;
		 assertEquals(0,0,0);
		 appoint.setId(testID);
		 assertEquals(testID, appoint.getId(),0);
	 }
	 
	 public void testSetAndGetDoctorID() {
		 String testDID = "aID";
		 assertNull(appoint.getDoctorid());
		 appoint.setDoctorid(testDID);
		 assertEquals(testDID, appoint.getDoctorid());
	 }
	 
	 public void testSetAndGetTime1() {
		 String testtime = "1";
		 assertNull(appoint.getTime1());
		 appoint.setTime1(testtime);;
		 assertEquals(testtime, appoint.getTime1());
	 }
	 
	 public void testSetAndGetTime1patid() {
		 String testPatid = "1";
		 assertNull(appoint.getTime1patid());
		 appoint.setTime1patid(testPatid);
		 assertEquals(testPatid, appoint.getTime1patid());
	 }
	 
	 public void testSetAndGetTime2() {
		 String testtime = "1";
		 assertNull(appoint.getTime2());
		 appoint.setTime2(testtime);;
		 assertEquals(testtime, appoint.getTime2());
	 }
	 
	 public void testSetAndGetTime2patid() {
		 String testPatid = "1";
		 assertNull(appoint.getTime2patid());
		 appoint.setTime2patid(testPatid);
		 assertEquals(testPatid, appoint.getTime2patid());
	 }
	 
	 public void testSetAndGetTime3() {
		 String testtime = "1";
		 assertNull(appoint.getTime3());
		 appoint.setTime3(testtime);;
		 assertEquals(testtime, appoint.getTime3());
	 }
	 
	 public void testSetAndGetTime3patid() {
		 String testPatid = "1";
		 assertNull(appoint.getTime3patid());
		 appoint.setTime3patid(testPatid);
		 assertEquals(testPatid, appoint.getTime3patid());
	 }
	 
	 public void testSetAndGetTime4() {
		 String testtime = "1";
		 assertNull(appoint.getTime4());
		 appoint.setTime4(testtime);;
		 assertEquals(testtime, appoint.getTime4());
	 }
	 
	 public void testSetAndGetTime4patid() {
		 String testPatid = "1";
		 assertNull(appoint.getTime4patid());
		 appoint.setTime4patid(testPatid);
		 assertEquals(testPatid, appoint.getTime4patid());
	 }
	 
	 public void testSetAndGetTime5() {
		 String testtime = "1";
		 assertNull(appoint.getTime5());
		 appoint.setTime5(testtime);;
		 assertEquals(testtime, appoint.getTime5());
	 }
	 
	 public void testSetAndGetTime5patid() {
		 String testPatid = "1";
		 assertNull(appoint.getTime5patid());
		 appoint.setTime5patid(testPatid);
		 assertEquals(testPatid, appoint.getTime5patid());
	 }
	
	 
	 public void testSetAndGetTime6() {
		 String testtime = "1";
		 assertNull(appoint.getTime6());
		 appoint.setTime6(testtime);;
		 assertEquals(testtime, appoint.getTime6());
	 }
	 
	 public void testSetAndGetTime6patid() {
		 String testPatid = "1";
		 assertNull(appoint.getTime6patid());
		 appoint.setTime6patid(testPatid);
		 assertEquals(testPatid, appoint.getTime6patid());
	 }
	 
	 public void testSetAndGetTime7() {
		 String testtime = "1";
		 assertNull(appoint.getTime7());
		 appoint.setTime7(testtime);;
		 assertEquals(testtime, appoint.getTime7());
	 }
	 
	 public void testSetAndGetTime7patid() {
		 String testPatid = "1";
		 assertNull(appoint.getTime7patid());
		 appoint.setTime7patid(testPatid);
		 assertEquals(testPatid, appoint.getTime7patid());
	 }
	 
	 public void testSetAndGetTime8() {
		 String testtime = "1";
		 assertNull(appoint.getTime8());
		 appoint.setTime8(testtime);;
		 assertEquals(testtime, appoint.getTime8());
	 }
	 
	 public void testSetAndGetTime8patid() {
		 String testPatid = "1";
		 assertNull(appoint.getTime8patid());
		 appoint.setTime8patid(testPatid);
		 assertEquals(testPatid, appoint.getTime8patid());
	 }
	 
	 public void testSetAndGetCreateDate() {
		 Date testcreate = new Date();
		 assertNull(appoint.getCreatedate());
		 appoint.setCreatedate(testcreate);
		 assertEquals(testcreate, appoint.getCreatedate());
	 }
	 
}