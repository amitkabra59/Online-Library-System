<%-- 
    Document   : login
    Created on : Sep 20, 2017, 8:43:13 PM
    Author     : Amit
--%>

<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <!-- Compiled and minified CSS -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
      <!-- Compiled and minified JavaScript -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
	   <link rel="stylesheet" type="text/css" href="style.css">
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      
        <% 
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

                              if(rs.next()){


                                 String sql="INSERT into login values(?,?)";
                                 ps=con.prepareStatement(sql);
                                 ps.setString(1,email);
                                 ps.setDate(2,now);

                                 ps.executeUpdate();

                                 session = request.getSession();
                                 session.setAttribute("email", email);
                                 response.sendRedirect("dashboard.jsp");
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

      %>
    
    </head>
	
	
    <body>
      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
	<!--Navigation bar-->  
     <nav class="nav-extended">
     <div class="nav-wrapper">
      <a href="#!" class="brand-logo"><b> Student Library </b></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="sass.html"><i class="material-icons left">search</i>Search</a></li>
        <li><a href="badges.html"><i class="material-icons right">view_module</i>Menu</a></li>
      </ul>
     </div>
    </nav>
    <br><br><br><br>
                      
        
	<!--Form-->
	<form method="post" action="login.jsp" >
     <center>  
    <div class="container">
     <label><b>Username</b></label> &#8209;&nbsp;
     <input style="width:50%;" type="email" placeholder="Enter your username" name="email" class="validate" required>
     <br><br>
     <label><b>Password</b></label> &#8209;&nbsp;
     <input style="width:50%;" type="password" placeholder="Enter your password" name="password" class="validate" required>
    </div></center>
            <div><center><button class="btn waves-effect waves-light" type="submit" name="action">Login <i class="material-icons right">send</i></center></div>
    </button>
	</form>
	
    <p><center><b>OR</b></p>
	<form method="post" action="register.jsp">
    <center><button class="btn waves-effect waves-light" type="submit" name="action">Register here</button>
    </center></form>
        
    <br><br><br><br>
	
     <footer class="page-footer" style="color:teal">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
               <!-- <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p> -->
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text"> More Links</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            
           <p><center><i> © 2017 EliteNinjas</i></center></p>
            
          </div>
        </footer>
      
  
        
      
    </body>
  </html>