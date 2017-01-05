package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class validate2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 
            
            String userdb;
            String passdb;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("        \n");
      out.write("        ");

        Connection con= null;
        Statement st= null;
        ResultSet rs=null;
        
        String url= "jdbc:mysql://localhost:3306/login" ;
        String driverName  = "com.mysql.jdbc.Driver" ;
        String myuser= "root";
        String mypass= "oct25";
        String sql= "SELECT * FROM newtab WHERE username=? and password=?";
        
      String username= request.getParameter("username");
      String password= request.getParameter("password");
      if
       (
          !(    username.equals(null) || username.equals("")    )
              &&
          !(    password.equals(null) || password.equals("")    )
       )
              
      { //start first if
     try { //start try
          Class.forName(driverName).newInstance();
       con= DriverManager.getConnection(url, myuser, mypass);
       
//       st=con.prepareStatement(sql);
//       st.setString(1,username);
//       st.setString(2,password);
       
       st=con.createStatement();
    
       rs=st.executeQuery("SELECT * FROM newtab WHERE username='"+username+"' and password='"+password+"'");
       
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
     
      out.write("\n");
      out.write("      <center><p style=\"color:red\">Error In Login</p></center>\n");
      out.write("        ");

getServletContext().getRequestDispatcher("/login.jsp").include(request, 
response);
}


      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
