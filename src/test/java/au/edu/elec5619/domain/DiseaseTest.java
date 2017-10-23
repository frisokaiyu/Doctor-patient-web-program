package au.edu.elec5619.domain;

import org.junit.Test;

import junit.framework.TestCase;

public class DiseaseTest extends TestCase {
	
	private Disease disease;
	
	protected void setUp() throws Exception {
		
		disease = new Disease();
	}
	
	@Test
	public void testSetAndGetId() {
		int testId = 1;
		assertEquals(0,0,0);
		disease.setId(testId);
		assertEquals(testId, disease.getId(),0);
	}
	
	@Test
	public void testSetAndGetName() {
		String testName = "testName";
		assertNull(disease.getName());
		disease.setName(testName);
		assertEquals(testName, disease.getName());
	}
	
	@Test
	public void testSetAndGetCause() {
		String testCause = "testCause";
		assertNull(disease.getCause());
		disease.setCause(testCause);
		assertEquals(testCause, disease.getCause());
	}
	
	@Test
	public void testSetAndGetSymptom() {
		String testSymptom = "testSymptom";
		assertNull(disease.getSymptom());
		disease.setSymptom(testSymptom);
		assertEquals(testSymptom, disease.getSymptom());
	}
	
	@Test
	public void testSetAndGetPrecaution() {
		String testPrecaution = "testPrecaution";
		assertNull(disease.getPrecaution());
		disease.setPrecaution(testPrecaution);
		assertEquals(testPrecaution, disease.getPrecaution());
	}
	
	@Test
	public void testSetAndGetTreatment() {
		String testTreatment = "testTreatment";
		assertNull(disease.getTreatment());
		disease.setTreatment(testTreatment);
		assertEquals(testTreatment, disease.getTreatment());
	}
}
