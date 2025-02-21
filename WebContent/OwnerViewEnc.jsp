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
	<link href="css/JiSlider.css" rel="stylesheet">
	<!-- //banner slider css file -->

	<!-- gallery-Swipe-box -->
	<link rel="stylesheet" href="css/swipebox.css">
	<!-- //gallery-Swipe-box -->
	
	<!-- testimonials css -->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" /><!-- flexslider css -->
	<!-- //testimonials css -->

	<!-- css files -->
	<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet" href="css/fontawesome-all.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->

	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<!-- //web-fonts -->
	
	<style>
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

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: /* #045766 */ red;
  color: white;
}
</style>
<style type="text/css">
body  {
  background-image: url("images/back.jpg");
  background-repeat: no-repeat;
  background-size: 2000px; 
  background-position: center;
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
				<a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="OwnerUpload.jsp">UPLOAD FILE</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="OwnerView.jsp">VIEW STATUS</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="UserRequest.jsp">USER REQUESTS</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="#">LOGOUT</a>
			  </li>
			</ul>
		  </div>
		</nav>
	<!-- Nav bar -->
    </div>
	<!-- //Navigation -->
	
	<%
	String email = "yuvarajaya007@gmail.com";
    %>
	<table id="customers">
       <thead>  
          <tr> 
            <th>FILE ID</th>
            <th>FILE NAME</th>
           <th>FILE CONTENT</th>
            <th>File Write Status</th>
                <th>Action</th>
          </tr>
          </thead>
             <%

Statement st = null;
ResultSet rs = null;


/* int id=0; */
String rr = "pending";

	
try
			{
			Connection con=DB.getconnection();
			st=con.createStatement();
	String qry =" select  * from upload where USEREMAIL = '" + email +"'"; 
	rs = st.executeQuery(qry);
	while(rs.next())
	{
	String id1=rs.getString("FID");
	%>
	  <tbody>
	     <tr > 
	        
            <td> <%=rs.getString("FID")%> </td>
             <td> <%=rs.getString("FNAME")%> </td>
            <td><textarea rows="5" cols="40" readonly><%=rs.getString("FILE")%> </textarea> </td>
           <td> <%=rs.getString("STATUS")%> </td>
          <td><a href="DataEncrypt.jsp?id=<%=id1%>" style="color:green;font-weight:bold;text-decoration:underline;font-size:20px;">ENCRYPT</a>
         
          
          </tr>
	  
		
	<%	
	}
}
catch(Exception ex){
	out.println(ex);
}
%>
       </tbody>
          </table>     
	  </body>
</html>


	