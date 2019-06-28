<%-- 
    Document   : response
    Created on : Apr 11, 2019, 2:28:33 AM
    Author     : Sandani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	response.setHeader("Access-Control-Allow-Origin", "*");
%>
<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" href="img/shortcut.png">
<meta charset="UTF-8">
<title>Help</title>

<link
	href="https://fonts.googleapis.com/css?family=Oswald:300,500,600|Roboto:400,700"
	rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/main.css">
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<body>
	<header id="header">
		<div class="container main-menu">
			<div class="row align-items-center d-flex">
				<div id="logo">
					<img src="img/mainlogo3.png" alt="" title="" />
				</div>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li><a href="dashboard.jsp">DashBoard</a></li>
						<li><a href="uploadFiles.jsp">Upload Files</a></li>
						<li><a href="history.jsp">History</a></li>
						<li><a href="help.jsp" class="active">User Guide</a></li>
						<li><a href="logout.jspx?alert=Logout&message=Successful"
							onclick="if (! confirm('Do you really want to logout?')) return false;">Log
								Out</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>

	<section class="service-area section-gap-top">
		<div class="container">
			<p>Login page allows uses to enter their username(email) and
				password. Empty fields will give an error message indicating users
				to fill out the two fields and wrong username password combination
				will give an invalid username/password error. Users who are not
				already registered can click on the link on the bottom which will
				direct them to signup page.</p>
				<div class="interface-container">
				<img src="img/login.png" class="interfaces" />
				</div>
			<p>Signup page requires users to enter their name, a valid unique
				email, valid password. To signup successfully user must confirm the
				password. Any invalid entry or empty field will give an error
				message.</p>
				<div class="interface-container">
				<img src="img/signup.png" class="interfaces" />
				</div>
			<p>The homepages come with shortcuts for the most important
				features of the system. It provides a brief idea of what the
				application is, how it works and what kind of citations can be
				created. Using GET STRATED button of Upload Files menu item on the
				top navigation menu users can go to the page where they can upload
				files.</p>
				<div class="interface-container">
				<img src="img/home.png" class="interfaces" />
				</div>
			<p>In this page users can upload their files either by browsing
				the local machine or by dragging the files to the given space. Below
				the drag and drop section, 6 radio buttons are available where users
				Cyberdyne Systems can choose one of the styles from IEEE, APA, MLA,
				Harvard, Chicago, Vancouver. CREATE CITATION button starts
				generating citation process.</p>
				<div class="interface-container">
				<img src="img/upload.png" class="interfaces" />
				</div>
			<p>History page contains 6 sections where previous citations are
				categorized into 6 styles.</p>
				<div class="interface-container">
				<img src="img/history.png" class="interfaces" />
				</div>

		</div>
	</section>
</body>
</html>
