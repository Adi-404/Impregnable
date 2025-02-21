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

@WebServlet("/owners")

public class LoginOwn extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");  
		    PrintWriter out = res.getWriter();     
		    String email=req.getParameter("3");  
		    String pass=req.getParameter("5");  
		    
		    if(Owncheck.validate(email, pass))
		    { 
		    HttpSession session = req.getSession();
		    session.setAttribute("3",email);
		    RequestDispatcher rs = req.getRequestDispatcher("OwnerHome.jsp");
		    rs.forward(req,res);
		    out.print("success");  
		    
		    }  
		    else if(email.equals("cloud")&&pass.equals("cloud"))
		    {
		    	RequestDispatcher rs = req.getRequestDispatcher("streamHome.jsp");
			    rs.forward(req,res);
		    }
		    else
		    {  
		        out.print("try other thing");  
		        RequestDispatcher rs = req.getRequestDispatcher("LoginOwner.html");
			    rs.include(req,res);
		    }  
		          
		    out.close();  
		    }  

	
	}
