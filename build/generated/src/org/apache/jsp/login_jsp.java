package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Timestamp;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("  <html>\n");
      out.write("    <head>\n");
      out.write("      <!--Import Google Icon Font-->\n");
      out.write("      <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("      <!--Import materialize.css-->\n");
      out.write("      <link type=\"text/css\" rel=\"stylesheet\" href=\"css/materialize.min.css\"  media=\"screen,projection\"/>\n");
      out.write("      <!-- Compiled and minified CSS -->\n");
      out.write("      <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css\">\n");
      out.write("      <!-- Compiled and minified JavaScript -->\n");
      out.write("      <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js\"></script>\n");
      out.write("\t   <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("      <!--Let browser know website is optimized for mobile-->\n");
      out.write("      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n");
      out.write("      \n");
      out.write("      ");
 
    if("POST".equalsIgnoreCase(request.getMethod()))
          {
            if(request.getParameter("action")!=null){
               
                String email= request.getParameter("email");
                
                String password=request.getParameter("password");
                 
                
                        java.sql.Date now = new java.sql.Date(System.currentTimeMillis());
                        Connection con = null;
                        PreparedStatement ps;
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
                            
                            query="select * from register where email=? and password=?";
                            ps=con.prepareStatement(query);
                            ps.setString(1,email);
                            ps.setString(2, password);
                            
                            rs=ps.executeQuery();
                            out.print("Hiii");
                            if(rs.next()){
                               
                          
                               String sql="INSERT into login values(?,?)";
                               ps=con.prepareStatement(sql);
                               ps.setString(1,email);
                               ps.setDate(2,now);

                               ps.executeUpdate();
                               session = request.getSession();
                               session.setAttribute("email", email);
                            
                               response.sendRedirect("http://www.google.com");
                             }
                                 else {
                                  out.print("<div class=\"container\" align=\"center\"><div class=\"well  \"><font size=\"4\">Invalid email or password</font></div></div>");
                                }
                             
                            
                             
                             
                        }
                        catch(SQLException e)
                        {
                            System.out.println(e);
                        }
            }
          }
        
    
      out.write("\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("    <body>\n");
      out.write("      <!--Import jQuery before materialize.js-->\n");
      out.write("      <script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-3.2.1.min.js\"></script>\n");
      out.write("      <script type=\"text/javascript\" src=\"js/materialize.min.js\"></script>\n");
      out.write("\t<!--Navigation bar-->  \n");
      out.write("     <nav class=\"nav-extended\">\n");
      out.write("     <div class=\"nav-wrapper\">\n");
      out.write("      <a href=\"#!\" class=\"brand-logo\"><b> Student Library </b></a>\n");
      out.write("      <ul class=\"right hide-on-med-and-down\">\n");
      out.write("        <li><a href=\"sass.html\"><i class=\"material-icons left\">search</i>Search</a></li>\n");
      out.write("        <li><a href=\"badges.html\"><i class=\"material-icons right\">view_module</i>Menu</a></li>\n");
      out.write("      </ul>\n");
      out.write("     </div>\n");
      out.write("    </nav>\n");
      out.write("    <br><br><br><br>\n");
      out.write("                      \n");
      out.write("        \n");
      out.write("\t<!--Form-->\n");
      out.write("\t<form method=\"post\" action=\"login.jsp\" >\n");
      out.write("     <center>  \n");
      out.write("    <div class=\"container\">\n");
      out.write("     <label><b>Username</b></label> &#8209;&nbsp;\n");
      out.write("     <input style=\"width:50%;\" type=\"email\" placeholder=\"Enter your username\" name=\"email\" class=\"validate\" required>\n");
      out.write("     <br><br>\n");
      out.write("     <label><b>Password</b></label> &#8209;&nbsp;\n");
      out.write("     <input style=\"width:50%;\" type=\"password\" placeholder=\"Enter your password\" name=\"password\" class=\"validate\" required>\n");
      out.write("    </div></center>\n");
      out.write("            <div><center><button class=\"btn waves-effect waves-light\" type=\"submit\" name=\"action\">Login <i class=\"material-icons right\">send</i></center></div>\n");
      out.write("    </button>\n");
      out.write("\t</form>\n");
      out.write("\t\n");
      out.write("    <p><center><b>OR</b></p>\n");
      out.write("\t<form method=\"post\" action=\"register.html\">\n");
      out.write("    <center><button class=\"btn waves-effect waves-light\" type=\"submit\" name=\"action\">Register here</button>\n");
      out.write("     \n");
      out.write("        \n");
      out.write("    <br><br><br><br>\n");
      out.write("\t\n");
      out.write("     <footer class=\"page-footer\" style=\"color:teal\">\n");
      out.write("          <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("              <div class=\"col l6 s12\">\n");
      out.write("                <h5 class=\"white-text\">Footer Content</h5>\n");
      out.write("               <!-- <p class=\"grey-text text-lighten-4\">You can use rows and columns here to organize your footer content.</p> -->\n");
      out.write("              </div>\n");
      out.write("              <div class=\"col l4 offset-l2 s12\">\n");
      out.write("                <h5 class=\"white-text\"> More Links</h5>\n");
      out.write("                <ul>\n");
      out.write("                  <li><a class=\"grey-text text-lighten-3\" href=\"#!\">Link 1</a></li>\n");
      out.write("                  <li><a class=\"grey-text text-lighten-3\" href=\"#!\">Link 2</a></li>\n");
      out.write("                </ul>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"footer-copyright\">\n");
      out.write("            \n");
      out.write("           <p><center><i> © 2017 EliteNinjas</i></center></p>\n");
      out.write("            \n");
      out.write("          </div>\n");
      out.write("        </footer>\n");
      out.write("      \n");
      out.write("  \n");
      out.write("        \n");
      out.write("      \n");
      out.write("    </body>\n");
      out.write("  </html>");
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
