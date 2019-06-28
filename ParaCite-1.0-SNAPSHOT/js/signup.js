+function ($) {
    $('#name').on('click', function (e) {
        $('#name').css('border-color', '');
    });
    $('#login').on('click', function (e) {
        $('#login').css('border-color', '');
    });
    $('#password').on('click', function (e) {
        $('#password').css('border-color', '');
        $('#re-password').css('border-color', '');
    });
    $('#re-password').on('click', function (e) {
        $('#re-password').css('border-color', '');
        $('#password').css('border-color', '');
    });

    $('#js-signup-submit').on('click', function (e) {
        e.preventDefault();
                $('#msg').css('visibility', 'hidden');

        var username = $('#name').val();
        var email = $('#login').val();
        var password = $('#password').val();
        var repassword = $('#re-password').val();
        
        var allow = true;

        $(".error").remove();
        //validate username
        if (username.length < 1) {
            console.log("no username");
            $('#name').attr("placeholder", "please enter your name");
            $('#name').css('border-color', 'red');
            allow = false;
        }

        //validate email
        if (email.length < 1) {
            console.log("no email");
            $('#login').attr("placeholder", "please enter your email");
            $('#login').css('border-color', 'red');
            allow = false;
        } else {
            var regEx = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            //var regEx = /^[A-Z0-9][A-Z0-9._%+-]{0,63}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/;
            var validEmail = regEx.test(email);
            if (!validEmail) {
                console.log("invalid email");
                $('#login').css('border-color', 'red');
                $('#msg').removeClass("info");
                $('#msg').addClass("danger");
                $('#msg').html('<p><strong> Error!</strong> Please enter a valid email</p>');
                $('#msg').css('visibility', 'visible');
                allow = false;
            }
        }

        //validate password
        if (password.length < 1) {
            console.log("no password");
            $('#password').attr("placeholder", "please enter your password");
            $('#password').css('border-color', 'red');
            allow = false;
        } else if (password.length < 4) {
            console.log("invalid password");
            $('#password').css('border-color', 'red');
            $('#msg').removeClass("info");
            $('#msg').addClass("danger");
            $('#msg').html('<p><strong> Error!</strong> Password must be at least 4 characters long</p>');
            $('#msg').css('visibility', 'visible');
            allow = false;
        }

        //validate confirm-password
        if (repassword.length < 1) {
            console.log("no confirm password");
            $('#re-password').attr("placeholder", "please confirm your password");
            $('#re-password').css('border-color', 'red');
            allow = false;
        } else {
            if (password !== repassword) {
                console.log("passwords do not match");
                $('#password').css('border-color', 'red');
                $('#re-password').css('border-color', 'red');
                $('#msg').removeClass("info");
                $('#msg').addClass("danger");
                $('#msg').html('<p><strong> Error!</strong> Passwords do not match</p>');
                $('#msg').css('visibility', 'visible');

                allow = false;
            }
        }

        if (allow) {
            $.post("SignupHandler", {
                "user": username,
                "email": email,
                "password": password
            }, function (data) {
                if (data === "success") {
                    window.location.href = "index.jsp?alert=Signup&message=Successful";
                } else if (data === "fail") {
                    $('#login').css('border-color', 'red');
                    $('#msg').removeClass("info");
                    $('#msg').addClass("danger");
                    $('#msg').html('<p><strong> Sorry!</strong> An account for your email already exists</p>');
                    $('#msg').css('visibility', 'visible');
                }
            });
        }
    });

}(jQuery);






