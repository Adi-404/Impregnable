<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="util.DB"%>
<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page  import="java.sql.*,java.util.*,java.io.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
/* String rid=(String)session.getAttribute("rid");
String fname=(String)session.getAttribute("fname");
String fcon=(String)session.getAttribute("fcon");
System.out.println("fcon==="+fcon);
 */
 String oid =(String)session.getAttribute("oid");  
 
 Statement st = null;
	ResultSet rs = null;
	
	try
	{
	Connection con=DB.getconnection();
	st=con.createStatement();
String qry =" select  * from upload where OID = '" + oid +"'"; 
rs = st.executeQuery(qry);
if(rs.next())
{
	String s = rs.getString("FILE");
	String filekey = rs.getString("FILEKEY");
	
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charon", "root", "root");
	PreparedStatement ps=conn.prepareStatement("update upload set ENC=AES_ENCRYPT(? , '"+filekey+"')  where OID='"+oid+"'");
	ps.setString(1,s);
	ps.executeUpdate();
	%>
	<script>
	//alert("File Encrypt and Write to Cloud Successfully");
	window.location="OwnerView.jsp";
	</script>
	<%
	//response.sendRedirect("view.jsp");
	}
	catch(Exception e1)
	{
	out.println(e1.getMessage());
	}
	
	
}
}
catch(Exception ex){
	out.println(ex);
}
%>


</body>
</html>