
package hp;


import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


public class jdbc_con {
    public static Properties loadpropertyFile()throws Exception{
        Properties pr=new Properties();
             
        InputStream in=new FileInputStream("C:/Software/eclipse-jee-mars-1-win32-x86_64/eclipse/try/trial_ex/src/jdbc.properties");
        pr.load(in);
        in.close();
      return pr;  
    }

    
} 
