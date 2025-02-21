<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="util.DB"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String uid = (String)session.getAttribute("uid");
String fid = request.getParameter("fid");
session.setAttribute("fid", fid);
String dkey = request.getParameter("dkey");
session.setAttribute("dkey", dkey);
String req = null;
try
{
	Connection con =DB.getconnection();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("SELECT * FROM filerequest WHERE FKEY='"+dkey+"' AND UID='"+uid+"'");
	if(rs.next())
	{
		req = rs.getString("REQFOR");
		if(req.equals("Download"))
		{
			response.sendRedirect("UserDownload3.1.jsp");
		}
		else
		{
			response.sendRedirect("UserDownload3.2.jsp");	
		}
	}
	else
	{
		%>
		<script>
		alert("Wrong Key Entered.");
		window.location="UserDownload.jsp";
			</script>
		<%
	}
}
catch(Exception e){e.printStackTrace();}

%>
</body>
</html>