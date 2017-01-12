<%-- 
    Document   : homepage
    Created on : 5 Jan, 2017, 12:13:26 AM
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
        <h1> Administration </h1>
        <p>
            
            Logged in as : <%= session.getAttribute("name")%> </p>
        
        
        
        <table border="0" width="4" cellspacing="10" cellpadding="10" bgcolor="bisque">
          
            <tbody>
                <tr>
                    <td><a href="view.jsp">View Data</a></td>
                    <td><a href="update.jsp">Update Pothole Status</a></td>
                    <td><a href="report.jsp">Generate Report</a></td>
                    <td><a href="logout.jsp">Logout</a></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
