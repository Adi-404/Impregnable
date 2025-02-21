<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="util.DB"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<html lang="en">
<head>
<title>Securestream</title>
	
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
  background-image: url("images/cloud4.jpg");
  background-repeat: no-repeat;
  background-size: 100%; 
  background-position: top;
}
</style>
</head>

<body style="margin:0 auto;width:1000px">
	<!-- Navigation -->
	<div class="container">
		<!-- header top -->
		<div class="head-wl d-md-flex py-3">
			<div class="headder-w3 text-uppercase p-1 text-center">
				<h1><a href="index.html">CLOUD HOME</a></h1>
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
				<a class="nav-link" href="CharonHome.jsp">Home <span class="sr-only">(current)</span></a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="DataOwners.jsp">OWNERS</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="DataUsers.jsp">USERS</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="metadata.jsp">META DATA</a>
			  </li>
			   <li class="nav-item">
				<a class="nav-link" href="clouddata.jsp">CLOUD DATA</a>
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
String n=(String)session.getAttribute("3");
%>
	
	  </body>
</html>


	