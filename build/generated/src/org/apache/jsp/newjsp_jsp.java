package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;
import javax.servlet.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("  <html>\n");
      out.write("    <head>\n");
      out.write("      <!--Import Google Icon Font-->\n");
      out.write("      <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("      <!--Import materialize.css-->\n");
      out.write("      <link type=\"text/css\" rel=\"stylesheet\" href=\"css/materialize.min.css\"  media=\"screen,print\" />\n");
      out.write("      <!-- Compiled and minified CSS -->\n");
      out.write("      <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css\">\n");
      out.write("      <!-- Compiled and minified JavaScript -->\n");
      out.write("      <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js\"></script>\n");
      out.write("      <!--Let browser know website is optimized for mobile-->\n");
      out.write("      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n");
      out.write("    </head>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("      <!--Import jQuery before materialize.js-->\n");
      out.write("      <script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-3.2.1.min.js\"></script>\n");
      out.write("      <script type=\"text/javascript\" src=\"js/materialize.min.js\"></script>\n");
      out.write("\t<!--Navigation bar-->  \n");
      out.write("      <nav class=\"nav-extended\">\n");
      out.write("      <div class=\"nav-wrapper\">\n");
      out.write("      <a href=\"#!\" class=\"brand-logo\"><b> Student Library </b></a>\n");
      out.write("      <ul class=\"right hide-on-med-and-down\">\n");
      out.write("        <li><a href=\"sass.html\"><i class=\"material-icons left\">search</i>Search</a></li>\n");
      out.write("        <li><a href=\"badges.html\"><i class=\"material-icons right\">view_module</i>Menu</a></li>\n");
      out.write("      </ul>\n");
      out.write("     </div>\n");
      out.write("    </nav>\n");
      out.write("    <br><br><br><br>\n");
      out.write("\t\n");
      out.write("        ");
 
        response.setContentType("text/html");
        String fname = request.getParameter("first_name");
        String lname = request.getParameter("last_name");
        String uname = request.getParameter("username");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        
        
        Connection con = null;
                        PreparedStatement ps;
                        Statement st;
                        ResultSet rs;
                     
                        String query;
        try
                        {
                            Class.forName("com.mysql.jdbc.Driver");
                        }
                        catch(Exception e)
                        {
                            System.out.println(e);
                }
                    try
                        {
                            con =DriverManager.getConnection("jdbc:mysql://localhost:3307/agile","root","root"); 
                            String sql= "select * from register where email= ?";
                            ps = con.prepareStatement(sql);
                            ps.setString(1,email);
                            
                            
                            rs = ps.executeQuery();
                           
                            if(rs.next()){
                                out.print("Email Already Exists");   
                            }
                            else{
                            query = "insert into register values(?,?,?,?,?)";
                            ps=con.prepareStatement(query);
                            ps.setString(1,fname);
                            ps.setString(2, lname);
                            ps.setString(3, uname);
                            ps.setString(4, email);
                            ps.setString(5,pass);
                            
                            int rps=ps.executeUpdate();
                            
                            if(rps!=0){
                                out.println("<br>Record has been inserted");
                             }
                             else{
                                out.println("failed to insert the data");
      }
                             
                            
                             
                             
                        }}
                        catch(SQLException e)
                        {
                            System.out.println(e);
                        }
        
        
      out.write("\n");
      out.write("\t<!--Form-->\n");
      out.write("\t<form method=\"post\" name=\"loginform\" action=\"newjsp\">\n");
      out.write("\t<div class=\"row\">\n");
      out.write("    \n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"input-field col s6\">\n");
      out.write("          <input id=\"first_name\" type=\"text\" name=\"first_name\"   class=\"validate\" required>\n");
      out.write("          <label for=\"first_name\">First Name</label>\n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("        <div class=\"input-field col s6\">\n");
      out.write("          <input id=\"last_name\" name = \"last_name\" type=\"text\"  class=\"validate\" required>\n");
      out.write("          <label for=\"last_name\">Last Name</label>\n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"input-field col s12\">\n");
      out.write("          <input id=\"username\" name = \"username\"  type=\"text\" class=\"validate\" required>\n");
      out.write("          <label for=\"username\">Username </label>\n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"input-field col s12\">\n");
      out.write("          <input id=\"email\" type=\"email\" name=\"email\" class=\"validate\" required>\n");
      out.write("          <label for=\"email\">Email</label>\n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"input-field col s12\">\n");
      out.write("          <input id=\"password\" name = \"password\" type=\"password\" class=\"validate\" required>\n");
      out.write("          <label for=\"password\">Password</label>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("    <center><button class=\"btn waves-effect waves-light\" type=\"submit\" id=\"submit\" name=\"submit\">Register</button></center>\n");
      out.write("    </form>\n");
      out.write("\t\n");
      out.write("            \n");
      out.write("\t\n");
      out.write("    <br><br><br><br>\n");
      out.write("\t\n");
      out.write("     <footer class=\"page-footer\">\n");
      out.write("          <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("              <div class=\"col l6 s12\">\n");
      out.write("                <h5 class=\"white-text\">Footer Content</h5>\n");
      out.write("                <p class=\"grey-text text-lighten-4\">You can use rows and columns here to organize your footer content.</p>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"col l4 offset-l2 s12\">\n");
      out.write("                <h5 class=\"white-text\">Links</h5>\n");
      out.write("                <ul>\n");
      out.write("                  <li><a class=\"grey-text text-lighten-3\" href=\"#!\">Link 1</a></li>\n");
      out.write("                  <li><a class=\"grey-text text-lighten-3\" href=\"#!\">Link 2</a></li>\n");
      out.write("                </ul>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"footer-copyright\">\n");
      out.write("            \n");
      out.write("              <center><i> © 2017 EliteNinjas</i></center>\n");
      out.write("            \n");
      out.write("          </div>\n");
      out.write("        </footer>\n");
      out.write(" \n");
      out.write("    </body>\n");
      out.write("  </html>\n");
      out.write(" ");
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
