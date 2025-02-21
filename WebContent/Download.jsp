<%@page import="util.DB"%>
<%@ page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%
java.util.Date now = new java.util.Date();
String date=now.toString();
String DATE_FORMAT = "HH.mm";
SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
String strDateNew = sdf.format(now);%>
<html>
<head>
<title>Fault tolerance</title>
<script language="JavaScript">

</script>
</head>

<body>		
<%

String fid = (String)session.getAttribute("fid");

Blob b = null;
String fname = null;
try
{

Connection conn = DB.getconnection();
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery("Select * from upload where FID='"+fid+"'");
while(rs.next())
{
	 b = rs.getBlob("FILES");
	 fname = rs.getString("FNAME");
}
//response.sendRedirect("view.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

	if(b != null)
		{
			
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("text");
			response.setHeader("Content-Disposition","attachment; fileName=\""+fname+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
			//session.removeAttribute("document1");
		}
		else
		{
			//response.sendRedirect("cost_recharge2.jsp");
			System.out.println("null");
		}
	response.sendRedirect("UserHome.jsp");
%>

</body>
</html>