package util;
import java.sql.*;

public class DB 
{

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
				System.out.println(e);
			}
			return con;
		}
		public static Connection getconnection1()
		{		
			try
			{
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/server1","root","root");
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			return con;
		}
		public static Connection getconnection2()
		{		
			try
			{
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/server2","root","root");
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			return con;
		}
		public static Connection getconnection3()
		{		
			try
			{
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/server3","root","root");
			}
			
			catch(Exception e)
			{
				System.out.println(e);
			}
			return con;
		}
		
}


