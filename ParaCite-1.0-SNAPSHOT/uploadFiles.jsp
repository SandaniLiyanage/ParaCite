<%-- 
    Document   : uploadFiles
    Created on : Apr 11, 2019, 7:08:53 PM
    Author     : Sandani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="img/shortcut.png">
        <meta charset="UTF-8">
        <title>Upload</title>

        <link href="https://fonts.googleapis.com/css?family=Oswald:300,500,600|Roboto:400,700" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/main.css">

        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>

    <body> 
        <%@ include file = "sessionManagement.jsp" %>

        <div class="preloader-area">
            <div class="loader-box">
                <div class="loader"></div>
            </div>
        </div>

        <header id="header">
            <div class="container main-menu">
                <div class="row align-items-center d-flex">
                    <div id="logo">
                        <a href="dashboard.jsp"><img src="img/mainlogo3.png" alt="" title="" /></a>
                    </div>
                    <nav id="nav-menu-container">
                        <ul class="nav-menu">
                            <li><a href="dashboard.jsp">DashBoard</a></li>
                            <li><a href="#" class="active">Upload Files</a></li>
                            <li><a href="history.jsp">History</a></li>
                            <li><a href="help.jsp">User Guide</a></li>
                            <li><a href="logout.jspx?alert=Logout&message=Successful"  onclick = "if (!confirm('Do you really want to logout?')) return false;">Log Out</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>

        <section class="service-area section-gap-top">
            <div class="container">
                <h4>Select files from your computer</h4><br>
                <form action="go" method="post" enctype="multipart/form-data" id="js-upload-form">
                    <div class="custom-file">
                        <input type="file" name="files[]" class="custom-file-input" id="js-upload-files" multiple>
                        <label class="custom-file-label" for="js-upload-files">Choose file</label><br>
                    </div>
                     <div class="note" id="msg-for-js-upload-files"> </div>
                    <br><br>
                    <h4>Or drag and drop files below</h4>
                    
                    <br>
                    <div class="upload-drop-zone" id="drop-zone">
                        Just drag and drop files here
                    </div>
                    <div class="note" id="msg-for-drop-zone"> </div>
                    
<!--                    <div class="selected-files-error" id="upload-drop-zone-error"></div>
                    <div class="selected-files-error" id="file-empty-error"></div>-->
                    <hr>

                    <h4>Select Referencing Style</h4><br>

                    <div id="styles">
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="option1" name="style" value="ieee" checked>
                            <label class="custom-control-label" for="option1">IEEE</label>
                        </div>

                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="option2" name="style" value="apa">
                            <label class="custom-control-label" for="option2">APA</label>
                        </div>

                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="option3" name="style" value="modern-language-association">
                            <label class="custom-control-label" for="option3">MLA</label>
                        </div>

                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="option4" name="style" value="elsevier-harvard">
                            <label class="custom-control-label" for="option4">Harvard</label>
                        </div>

                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="option5" name="style" value="chicago-fullnote-bibliography">
                            <label class="custom-control-label" for="option5">Chicago</label>
                        </div>

                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="option6" name="style" value="elsevier-vancouver">
                            <label class="custom-control-label" for="option6">Vancouver</label>
                        </div>
                    </div>
                    <div class="col-lg-12 text-center grid-item col-md-12 all creative wow fadeIn" data-wow-duration="2s" >
                        <a href="#" class="primary-btn" id="js-upload-submit" data-text="CREATE CITATION">
                            <span>C</span>
                            <span>R</span>
                            <span>E</span>
                            <span>A</span>
                            <span>T</span>
                            <span>E</span>
                            <span> </span>
                            <span>C</span>
                            <span>I</span>
                            <span>T</span>
                            <span>A</span>
                            <span>T</span>
                            <span>I</span>
                            <span>O</span>
                            <span>N</span>
                        </a>
                    </div>
                </form>
            </div>
        </section>
        <script type="text/javascript" src="js/uploadFiles.js"></script>
    </body>


</html>

