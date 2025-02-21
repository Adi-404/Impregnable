import java.io.IOException;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.DB;

/**
 * Servlet implementation class payment
 */
@WebServlet("/payment")
public class payment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession ses = request.getSession();
		
		Random rand = new Random();
		String name = (String)request.getAttribute("em");
		int tid = rand.nextInt();
    	String sta = "Transaction Successfull !";
    	response.sendRedirect("RequestKey.jsp");
    	
    	
		
		try{
			String qry = "INSERT INTO payment(name,status,tid) VALUES('"+name+"','"+sta+"','"+tid+"')";
			int i = DB.getconnection().prepareStatement(qry).executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
	}

}
