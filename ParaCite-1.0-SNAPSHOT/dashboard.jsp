<%-- 
    Document   : dashboard
    Created on : Apr 11, 2019, 2:16:04 AM
    Author     : Sandani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" href="img/shortcut.png">
<meta charset="UTF-8">
<title>DashBoard</title>

<link
	href="https://fonts.googleapis.com/css?family=Oswald:300,500,600|Roboto:400,700"
	rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/main.css">

<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<!--<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>-->

<!--        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
   -->
<!--<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>-->

<script
	src="https://cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.js"></script>

</head>

<body>
	<%@ include file="sessionManagement.jsp"%>

	<header id="header">
		<div class="container main-menu">
			<div class="row align-items-center d-flex">
				<div id="logo">
					<img src="img/mainlogo3.png" alt="" title="" />
				</div>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li><a href="#" class="active">DashBoard</a></li>
						<li><a href="uploadFiles.jsp">Upload Files</a></li>
						<li><a href="history.jsp">History</a></li>
						<li><a href="help.jsp">User Guide</a></li>
						<li><a href="logout.jspx?alert=Logout&message=Successful"
							onclick="if (!confirm('Do you really want to logout?')) return false;">Log
								Out</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>

	<section class="service-area section-gap-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="single-service wow fadeInUp" data-wow-duration="1s"
						data-wow-delay="0.0s">
						<div class="d-flex align-items-center mb-3">
							<h4 class="ml-3">What is ParaCite?</h4>
						</div>
						<p>An automatic reference generator where you can
							generate references for your list of documents easily.</p>
					</div>
				</div>

				<div class="col-lg-4 col-md-6">
					<div class="single-service wow fadeInUp" data-wow-duration="1s"
						data-wow-delay="0.3s">
						<div class="d-flex align-items-center mb-3">
							<h4 class="ml-3">Supported Styles</h4>
						</div>
						<p>ParaCite supports 6 different styles including IEEE, APA,
							MLA, Harvard, Chicago and Vancouver styles.</p>
					</div>
				</div>

				<div class="col-lg-4 col-md-6">
					<div class="single-service wow fadeInUp" data-wow-duration="1s"
						data-wow-delay="0.6s">
						<div class="d-flex align-items-center mb-3">
							<h4 class="ml-3">How this Works?</h4>
						</div>
						<p>You can upload PDFs in your local machine to
							our system and we will generate references for you.</p>
					</div>
				</div>
			</div>
		</div>

		<div
			class="col-lg-12 text-center grid-item col-md-12 all creative wow fadeIn"
			data-wow-duration="2s">
			<a href="uploadFiles.jsp" class="primary-btn" data-text="GET STARTED">
				<span>G</span> <span>E</span> <span>T</span> <span> </span> <span>S</span>
				<span>T</span> <span>A</span> <span>R</span> <span>T</span> <span>E</span>
				<span>D</span>
			</a>
		</div>
	</section>
	<!--         <script type="text/javascript" src="js/common.js"></script> -->
</body>
</html>

