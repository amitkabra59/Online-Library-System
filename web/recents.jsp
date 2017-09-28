<%-- 
    Document   : recents
    Created on : Sep 28, 2017, 5:28:23 PM
    Author     : Amit
--%>

<html>
<head>
  <title>Book Query</title>
</head>
<body>
  <h1>Another E-Bookstore</h1>
  <h3>Choose Author(s):</h3>
 
 
  <%@ page import = "java.sql.*" %>
<% 
     


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

                              query="select * from login where email=? and timestamp=?";
                              

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
              
            

      %>
      <hr>
      <form method="get" action="order.jsp">
        <table border=1 cellpadding=5>
          <tr>
            <th>Order</th>
            <th>Author</th>
            <th>Title</th>
            <th>Price</th>
            <th>Qty</th>
          </tr>
  <%
      while (rset.next()) {
        int id = rset.getInt("id");
  %>
          <tr>
            <td><input type="checkbox" name="id" value="<%= id %>"></td>
            <td><%= rset.getString("author") %></td>
            <td><%= rset.getString("title") %></td>
            <td>$<%= rset.getInt("price") %></td>
            <td><%= rset.getInt("qty") %></td>
          </tr>
  <%
      }
  %>
        </table>
        <br>
        <input type="submit" value="Order">
        <input type="reset" value="Clear">
      </form>
      <a href="<%= request.getRequestURI() %>"><h3>Back</h3></a>
  <%
      rset.close();
      stmt.close();
      conn.close();
    }
  %>
</body>
</html>