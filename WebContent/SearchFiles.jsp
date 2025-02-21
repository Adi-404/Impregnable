<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="util.DB"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<html lang="en">
<head>
<title>Cloud of Cloud System</title>
	
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Indus Fact Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->

	<!-- banner slider css file -->
	<link href="cssa/JiSlider.css" rel="stylesheet">
	<!-- //banner slider css file -->

	<!-- gallery-Swipe-box -->
	<link rel="stylesheet" href="css/swipebox.css">
	<!-- //gallery-Swipe-box -->
	
	<!-- testimonials css -->
	<link rel="stylesheet" href="cssa/flexslider.css" type="text/css" media="screen" property="" /><!-- flexslider css -->
	<!-- //testimonials css -->

	<!-- css files -->
	<link rel="stylesheet" href="cssa/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="cssa/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet" href="cssa/fontawesome-all.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->

	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<!-- //web-fonts -->
	
	<!-- Styles of table -->

	<style> 
		input[type=text]{
		  width: 100%;
		  padding: 10px 15px;
		  margin: 8px 0;
		  box-sizing: border-box;
		  border: 3px solid #555;
		  -webkit-transition: 0.5s;
		  transition: 0.5s;
		  outline: none;
		}
		input[type=file]{
		  width: 80%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  box-sizing: border-box;
		  border: 3px solid #555;
		  -webkit-transition: 0.5s;
		  transition: 0.5s;
		  outline: none;
		}
		
		input[type=text]:focus {
		  border: 3px solid red;
		}
		.button {
		  display: inline-block;
		  padding: 10px 15px;
		  font-size: 20px;
		  cursor: pointer;
		  text-align: center;
		  text-decoration: none;
		  outline: none;
		  color: #fff;
		  background-color: #4CAF50;
		  border: none;
		  border-radius: px;
		  box-shadow: 0 9px red;
		}
		
		.button:hover {background-color: #3e8e41}
		
		.button:active {
		  background-color: #3e8e41;
		  box-shadow: 0 5px #666;
		  transform: translateY(4px);
		}
		
		#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  margin-top:50px;
}

#customers td, #customers th {
  border: 1px solid #ddd ;
  padding: 8px;
}

#customers tr:nth-child(even){background-color:  #f2f2f2 ;}
#customers tr:nth-child(odd){background-color:  #f2f2f2 ;}
#customers tr:hover {background-color: #ccccc;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: /* #045766 */ red;
  color: white;
}
#customers tr {color: black;}

</style>
<style type="text/css">
body  {
  background-image: url("images/cloud1.jpg");
  background-repeat: no-repeat;
  background-size: 100%;
  background-position: top;
  background-attachment: scroll;
}
</style>
</head>

<body style="margin:0 auto;width:1000px">
	<!-- Navigation -->
	<div class="container">
		<!-- header top -->
		<div class="head-wl d-md-flex py-3">
			<div class="headder-w3 text-uppercase p-1 text-center">
				<h1><a href="index.html">SYSTEM</a></h1>
			</div>

		<!-- 	<div class="w3-header-top-right-text text-center">
				<h6 class="caption p-1"> Contact Us</h6>
				<p>(111)+245 245 66</p>
			</div>

			<div class="email-right text-center">
				<h6 class="caption p-1">Email Us</h6>
				<p><a href="mailto:mail@example.com" class="info"> info@example.com</a></p>

			</div> -->

			<div class="agileinfo-social-grids text-center">
				<h6 class="caption p-1">Follow Us</h6>
				<ul class="d-flex justify-content-center">
					<li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
					<li><a href="#"><span class="fab fa-twitter"></span></a></li>
					<li><a href="#"><span class="fas fa-rss"></span></a></li>
					<li><a href="#"><span class="fab fa-vk"></span></a></li>
				</ul>
			</div>
		</div>
		<!-- //header top -->
	
		<!-- Nav bar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-faded">
		  <button class="navbar-toggler mx-auto" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
			<ul class="navbar-nav">
			  <li class="nav-item active">
				<a class="nav-link" href="UserHome.jsp">Home <span class="sr-only">(current)</span></a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="SearchFiles.jsp">SEARCH FILES</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="RequestKey.jsp">KEY REQUESTS</a>
			  </li>
			    <li class="nav-item">
				<a class="nav-link" href="UserDownload.jsp">DOWNLOAD</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="logout.jsp">LOGOUT</a>
			  </li>
			</ul>
		  </div>
		</nav>
	<!-- Nav bar -->
    </div>
	<!-- //Navigation -->
		   <center><h2 style="padding-top:30px;font-family:Trebuchet MS, Helvetica, sans-serif;font-weight: bold;color:white;">SEARCH FILES</h2></center>
	
	<form action="SearchFiles.jsp" method="post">
	<center> <table>
		<tr><td><input type="text" name="search" required placeholder="Enter FileID or Tag" ></td><td><button class="button">SEARCH</button></td></tr>
	</table></center>
	</form>
	
	<%
	String em=(String)session.getAttribute("em");
	String s = request.getParameter("search");
	Statement st = null;
	ResultSet rs = null;
	
	try
	{
	Connection con=DB.getconnection();
	st=con.createStatement();
String qry =" select  * from upload where FID= '" + s +"' OR FSEARCHNAME= '"+ s +"'"; 
rs = st.executeQuery(qry);
int k=1;String opt=null;
while(rs.next())
{	
	%>
	
	<form action="searchfiles1.jsp" method="post">
	<table id="customers">
    <thead>  
       <tr> 
         <th>S.NO</th>
         <th>FILE ID</th>
         <th>FILE NAME</th> 
          <th>FILE KEYWORD</th>
         <th>OWNER NAME</th>
       <th>REQUEST TO</th>
        <th>ACTION</th>
       
       </tr>
       </thead>
       <tbody>
	     <tr > 
	     <td><%out.print(k); %></td>
	         <td><input type="hidden" value=<%=rs.getString("FID")%> name="req"><%=rs.getString("FID")%>  </td>
			<td> <%=rs.getString("FNAME")%> </td> 
			<td> <%=rs.getString("FSEARCHNAME")%> </td> 
			<td> <%=rs.getString("ONAME")%> </td>
			<td><select name="permission" required>
					<option value="Read">Read</option>
					<option value="Download">Download</option>
				</select>
			</td>
			<td><input type="submit" value="Request"></td>
		  <%--  <td><a href="searchfiles1.jsp?req=<%=rs.getString("FID")%>perm=<%=opt%>"style="color:red;font-weight:bold;text-decoration:underline;font-size:20px;">Request</a></td>  --%>
		
<%
k++;
}
}
	
catch(Exception ex){
	out.println(ex);
}
	
	%>
	</tr></tbody></table> </form>
	  </body>
</html>


	