/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;
import javax.servlet.RequestDispatcher;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Amit
 */
@WebServlet("/registration")
public class registration extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
      
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
         
        // read form fields
        response.setContentType("text/html");
        String fname = request.getParameter("first_name");
        String lname = request.getParameter("last_name");
        String uname = request.getParameter("username");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        PrintWriter out = response.getWriter();
        
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
                            String sql= "select * from register where email= ?";
                            ps = con.prepareStatement(sql);
                            ps.setString(1,email);
                            
                            
                            rs = ps.executeQuery();
                           
                            if(rs.next()){
                                RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
                                String status="Email Already Exists"; 
                                request.setAttribute("status", status); // set your String value in the attribute
dispatcher.forward( request, response );
                                  
                            }
                            else{
                            query = "insert into register values(?,?,?,?,?)";
                            ps=con.prepareStatement(query);
                            ps.setString(1,fname);
                            ps.setString(2, lname);
                            ps.setString(3, uname);
                            ps.setString(4, email);
                            ps.setString(5,pass);
                            
                            int rps=ps.executeUpdate();
                            
                            if(rps!=0){
                                
                                out.println("<br>Record has been inserted");
                                response.sendRedirect("/login.jsp");
                             }
                             else{
                                out.println("failed to insert the data");
      }
                             
                            
                             
                             
                        }}
                        catch(SQLException e)
                        {
                            System.out.println(e);
                        }
         

                        
    }
}

















