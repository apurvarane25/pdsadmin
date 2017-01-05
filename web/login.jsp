<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : login
    Created on : 4 Jan, 2017, 6:27:01 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.sql.*"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Administration</h1>
        

        
           <form method="post" action="validate2.jsp">
             
               
               <table border="2" width="2" cellspacing="1" cellpadding="1">
                  
                  <tbody>
                       <tr>
                           <td>Enter username</td>
                           <td><input type="text" name="username" ></td>
                       </tr>
                       <tr>
                           <td>Enter Password</td>
                           <td><input type="password" name="pasword"></td>
                       </tr>
                       
                    

                       
                       <tr>
                           <td></td>
                           <td><input type="submit" value="Login" /></td>
                       </tr>
                   </tbody>
               </table>
               </form>
             
    </body>
</html>
