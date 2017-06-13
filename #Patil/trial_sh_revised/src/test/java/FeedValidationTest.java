package hp;

import static org.junit.Assert.*;

import org.junit.Test;
import java.sql.*;
import junit.framework.TestCase;

public class FeedValidationTest extends TestCase{

	@Test
	public void test() throws SQLException {
		
		int i=FeedValidation.test("Vijay","Nice experience");
		assertEquals(1,i);
		
	}

	@Test
	public void test1() throws SQLException{
		
		int i=DeleteValidation.test("Vijay");
		assertEquals(1,i);
		
	}

}
