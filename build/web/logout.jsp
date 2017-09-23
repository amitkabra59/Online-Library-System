<%-- 
    Document   : logout
    Created on : Sep 23, 2017, 2:49:06 PM
    Author     : Amit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <% 
        session =request.getSession();
        session.invalidate();
        response.sendRedirect("index.html"); %>
    </body>
</html>
