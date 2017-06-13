package hp;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
    
public class DB{
    
        public static Connection getConnection() {
            Properties props = new Properties();
            FileInputStream fis = null;
            Connection con = null;
            
                try {
                	props.load(login.class.getResourceAsStream("/jdbc.properties"));
					//fis = new FileInputStream("jdbc.properties");
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            
                // load the Driver Class
                try {
					Class.forName(props.getProperty("jdbc.driver"));
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
    
                // create the connection now
                try {
					con = DriverManager.getConnection(props.getProperty("jdbc.url"),
					        props.getProperty("jdbc.user"),
					        props.getProperty("jdbc.password"));
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            
            
            return con;
        }
    }


