<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="util.DB"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.sql.*,java.io.*"  %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<!doctype html>
<html lang="en">
<head>
<title>securestream</title>
	
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
	<link rel="stylesheet" href="cssa/swipebox.css">
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
	<style type="text/css">
body  {
  background-image: url("images/back1.jpg");
  background-repeat: no-repeat;
  background-size: 100%; 
  background-position: top;
}
input[type=text]{
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
		#customers th{color: #ddd;}
		.button {
		  display: inline-block;
		  padding: 8px 10px;
		  font-size: 20px;
		  cursor: pointer;
		  text-align: center;
		  text-decoration: none;
		  outline: none;
		  color: #fff;
		  background-color: #4CAF50;
		  border: none;
		  border-radius: px;
		  box-shadow: 0 9px #999;
		}
		
		.button:hover {background-color: red}
		
		.button:active {
		  background-color: red;
		  box-shadow: 0 5px #666;
		  transform: translateY(4px);
		}
</style>
</head>

<body style="margin:0 auto;width:1000px">
	<!-- Navigation -->
	<div class="container">
		<!-- header top -->
		<div class="head-wl d-md-flex py-3">
			<!-- <div class="headder-w3 text-uppercase p-1 text-center">
				<h1><a href="index.html">DOWNLOAD</a></h1>
			</div> -->

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
	<%
	String uid = (String)session.getAttribute("uid");
	%>
<h2 style="padding-top:30px;padding-left:60px;font-family:Trebuchet MS, Helvetica, sans-serif;font-weight: bold;color:white;">ENTER FILE ID</h2>
	<form method="post" action="UserDownload1.jsp">
		<table id="customers" style="margin-left:60px;">
		<tr><th>FILE ID</th><td><input type="text" name="fid" required="" placeholder="File ID"></td></tr>
		<tr><th></th><td><input class="button" type="submit" VALUE="PROCEED"></td></tr>
		</table>
	</form>
	  </body>
</html>


	