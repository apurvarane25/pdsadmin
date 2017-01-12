
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import= "java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    </head>
    <body>
        <h1>Update Status
        <script type="text/javascript">

   function changeFunc(option, id) {
        var selectedValue = $(option).val();
        $.ajax({
            url: 'updatestatus.jsp',
            data: {id:id,status:selectedValue},
            method: 'POST',
            success:function() { 
                    $("#error").remove();
                    $("#potholes").prepend("<div id='error' style='color:green;' >Update successful</div>");
                
            }
        });
   }

  </script>
        </h1>
        
        
         <%
        
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://pothole.cpel76oxpjoj.us-west-2.rds.amazonaws.com:3306/pothole?zeroDateTimeBehavior=convertToNull","potholedetector","jackjain");
        PreparedStatement ps= con.prepareStatement("SELECT * FROM report order by priority desc" );
        
        ResultSet rs= ps.executeQuery();
        %>
        <div style="background-color:beige; color:crimson; padding:20px;" id="potholes">
        <table  border="5" style="width:100%">
     
            <tr>
                <td>ID </td>
                <td> Location</td>
                <td>Status </td>
                <td> Priority </td>
            </tr>   
            
        <% while(rs.next()) { %>
     
        <tr>
            <td> <% out.println(rs.getInt("id"));%> </td>
            <td> <% out.println(rs.getFloat("locationx")+", "+rs.getInt("locationy")); %> </td>
            <td>
                <select name="status" onchange="changeFunc(this,<% out.println(rs.getInt("id")); %>)" >
                    
                    <option value="<% out.println(rs.getString("status")); %>" >
                        <% out.println(rs.getString("status")); %> </option>
                    <option value="Detected" >Detected</option>
                    <option value="Repaired" >Repaired</option>
                    <option value="Verified" >Verified</option>
                </select>
            </td>
            <td> <% out.println(rs.getString("priority")); %> </td>
        </tr>
        
        <% } %>
        
        </table>
        </div>
       <%
        rs.close();
        ps.close();
        }catch(SQLException  e) {}  
        %>
    </body>
</html>
