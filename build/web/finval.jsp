
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import= "java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validation</title>
    </head>
    <body>
       
        
        <%
        String username= request.getParameter("v1");
        String password= request.getParameter("v2");
        
        %>
        
        <%
        
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://pothole.cpel76oxpjoj.us-west-2.rds.amazonaws.com:3306/pothole?zeroDateTimeBehavior=convertToNull","potholedetector","jackjain");
        PreparedStatement ps= con.prepareStatement("SELECT * FROM user WHERE email=? and password=?");
        ps.setString(1,username);
        ps.setString(2,password);
        ResultSet rs= ps.executeQuery();
        
        if(rs.next())
        {
            session.setAttribute("name",rs.getString("name"));
            session.setAttribute("user_id",rs.getInt("id"));
            response.sendRedirect("homepage.jsp");
        
        }
        else
        { response.sendRedirect("error.jsp");
        }
        rs.close();
        ps.close();
        }catch(SQLException  e) {}  
        %>
        
        
        
        
        
        
        
    </body>
</html>
