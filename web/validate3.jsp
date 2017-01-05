<%-- 
    Document   : validate3
    Created on : 5 Jan, 2017, 3:38:40 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <h1>Administration</h1>
        
        <sql: setDataSource
              var="var1"
              url="jdbc:mysql://localhost:3306/login"
              driver="com.mysql.jdbc.Driver"
              user="root"
              
              />
        
        
    </body>
</html>
