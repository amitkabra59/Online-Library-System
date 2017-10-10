<%-- 
    Document   : recents
    Created on : Sep 28, 2017, 5:28:23 PM
    Author     : Amit
--%>

<html>
<head>
  <title></title>
</head>
<body>
<!--  <h1>Another E-Bookstore</h1>
  <h3>Choose Author(s):</h3>-->
 
 
  <%@ page import = "java.sql.*" %>
<% 
     


                          java.sql.Date now = new java.sql.Date(System.currentTimeMillis());
                          Connection con = null;
                          PreparedStatement ps=null;
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
                              
                              query="select * from login ";
                              ps = con.prepareStatement(query);

                              rs=ps.executeQuery();

                           


 
      while (rs.next()) {
        
%>       
<table style="width:60%" >      
    
            <tr>
            <th>Email</th>
            <th>Timestamp</th></tr>
            <tr>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getString("timestamp") %></td>
            
          </tr>
  <%
      } } catch(Exception e){}
  %>
                              
  
        </table>
        <br>
        
      
  
</body>
</html>