+function ($) {

    $('#login').on('click', function (e) {
        $('#login').css('border-color', '');
    });

    $('#password').on('click', function (e) {
        $('#password').css('border-color', '');
    });

    $('#js-login-submit').on('click', function (e) {
        e.preventDefault();
        var username = $('#login').val();
        var password = $('#password').val();

        var allow = true;
        $(".error").remove();
        if (username.length < 1) {
            $('#login').attr("placeholder", "please enter your email");
            $('#login').css('border-color', 'red');
            allow = false;
        }

        if (password.length < 1) {
            $('#password').attr("placeholder", "please enter your password");
            $('#password').css('border-color', 'red');
            allow = false;
        }

        if (allow) {
            $.post("LoginHandler", {
                "user": username,
                "password": password
            }, function (data) {
                if (data === "success") {
                    window.location.href = "dashboard.jsp";
                } else if (data === "fail") {
                    $('#login').css('border-color', 'red');
                    $('#password').css('border-color', 'red');
                    $('#msg').removeClass("info");
                    $('#msg').addClass("danger");
                    $('#msg').html('<p><strong> Error: </strong> Invalid Username/Password</p>');
                    $('#msg').css('visibility', 'visible');
                }else if(data === "conn_fail"){
                	console.log(data);
                	$('#msg').addClass("danger");
                    $('#msg').html('<p><strong> Sorry: </strong> Database connection failed</p>');
                    $('#msg').css('visibility', 'visible');
                }
            });
        }
    });
}(jQuery);

 function getMessage() {
        var queryStr = window.location.search;
        var paramPairs = queryStr.substr(1).split('&');
        var params = {};
        for (var i = 0; i < paramPairs.length; i++) {
            var parts = paramPairs[i].split('=');
            params[parts[0]] = parts[1];
        }
        if (params.message !== undefined) {
            $('#msg').removeClass("danger");
            $('#msg').addClass("info");
            $('#msg').html('<p><strong>'+ decodeURI(params.alert)+':</strong> '+decodeURI(params.message)+'</p>');
            $('#msg').css('visibility', 'visible');
        }
    }




