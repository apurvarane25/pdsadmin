<%-- 
    Document   : logout
    Created on : 11 Jan, 2017, 8:36:40 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
session.invalidate();
out.println("You have been successfully logged out");
response.sendRedirect("login.jsp");
%>
        
    </body>
</html>
