package hp;

import java.sql.SQLException;

//import com.mysql.jdbc.Statement;
import java.sql.*;

public class DeleteValidation {
	public static  int test(String Name) throws SQLException
	{
		java.sql.Connection con = DB.getConnection();
		//Statement statement=(Statement) con.createStatement();
		java.sql.PreparedStatement ps=con.prepareStatement("delete from feedback1 where name=?");
		ps.setString(1, Name);
		
		int i=ps.executeUpdate();
		 
       return i;
		    
			
	
	}
public static void main(String []args) throws SQLException
{
	int i=test("Akhil");
	System.out.println(i);
}
}