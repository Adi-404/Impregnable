package def;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import javax.servlet.http.HttpSession; 

@WebServlet("/user")
public class LoginUserJ extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		    PrintWriter out = response.getWriter();     
		    String e=request.getParameter("em");  
		    String p=request.getParameter("ps");  
		    
		    if(userDAO.validate(e, p))
		    { 
		    HttpSession session = request.getSession(true);
		    session.setAttribute("em",e);
		    out.print("Successfull");
		    RequestDispatcher rd=request.getRequestDispatcher("UserHome.jsp"); 
	        rd.include(request,response);  
	       
		    } 
		    else if (e.equalsIgnoreCase("cloud") && p.equalsIgnoreCase("cloud"))
		    {
		    	RequestDispatcher rd=request.getRequestDispatcher("cloud.jsp"); 
		        rd.include(request,response); 
		    }
		    else
		    {  
		        out.print("Incorrect");  
		        RequestDispatcher rd=request.getRequestDispatcher("index.html"); 
		        rd.include(request,response);  
		    }  
		          
		    out.close();  
		    }  

	
	}
