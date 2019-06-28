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
<title>Results</title>

<link
	href="https://fonts.googleapis.com/css?family=Oswald:300,500,600|Roboto:400,700"
	rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/main.css">
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<body>
	<%!// observe, declaration
	String result = "";
	String errorlist;
	String rejectedlist;%>

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
						<li><a href="help.jsp">User Guide</a></li>
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

			<textarea class="refListArea" id="myInput"><%
					session = request.getSession(false);
					result = (String) session.getAttribute("output");
					if (result == null) {
						result = "";
					}
					out.print(result);
				%></textarea>

			<div class="red">
				<%
					if (null != session.getAttribute("errorfiles")) {
						String error = "<ul>" + (String) session.getAttribute("errorfiles") + "</ul>";
						out.print("<strong>Sorry we couldn't generate references for following files</strong><br>");
						out.print(error);
					}

					if (null != session.getAttribute("rejectedList")) {
						String error = "<ul>" + (String) session.getAttribute("rejectedList") + "</ul>";
						out.print("<strong>These file types are not supported</strong><br>");
						out.print(error);
					}
				%>
			</div>

			<div
				class="col-lg-12 text-center grid-item col-md-12 all creative wow fadeIn"
				data-wow-duration="2s">
				<a href="#" class="primary-btn" id="js-copy"
					data-text="COPY TO CLIPBOARD"> <span>C</span> <span>O</span> <span>P</span>
					<span>Y</span> <span> </span> <span>T</span> <span>O</span> <span>
				</span> <span>C</span> <span>L</span> <span>I</span> <span>P</span> <span>B</span>
					<span>O</span> <span>A</span> <span>R</span> <span>D</span>
				</a>
			</div>
			<div class="blue">
				Or go to google Docs and click <strong>Insert Reference
					List</strong> on add-on pop-up to directly insert into your Document
			</div>
		</div>
	</section>
	<script type="text/javascript" src="js/response.js"></script>
</body>
</html>
