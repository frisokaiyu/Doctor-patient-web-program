package au.edu.elec5619.domain;
import java.util.Date;

import junit.framework.TestCase;

public class DiagnosisTest extends TestCase{
	 private Diagnosis diagnosis;
	 
	 protected void setUp() throws Exception {
		 diagnosis = new Diagnosis();
	 }
	 
	 public void testSetAndGetID() {
		 int testID = 1;
		 assertEquals(0,0,0);
		 diagnosis.setId(testID);
		 assertEquals(testID, diagnosis.getId(),0);
	 }
	 
	 public void testSetAndGetDiagnose() {
		 String testdiagnose = "adiagnose";
		 assertNull(diagnosis.getDiagnose());
		 diagnosis.setDiagnose(testdiagnose);
		 assertEquals(testdiagnose, diagnosis.getDiagnose());
	 }
	 
	 public void testSetAndGetMedicine() {
		 String testmedicine = "amedicine";
		 assertNull(diagnosis.getMedicine());
		 diagnosis.setMedicine(testmedicine);
		 assertEquals(testmedicine, diagnosis.getMedicine());
	 }
	 
	 public void testSetAndGetPatientid() {
		 String testpatientid = "apatientid";
		 assertNull(diagnosis.getPatientid());
		 diagnosis.setPatientid(testpatientid);;
		 assertEquals(testpatientid, diagnosis.getPatientid());
	 }
	 
	 public void testSetAndGetDoctorid() {
		 String testdoctorid = "adoctorid";
		 assertNull(diagnosis.getDoctorid());
		 diagnosis.setDoctorid(testdoctorid);
		 assertEquals(testdoctorid, diagnosis.getDoctorid());
	 }
	 
	 public void testSetAndGetDoctorname() {
		 String testdoctorname = "adoctorname";
		 assertNull(diagnosis.getDoctorname());
		 diagnosis.setDoctorname(testdoctorname);
		 assertEquals(testdoctorname, diagnosis.getDoctorname());
	 }
	 
	 
	 public void testSetAndGetCreateDate() {
		 Date testcreate = new Date();
		 assertNull(diagnosis.getCreatetime());
		 diagnosis.setCreatetime(testcreate);
		 assertEquals(testcreate, diagnosis.getCreatetime());
	 }
	 
}