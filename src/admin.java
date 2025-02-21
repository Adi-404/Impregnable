

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class ADMINLOG
 */
@WebServlet("/admin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		handleRequest(request, response);
    }
 
    public void handleRequest(HttpServletRequest req, HttpServletResponse resp) throws IOException {
 
    	HttpSession ses = req.getSession();
        resp.setContentType("text/html");
 
        // Post Parameters From The Request
        String param1 = req.getParameter("Username");
        String param2 = req.getParameter("Password");
 
        if(param1 == null || param2 == null) {
            // The Request Parameters Were Not Present In The Query String. Do Something Or Exception Handling !!
        } else if ("".equals(param1) || "".equals(param2)) {
            // The Request Parameters Were Present In The Query String But Has No Value. Do Something Or Exception Handling !!
        } else {
            System.out.println("name?= " + param1 + ", password?= " + param2);
 
            
            
            // Print The Response
            PrintWriter out = resp.getWriter();
           
            // Authentication Logic & Building The Html Response Code
            if((param1.equalsIgnoreCase("admin")) && (param2.equals("admin"))) {  
            	//ses.setAttribute("name", arg1);
               resp.sendRedirect("index.html");
            } else {
                resp.sendRedirect("advocate.html");
                
            }
            out.write("</div></body></html>");
            out.close();
        }

}

}

