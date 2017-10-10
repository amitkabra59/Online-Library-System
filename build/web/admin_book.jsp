<%-- 
    Document   : admin_book
    Created on : Sep 28, 2017, 7:30:57 PM
    Author     : Amit
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <% 
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String author = request.getParameter("author");
        String publisher = request.getParameter("publisher");
        String edition = request.getParameter("edition");
        String isbn = request.getParameter("isbn");
        String image=request.getParameter("image");
        
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
                            String sql= "insert into books values(?,?,?,?,?,?,?)";
                            
                            ps = con.prepareStatement(sql);
                            ps.setString(1,id);
                            ps.setString(2,name);
                            ps.setString(3,author);
                            ps.setString(4,publisher);
                            ps.setString(6,isbn);
                            ps.setString(5, edition);
                            
                            String path1="C:/Users/i_lovedeepika/Documents/NetBeansProjects/Agile/web/images/"+image;
                            
                            out.print(image);
                            
                            File file = new File(path1);
                            int s=(int)file.length();
                            InputStream fis=new FileInputStream(file);
                            out.print("Hi");
                            ps.setBinaryStream(7,fis,s);
                            out.print("Hi");
                            
                            
           
                            int k=ps.executeUpdate();
                            if(k!=0)
                            {
                                out.println("inserted sucessfully");
                            } 
                            else{
                        
                                out.println("failed to insert the data");
                            }
                             
                            
                             
                             
                        }
                        catch(Exception e)
                        {
                            System.out.println(e);
                        }
         
                        
     %>
    </head>
    <body>
        <form method="post" action="admin_book.jsp">
  <div class="form-group">
    <label for="id">Book ID</label>
    <input type="text" class="form-control" name='id' id="id">
  </div>
  <div class="form-group">
    <label for="name">Book Name</label>
    <input type="text" class="form-control" id="name" name='name'>
  </div>
            <div class="form-group">
    <label for="author">Author</label>
    <input type="text" class="form-control" name='author' id="author">
  </div>
  <div class="form-group">
    <label for="publisher">Publisher</label>
    <input type="text" class="form-control" id="publisher" name='publisher'>
  </div>
  <div class="form-group">
    <label for="edition">Edition</label>
    <input type="text" class="form-control" name='edition' id="edition">
  </div>
  <div class="form-group">
    <label for="isbn">ISBN </label>
    <input type="text" class="form-control" id="isbn" name='isbn'>
  </div>      
  <div>         
   <label for="image">Image:</label>
   <input type="file" name="image" id="image"/>
  </div>
  <button type="submit" name="butt" class="btn btn-default">Submit</button>
</form>
<!-- Latest compiled and minified JavaScript -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    </body>
</html>