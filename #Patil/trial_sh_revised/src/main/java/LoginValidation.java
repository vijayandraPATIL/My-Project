package hp;
import java.sql.SQLException;

//import com.mysql.jdbc.Connection;
//import com.mysql.jdbc.ResultSet;
//import com.mysql.jdbc.*;
import java.sql.*;


public class LoginValidation {
	public static ResultSet Validation(String Password) throws SQLException
	{
		
	
					Connection con=(Connection) DB.getConnection();
			
					Statement statement=(Statement) con.createStatement();
					
					String extract="select * from register where pwd='"+Password+"'";
					ResultSet r=(ResultSet) statement.executeQuery(extract);
					
					return r;
 
	}
	public static void main(String []args) throws SQLException
	{
		ResultSet r=Validation("patil");
		System.out.println(r);
	}

}
