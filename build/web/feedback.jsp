<%-- 
    Document   : feedback
    Created on : Sep 29, 2017, 9:12:54 AM
    Author     : Amit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">

    </head>
    <body>
        <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" name='name'>
  </div>
            <div class="form-group">
    <label for="email">email</label>
    <input type="text" class="form-control" name='email' id="email">
  </div>
        <div class="form-group">
            <label for="feedback">Feedback here</label>
            <textarea rows="5" cols="50"></textarea>
        </div>
    </body>
</html>
