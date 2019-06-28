var dropZone = document.getElementById('drop-zone'); //drag and drop 
var uploadForm = document.getElementById('js-upload-form'); //select from computer

var DraggedFiles = []; //drag and drop file array

var imgList = [];
var imgid = 0;
var selectedFiles = [];//upload file array

var discardedFileListDragnDrop = [];
var discardedFileListUpload = [];

var joined = []; //drag and drop files + selected files

var request = new XMLHttpRequest();

//convert given list to an array
function toArray(fileList) {
    return Array.prototype.slice.call(fileList);
}

//display selected files on js-upload-files input box 
$('#js-upload-files').on('input', function (e) {
    e.preventDefault();
    $('#msg-for-js-upload-files').html("");
    selectedFiles = [];
    discardedFileListUpload = [];
    if ($(this)[0].files.length === 1) {
        $(this).next('.custom-file-label').html($(this)[0].files[0].name);
    } else {
        $(this).next('.custom-file-label').html($(this)[0].files.length + " files selected");
    }

    for (var i = 0; i < $(this)[0].files.length; i++) {
        if (readExtension($(this)[0].files[i].name)) {
            selectedFiles.push($(this)[0].files[i]);
        } else {
            discardedFileListUpload.push($(this)[0].files[i].name);
        }
    }
    if (selectedFiles.length < $(this)[0].files.length) {
        $('#msg-for-js-upload-files').addClass("red");
        $('#msg-for-js-upload-files').html('<p><strong> Sorry we\'re unable to process following files</strong><ul>' + makeArrayList(discardedFileListUpload) + '</ul></span></p>');
        $('#msg-for-js-upload-files').css('visibility', 'visible');
    }
});

//control drag and drop event
dropZone.ondragover = function (e) {
    e.preventDefault();
    this.className = 'upload-drop-zone drop';
    return false;
};

//control drag and drop event
dropZone.ondragleave = function (e) {
    e.preventDefault();
    this.className = 'upload-drop-zone';
    return false;
};

//control drag and drop event
dropZone.ondrop = function (e) {
    e.preventDefault(); // stop default behaviour
    $('#msg-for-drop-zone').html("");
    readfiles(e.dataTransfer.files); // function to handle files that was added to dropzone
};

//append files to DraggedFiles and display dragged files 
function readfiles(files) {
    for (var i = 0; i < files.length; i++) {
        var imagename = files[i].name;
        var imagepath = "";
        if (readExtension(files[i].name)) {
            DraggedFiles.push(files[i]);
            imagepath = "img/001-pdf.png";
        } else {
            discardedFileListDragnDrop.push(files[i].name);
            imagepath = "img/004-warning.png";
        }
        var imgListelement = '<div class="imgcontainer">';
        imgListelement = imgListelement + '<img src=' + imagepath + ' class="blockfile" title="' + imagename + '">';
        imgListelement = imgListelement + '<img src="img/recycling.png" class="blockdeleteIcon" title="' + imagename + '"onclick="removeImage(\'' + escape(imagename) + '\',' + imgid + ')">';
        imgListelement = imgListelement + '</div>';
        imgList.push(imgListelement);
        imgid = imgid + 1;
    }
    
    $('#drop-zone').html(imgList);
    if (discardedFileListDragnDrop.length > 0) {
        $('#msg-for-drop-zone').addClass("red");
        $('#msg-for-drop-zone').html('<p><strong> Sorry we\'re unable to process following files</strong><ul>' + makeArrayList(discardedFileListDragnDrop) + '</ul></span></p>');
        $('#msg-for-drop-zone').css('visibility', 'visible');
    }
}

//check file extension
function readExtension(filename) {
    var fileExtension = filename.split('.').pop();
    if (fileExtension === "pdf") {
        return true;
    } else {
        return false;
    }
}

//post joined file array to server side
$('#js-upload-submit').on('click', function (e) {
    var formData = new FormData();

    joined = toArray(selectedFiles).concat(toArray(DraggedFiles));

    var errorFileList = toArray(discardedFileListDragnDrop).concat(toArray(discardedFileListUpload));
    if (errorFileList.length > 0) {
        var errorFileListAsAString = makeArrayList(errorFileList);
        formData.append('rejected', errorFileListAsAString);
    }

    if (joined.length > 0) {
        $(".preloader-area").css('display', 'block');
        for (var i = 0; i < joined.length; i++) {
            var file = joined[i];
            formData.append('files[]', file);
        }

        var styles = document.getElementsByClassName('custom-control-input');//input from radios
        var style_value;
        for (var i = 0; i < styles.length; i++) {
            if (styles[i].checked) {
                style_value = styles[i].value;
                break;
            }
        }
        formData.append('style', style_value);

        $.ajax({
            type: 'POST',
            enctype: "multipart/form-data",
            url: 'FileUploadHandler',
            contentType: false,
            processData: false,
            data: formData,
            success: function (response) {
                console.log("successful");
                window.location.href = "response.jsp";

            },
            error: function (xhr) {
                console.log("error");
            }
        });
    } else {
        $('#msg-for-drop-zone').addClass("red");
        $('#msg-for-drop-zone').html('<p><strong> Error!</strong> Please upload your files</span></p>');
        $('#msg-for-drop-zone').css('visibility', 'visible');
        $('#file-empty-error').html('<span class="error">Please upload your files</span>');
    }

});

function removeImage(removefilename, id) {
    removefilename = unescape(removefilename);
    $('#msg-for-drop-zone').html("");

    //removing image
    delete imgList[id];

    //removing from discarded list to be shown
    var index = discardedFileListDragnDrop.indexOf(removefilename);
    if (index > -1) {
        discardedFileListDragnDrop.splice(index, 1);
    }

    //removing from selected files
    DraggedFiles = DraggedFiles.filter(function (obj) {
        return obj.name !== removefilename;
    });

    $('#drop-zone').html(imgList);
    if (discardedFileListDragnDrop.length > 0) {
        $('#msg-for-drop-zone').html('<p><strong> Sorry we\'re unable to process following files</strong><ul>' + makeArrayList(discardedFileListDragnDrop) + '</ul></span></p>');
    }
}

function makeArrayList(array) {
    var stringlist = '';
    for (var i = 0; i < array.length; i++) {
        stringlist = stringlist + '<li>' + array[i] + '</li>';
    }
    return stringlist;
}

