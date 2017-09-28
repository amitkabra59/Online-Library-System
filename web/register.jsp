<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,print" />
      <!-- Compiled and minified CSS -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
      <!-- Compiled and minified JavaScript -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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
	<form method="post" name="regform" action="registration">
	<div class="row">
    
      <div class="row">
        <div class="input-field col s6">
          <input id="first_name" type="text" name="first_name"   class="validate" required>
          <label for="first_name">First Name</label>
          
        </div>
        <div class="input-field col s6">
          <input id="last_name" name = "last_name" type="text"  class="validate" required>
          <label for="last_name">Last Name</label>
          
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="username" name = "username"  type="text" class="validate" required>
          <label for="username">Username </label>
          
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="email" type="email" name="email" class="validate" required>
          <label for="email">Email</label>
          
        </div>
      </div>
        <div class="row">
        <div class="input-field col s12">
          <input id="password" name = "password" type="password" class="validate" required>
          <label for="password">Password</label>
        </div>
        
      </div>
      </div>
    <center><button class="btn waves-effect waves-light" type="submit" id="submit" name="submit">Register</button></center>
    </form>
	
            
	
    <br><br><br><br>
	
     <footer class="page-footer">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            
              <center><i> © 2017 EliteNinjas</i></center>
            
          </div>
        </footer>
 
    </body>
  </html>
 