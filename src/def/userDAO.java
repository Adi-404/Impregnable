package def;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class userDAO {
	public static boolean validate(String email,String pass){  
		boolean status=false;  
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/securestream","root","root");  
		         
			PreparedStatement ps=con.prepareStatement("select * from userreg where EMAIL=? and PASS=?");  
			ps.setString(1,email);  
			ps.setString(2,pass);  
		      	
			ResultSet rs=ps.executeQuery();  
			status=rs.next();  
		          
		}
			catch(Exception e){System.out.println(e);}  
			return status;  
		}  

}
