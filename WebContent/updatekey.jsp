<%@page import="util.DB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Connection"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email = (String)session.getAttribute("3");
String fileid = (String)session.getAttribute("FILEID");
String key = (String)session.getAttribute("key");
%>

<% 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/charon", "root", "root");
PreparedStatement ps=conn.prepareStatement("update filerequest set KEY='"+key+"', where FILEID='"+fileid+"'");
ps.executeUpdate();
//response.sendRedirect("view.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
</body>
</html>