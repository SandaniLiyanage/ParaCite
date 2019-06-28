<%-- 
    Document   : sessionManagement
    Created on : Apr 26, 2019, 12:00:47 AM
    Author     : Sandani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session = request.getSession(false);
            String user = (String)session.getAttribute("email");
            if (null == session.getAttribute("email")) {
                System.out.println("No session Key is set");
                response.sendRedirect("index.jsp?alert=Session Expired&message=please login");
            } 
        %>
    </body>
</html>
