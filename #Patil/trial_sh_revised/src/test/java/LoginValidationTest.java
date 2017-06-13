package hp;

import static org.junit.Assert.*;

import org.junit.Test;
import java.sql.*;

public class LoginValidationTest{

	@Test
	public void test() throws SQLException {
		
		ResultSet r=LoginValidation.Validation("1234");
		assertNotNull(r);
		
	}

}
