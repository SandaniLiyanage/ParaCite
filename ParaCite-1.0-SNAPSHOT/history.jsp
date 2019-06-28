<%-- 
    Document   : history
    Created on : May 2, 2019, 1:56:43 PM
    Author     : Sandani
--%>

<%@page import="com.mycompany.paracite.JDBCConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="img/shortcut.png">
        <meta charset="UTF-8">
        <title>History</title>

        <script src="https://code.jquery.com/jquery-2.2.4.js" charset="utf-8"></script>
        <link href="https://fonts.googleapis.com/css?family=Oswald:300,500,600|Roboto:400,700" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/history.css" media="screen" title="no title">

    </head>

    <body>
        <%@ include file = "sessionManagement.jsp" %>
        <header id="header">
            <div class="container main-menu">
                <div class="row align-items-center d-flex">
                    <div id="logo">
                        <img src="img/mainlogo3.png" alt="" title="" />
                    </div>
                    <nav id="nav-menu-container">
                        <ul class="nav-menu">
                            <li><a href="dashboard.jsp">DashBoard</a></li>
                            <li><a href="uploadFiles.jsp">Upload Files</a></li>
                            <li><a href="#" class="active">History</a></li>
                            <li><a href="help.jsp">User Guide</a></li>
                            <li><a href="logout.jspx?alert=Logout&message=Successful"  onclick = "if (!confirm('Do you really want to logout?'))
                                        return false;">Log Out</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>

        <section class="service-area section-gap-top">
            <div class="container">
                <%    try {
                		JDBCConnector connector = new JDBCConnector();
                %>
                <!-- Tab links -->
                <div class="tab">
                    <button class="tablinks" onclick="openCitation(event, 'IEEE')" id="defaultOpen">IEEE</button>
                    <button class="tablinks" onclick="openCitation(event, 'APA')">APA</button>
                    <button class="tablinks" onclick="openCitation(event, 'MLA')">MLA</button>
                    <button class="tablinks" onclick="openCitation(event, 'Harvard')">HARVARD</button>
                    <button class="tablinks" onclick="openCitation(event, 'Chicago')">CHICAGO</button>
                    <button class="tablinks" onclick="openCitation(event, 'Vancouver')">VANCOUVER</button>
                </div>



                <!-- Tab content -->
                <div id="IEEE" class="tabcontent">
                    <%
                        String getQueryStatement1 = "SELECT * FROM citations WHERE email=\"" + user + "\" AND style=\"ieee\"";                      
                        ResultSet rs1 = connector.read(getQueryStatement1);
                        while (rs1.next()) {

                    %>
                    <div class="item">
                        <div class="description">
                            <span><%=rs1.getString("citations")%></span>
                        </div>
                    </div>
                    <hr>
                    <%
                        }
                    %>
                    <%
                        rs1.close();
                    %>  
                </div>

                <div id="APA" class="tabcontent">
                    <%
                        String getQueryStatement2 = "SELECT * FROM citations WHERE email=\"" + user + "\" AND style=\"apa\"";
                        ResultSet rs2 = connector.read(getQueryStatement2);
                        while (rs2.next()) {
                    %>
                    <div class="item">
                        <div class="description">
                            <span><%=rs2.getString("citations")%></span>
                        </div>
                    </div>
                    <hr>
                    <%
                        }
                    %>
                    <%
                        rs2.close();
                    %>  
                </div>

                <div id="MLA" class="tabcontent">
                    <%
                        String getQueryStatement3 = "SELECT * FROM citations WHERE email=\"" + user + "\" AND style=\"modern-language-association\"";
                        ResultSet rs3 = connector.read(getQueryStatement3);
                        while (rs3.next()) {
                    %>
                    <div class="item">
                        <div class="description">
                            <span><%=rs3.getString("citations")%></span>
                        </div>
                    </div>
                    <hr>
                    <%
                        }
                    %>
                    <%
                        rs3.close();
                    %>  
                </div>

                <div id="Harvard" class="tabcontent">
                    <%
                        String getQueryStatement4 = "SELECT * FROM citations WHERE email=\"" + user + "\" AND style=\"elsevier-harvard\"";
                       ResultSet rs4 = connector.read(getQueryStatement4);
                        while (rs4.next()) {
                    %>
                    <div class="item">
                        <div class="description">
                            <span><%=rs4.getString("citations")%></span>
                        </div>
                    </div>
                    <hr>
                    <%
                        }
                    %>
                    <%
                        rs4.close();
                    %>  
                </div>

                <div id="Chicago" class="tabcontent">
                    <%
                        String getQueryStatement5 = "SELECT * FROM citations WHERE email=\"" + user + "\" AND style=\"chicago-fullnote-bibliography\"";
                        ResultSet rs5 = connector.read(getQueryStatement5);
                        while (rs5.next()) {
                    %>
                    <div class="item">
                        <div class="description">
                            <span><%=rs5.getString("citations")%></span>
                        </div>
                    </div>
                    <hr>
                    <%
                        }
                    %>
                    <%
                        rs5.close();
                    %>  
                </div>

                <div id="Vancouver" class="tabcontent">
                    <%
                        String getQueryStatement6 = "SELECT * FROM citations WHERE email=\"" + user + "\" AND style=\"elsevier-vancouver\"";
                        ResultSet rs6 = connector.read(getQueryStatement6);
                        while (rs6.next()) {

                    %>
                    <div class="item">
                        <div class="description">
                            <span><%=rs6.getString("citations")%></span>
                        </div>
                    </div>
                    <hr>
                    <%
                        }
                    %>
                    <%
                        rs6.close();
                    %>  
                </div>

                <%
                        connector.closeConnection();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>                   
            </div>           
        </section>
        <script type="text/javascript" src="js/history.js"></script>
    </body>
</html>