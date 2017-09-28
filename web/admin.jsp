
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in  the head; any other head content must come *after* these tags -->
    <title>Admin Login</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
 
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="css/admin.css" rel="stylesheet">
    <% 
    if("POST".equalsIgnoreCase(request.getMethod()))
          {
            if(request.getParameter("login")!=null){
               
                String email= request.getParameter("email");
                
                String password=request.getParameter("pwd");
                 
                if((!email.isEmpty()) &&(!password.isEmpty())){
                        
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
                            
                            
                            session = request.getSession();
                            session.setAttribute("email", email);
                            out.print("Login Success");
                            response.sendRedirect("adminhome.html");
                             }
                             else {
                              out.print("<div class=\"container\" align=\"center\"><div class=\"well  \"><font size=\"4\">Invalid</font></div></div>");
                            }
                             
                            
                             
                             
                        }
                    finally{
                             con.close();
                             
                           }
                        
            }}
          }
        
    %>
        
         <script>
            
           function validate() {
            
            if (myform.email.value === "" && myform.pwd.value === "") {
                    alert("Please provide all details correctly");
                } 
                
                else {
                    if (myform.email.value === "") {
                        alert("Please provide email");
                        document.myform.email.focus();
                    }

                    

                    if (myform.pwd.value === "")
                    {
                        alert("Please enter the password!");
                        document.myform.pwd.focus();
                    }
                    

                } 
            }
        </script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        
    </head>
    <body>
         <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Sign in to continue</h1>
            <div class="account-wall">
                <img class="profile-img" src="images/deepika.jpg"
                    alt="">
                <form name="myform" action="admin.jsp" onsubmit="validate()" method="post">
         
                        <input type="text" name="email" id="email" class="form-control" placeholder="Username" required autofocus/>
                       
                        <br>   <input type="password" name="pwd" id="pwd" class="form-control" placeholder="Password" required/>
                       
                        <br>  <button class="btn btn-lg btn-primary btn-block" name ="login" type="submit">
                    Sign in</button>
                     <label class="checkbox pull-left">

        </form>
    </div>
            
        </div>
    </div>
</div>        
        
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

    
    
    </body>
</html>
