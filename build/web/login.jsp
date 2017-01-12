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
        <h1>Administration Login </h1>
        

        
           <form method="post" action="http://localhost:8080/pdsadmin/finval.jsp">
             
               
               <table border="0" width="2" cellspacing="10" cellpadding="1">
                  
                  <tbody>
                       <tr>
                           <td>Enter username</td>
                           <td><input type="text" name="v1" ></td>
                       </tr>
                       <tr>
                           <td>Enter Password</td>
                           <td><input type="password" name="v2"></td>
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
