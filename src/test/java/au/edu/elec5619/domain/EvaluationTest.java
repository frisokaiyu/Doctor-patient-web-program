package au.edu.elec5619.domain;

import java.util.Date;

import org.junit.Test;

import junit.framework.TestCase;

public class EvaluationTest extends TestCase{

		private Evaluation evaluation;
		
		protected void setUp() throws Exception {
			
			evaluation = new Evaluation();
		}
		
		@Test
		public void testSetAndGetId() {
			int testId = 1;
			assertEquals(0,0,0);
			evaluation.setId(testId);
			assertEquals(testId, evaluation.getId(), 0);
		}
		
		@Test
		public void testSetAndGetGrade() {
			String testGrade = "testGrade";
			assertNull(evaluation.getGrade());
			evaluation.setGrade(testGrade);
			assertEquals(testGrade, evaluation.getGrade());
		}
		
		@Test
		public void testSetAndGetDoctorid() {
			String testDoctorid = "testDoctorid";
			assertNull(evaluation.getDoctorid());
			evaluation.setDoctorid(testDoctorid);
			assertEquals(testDoctorid, evaluation.getDoctorid());
		}
		
		@Test
		public void testSetAndGetCreatetime() {
			Date testCreatetime = new Date();
			assertNull(evaluation.getCreatetime());
			evaluation.setCreatetime(testCreatetime);
			assertEquals(testCreatetime, evaluation.getCreatetime());
		}
}
