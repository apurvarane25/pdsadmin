<%-- 
    Document   : validate
    Created on : 4 Jan, 2017, 6:27:29 PM
    Author     : HP
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%! 
            
            String userdb;
            String passdb;
        %>
        
        <%
        Connection con= null;
        PreparedStatement st= null;
        ResultSet rs=null;
        
        String url= "jdbc:mysql://localhost:3306/login" ;
        String driverName  = "com.mysql.jdbc.Driver" ;
        String myuser= "root";
        String mypass= "oct25";
        String sql= "SELECT * FROM newtab WHERE username=? and password=?";
        
      String username= request.getParameter("username");
      out.print(username);
      String password= request.getParameter("password");
      out.print(password);
      if
       (
          !(    username.equals(null) || username.equals("")    )
              &&
          !(    password.equals(null) || password.equals("")    )
       )
              
      { //start first if
     try { //start try
          Class.forName(driverName);
       con= DriverManager.getConnection(url, myuser, mypass);
       
       st=con.prepareStatement(sql);
       st.setString(1,username);
       st.setString(2,password);
       
       rs=st.executeQuery();
       
       if(rs.next())
       { //start second if
           
        //userdb=rs.getString("username");
        // passdb=rs.getString("password");
         
        // if(username.equals(userdb) && password.equals(passdb))
         //    start third if
             session.setAttribute("username",userdb);
             response.sendRedirect("homepage.jsp");
        // }//end third if
       } //end second if
       
         else response.sendRedirect("error.jsp");
         
         rs.close();
         st.close();
         
         
       } //endtry
      catch(SQLException sqe){out.print("db not connected"); out.print(sqe);  }
      
      }//endsecondif     
              
      else
      {
     %>
      <center><p style="color:red">Error In Login</p></center>
        <%
getServletContext().getRequestDispatcher("/login.jsp").include(request, 
response);
}

%>
</body>
</html>
