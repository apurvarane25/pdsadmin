
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import= "java.sql.*" %>
           <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://pothole.cpel76oxpjoj.us-west-2.rds.amazonaws.com:3306/pothole?zeroDateTimeBehavior=convertToNull","potholedetector","jackjain");
        PreparedStatement ps= con.prepareStatement("UPDATE  report SET status = ? WHERE id = ?" );
        ps.setString(1,request.getParameter("status"));
        ps.setString(2,request.getParameter("id"));
        ps.executeUpdate();
            out.print(1);
        ps.close();
        } catch(SQLException  e) {}  
        %>