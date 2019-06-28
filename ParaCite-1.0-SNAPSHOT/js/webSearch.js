+function ($) {



    //check whether valid url
    $('#url').on('input', function (e) {
        e.preventDefault();
        $('#url-empty-error').html("");


    });

    function isUrl(s) {
        var regexp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/;
        return regexp.test(s);
    }

    $('#js-upload-submit').on('click', function (e) {

        var url = $('#url').val();

        if (url === "") {
            $('#url-empty-error').html('<span class="error">Please insert a url</span>');
        } else {
            if (!isUrl(url)) {
                $('#url-empty-error').html('<span class="error">Please insert a valid url</span>');
            } else {
                console.log("Url ready: " + url);

                var styles = document.getElementsByClassName('custom-control-input');//input from radios
                var style_value;
                for (var i = 0; i < styles.length; i++) {
                    if (styles[i].checked) {
                        style_value = styles[i].value;
                        break;
                    }
                }
                console.log("User opt for style: " + style_value);

                $.post("WebSearchHandler", {
                    "url": url,
                    "style": style_value
                }, function (data, status) {
                    window.location.href = "response.jsp";
                });
            }

        }

    });
}(jQuery);



