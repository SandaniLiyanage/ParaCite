$('#logout').on('click', function (e) {
    swal({
        title: "Logout",
        text: "Are You Sure?",
        type: 'warning',
        showCancelButton: true,
        //confirmButtonColor: '#3085d6',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Yes',
        cancelButtonText: 'No',
        closeOnConfirm: false,
        closeOnCancel: true
    },
    function (isConfirm) {
        if (isConfirm) {
            location.href = "logout.jspx?alert=Logout&message=Successful";
        }
    }
    );
});

//$('#logout').on('click', function (e) {
//    Swal.fire('Hello world!');
//});
