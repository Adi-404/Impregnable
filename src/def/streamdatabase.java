
package def;
import java.sql.*;

public class streamdatabase {

		static Connection con;
		public static Connection getconnection()
		{
	 		
	 			
			try
			{
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/securestream","root","root");
			}
			catch(Exception e)
			{
				System.out.println("class error");
			}
			return con;
		}
		
	}


