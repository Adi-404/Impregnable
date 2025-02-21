package def;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

@WebServlet("/Ownerreg")
public class OwnerRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String n=request.getParameter("2");  
		String o=request.getParameter("3");  
		String p=request.getParameter("4");  
		String q=request.getParameter("5");  
		String r=request.getParameter("7");  
		String s=request.getParameter("8");  
		String t=request.getParameter("9"); 
		          
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=(Connection) DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/securestream","root","root"); 
			
		PreparedStatement ps=con.prepareStatement("insert into ownerreg(OWNERID,ONAME,EMAIL,PASS,GENDER,ADDRESS,CONTACT) values(?,?,?,?,?,?,?)");  
		  
		ps.setString(1,n);  
		ps.setString(2,o);  
		ps.setString(3,p);  
		ps.setString(4,q);
		ps.setString(5,r);  
		ps.setString(6,s);  
		ps.setString(7,t);
		          
		int i=ps.executeUpdate();  
		if(i>0) {  out.print("Registration Success !");
        request.getRequestDispatcher("index.html").forward(request, response);  
}
		else {  out.print("Registration Unsuccessfull !");request.getRequestDispatcher("Registration.html").include(request, response);  }
		      
		          
		}catch (Exception e2) {System.out.println(e2);}  
		          
		out.close();  
		}  
		  
	
	}


