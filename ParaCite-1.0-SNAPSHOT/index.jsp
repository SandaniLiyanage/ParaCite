<%-- 
    Document   : login
    Created on : Apr 23, 2019, 5:07:49 PM
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
<title>ParaCite</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Oswald:300,500,600|Roboto:400,700">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/login.css">
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


</head>
<body onload="getMessage()">
	<div class="wrapper fadeInDown">
		<div id="formContent">

			<div class="fadeIn first">
				<img src="img/mainlogo.png" id="icon" alt="User Icon" />
			</div>
			<div>
							<div class="fadeIn fourth note" id="msg"></div>
				<form id="first_form">
					<input type="email" id="login" class="fadeIn second" name="login"
						placeholder="email"> <input type="password" id="password"
						class="fadeIn third" name="login" placeholder="password"
						maxlength="8">
					<div
						class="col-lg-12 text-center grid-item col-md-12 all creative wow fadeIn"
						data-wow-duration="2s">
						<a href="#" class="fadeIn fourth primary-btn" id="js-login-submit"
							data-text="Log In"> <span>L</span> <span>O</span> <span>G</span>
							<span> </span> <span>I</span> <span>N</span>
						</a>
					</div>
					<br> <br>
				</form>
				<div id="formFooter">
					<a class="underlineHover" href="signup.jsp">Do not have an
						account?</a>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/login.js"></script>
</body>
</html>

