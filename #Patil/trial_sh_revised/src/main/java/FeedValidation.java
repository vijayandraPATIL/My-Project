package hp;

import java.sql.SQLException;

//import com.mysql.jdbc.*;
import java.sql.*;

public class FeedValidation {
	public static  int test(String Name,String fb) throws SQLException
	{
		java.sql.Connection con = DB.getConnection();
		Statement statement=(Statement) con.createStatement();
		 

		    
			int i=statement.executeUpdate("insert into feedback1 values ('"+Name+"','"+fb+"')");
	
	return i;
	}
public static void main(String []args) throws SQLException
{
	int i=test("Vijay","Nice experience");
	System.out.println(i);
}
}
