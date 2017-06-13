package hp;

import static org.junit.Assert.*;

import org.junit.Test;

//import com.mysql.jdbc.Connection;
import java.sql.*;

import junit.framework.TestCase;





	
public class DBTest extends TestCase 
{
Connection con = null;
       
        @Test
		public void test1() throws ClassNotFoundException  
            {
				
				Connection con=(Connection) DB.getConnection();
				assertNotNull(con);
			} 
			

} 

		
	                 


