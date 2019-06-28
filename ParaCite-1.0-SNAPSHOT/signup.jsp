<%-- 
    Document   : signup
    Created on : Apr 24, 2019, 3:43:43 PM
    Author     : Sandani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="img/shortcut.png">
        <meta charset="UTF-8">
        <title>SignUp</title>

        <link href="https://fonts.googleapis.com/css?family=Oswald:300,500,600|Roboto:400,700" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/login.css">
        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script> 

    </head>
    <body>
        <div class="wrapper fadeInDown">
            <div id="formContent">

                <div class="fadeIn first signup-image">
                    <h1>Sign up</h1>
                </div>

                <br><br>
                <form id="first_form" >
                    <input required="required" type="text" id="name" class="fadeIn second" name="name" placeholder="Your Name" maxlength="20" >
                    <input required="required" type="email" id="login" class="fadeIn second" name="email" placeholder="Your Email" >
                    <input required="required" type="password" id="password" class="fadeIn third" name="pass" placeholder="Password" maxlength="8">
                    <input required="required" type="password" id="re-password" class="fadeIn third" name="re-pass" placeholder="Confirm Your Password" maxlength="8">
                    
                    <div class="fadeIn fourth note" id="msg"> </div>
                    
                    <div class="col-lg-12 text-center grid-item col-md-12 all creative wow fadeIn" data-wow-duration="2s" >
                        <a href="#" class="fadeIn fourth primary-btn" id="js-signup-submit" data-text="Sign Up">
                            <span>S</span>
                            <span>I</span>
                            <span>G</span>
                            <span>N</span>
                            <span> </span>
                            <span>U</span>
                            <span>P</span>
                        </a>
                    </div>
                    <br><br>
                </form>

                <div id="formFooter">
                    <a class="underlineHover" href="index.jsp">Already have an account?</a>
                </div>
            </div>
        </div> 
        <script type="text/javascript" src="js/signup.js"></script>
    </body>
</html>

