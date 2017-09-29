<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
  <html>
    <head>
      
      
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
     </head>
	
    <body background="library.jpg"> 
	  
	<!--Navigation bar-->  
  <!--<nav>
    <div class="nav-wrapper">
      <form>
        <div class="input-field">
          <input id="search" type="search" required>
          <label class="label-icon" for="search"><i class="material-icons">search</i></label>
          <i class="material-icons">close</i>
        </div>
      </form>
    </div>
  </nav>-->
      <div class="w3-bar w3-blue">
      <a href="index.html" class="w3-bar-item w3-button w3-mobile w3-wide">Student Library</a>
      <a href="#" class="w3-bar-item w3-button w3-mobile">Link 1</a>
      <a href="#" class="w3-bar-item w3-button w3-mobile">Link 2</a>
      <a href="index.html" class="w3-bar-item w3-button w3-mobile w3-right">Logout</a>
      
      <!--<div class="w3-dropdown-hover w3-right w3-blue">
      <button class="w3-button w3-black">Account</button>
      <div class="w3-dropdown-content w3-bar-block w3-border" style="right:0">
      <a href="index.html" class="w3-bar-item w3-button">Logout</a>
      </div>
      </div> -->
      </div> <br><br><br><br>
   <br><br><br><br><br>
  
	<!-- Logout Button-->
       <!-- <form action="index.html">
	<div><center><br><br><br><br>
	<button class="btn waves-effect waves-light" type="submit" name="logout">Logout</button>
        </center></div></form> -->
       
       <div class="w3-clear"></div>
	<br><br><br><br>
	<% 
        session=request.getSession(false);
        
        if((session.getAttribute("email"))!=null){
        try{
        Class.forName("com.mysql.jdbc.Driver");  
             
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/agile","root","root");  
            Statement stmt=con.createStatement();
            String s="select * from register where email=?;";
            PreparedStatement ps= con.prepareStatement(s);
            ps.setString(1,session.getAttribute("email").toString());
            ResultSet rs=ps.executeQuery();
            
            if(rs.next()){
                %> <center><h3 class="w3-wide"> Welcome <%= rs.getString("firstname") %> </h3></center><% 
            }
            }
        catch(Exception e){
        e.printStackTrace();
        }
        }
        %>
        
	<!-- Footer-->
   <!-- <footer class="page-footer">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
               <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
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
            
           <p><center><i> © 2017 EliteNinjas</i></center>
            
          </div>
        </footer> -->
        
        </body>
  </html>