function myFunction() {
  /* Get the text field */
  var copyText = document.getElementById("myInput");

  /* Select the text field */
  copyText.select();

  /* Copy the text inside the text field */
  document.execCommand("copy");

  /* Alert the copied text */
  alert("Copied the text: " + copyText.value);
}

function resizeInput() {
    $(this).attr('size', $(this).val().length);
}

$('#js-copy').on('click', function (e) {
	myFunction();
});

$('input[type="text"]')
    // event handler
    .keyup(resizeInput)
    // resize on page load
    .each(resizeInput);

