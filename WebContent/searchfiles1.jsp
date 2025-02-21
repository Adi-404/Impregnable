<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="util.DB"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String status="Pending";
String email=(String)session.getAttribute("em");
String uid=(String)session.getAttribute("uid");
String fileid = request.getParameter("req");
String perm = request.getParameter("permission");
System.out.print(perm);

java.util.Date now = new java.util.Date();
String date=now.toString();
String DATE_FORMAT = "dd-MM-yyyy";
SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
String strDateNew = sdf.format(now) ;
Statement st = null;
ResultSet rs = null;

try
{
Connection con=DB.getconnection();
st=con.createStatement();
String qry =" select  * from upload where FID = '" + fileid + "'"; 
rs = st.executeQuery(qry);
if(rs.next()){
	String ownername = rs.getString("ONAME");
	String fname=rs.getString("FNAME");
	String oemail = rs.getString("OEMAIL");
	String oid = rs.getString("OID");

	PreparedStatement ps=con.prepareStatement("insert into filerequest(FILEID,FILENAME,OWNERNAME,OWNEREMAIL,OID,USERNAME,UID,DATE,STATUS,REQFOR) values (?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,fileid);
	ps.setString(2,fname);
	ps.setString(3,ownername);
	ps.setString(4,oemail);
	ps.setString(5,oid);
	ps.setString(6,email);
	ps.setString(7,uid);
	ps.setString(8,strDateNew);
	ps.setString(9,status);
	ps.setString(10,perm);

	int x=ps.executeUpdate();
	
	if(x!=0)
	{
		%>
		<script>
		//alert("success");
		window.location="RequestKey.jsp";
			</script>
		<% 
	}
	else
	{
		%>
		<script>
		alert("Try again");
		window.location="SearchFiles.jsp";
			</script>
	<% 	
}
	
}
}
catch(Exception ex){
	out.println(ex);
}
	

%>
</body>
</html>