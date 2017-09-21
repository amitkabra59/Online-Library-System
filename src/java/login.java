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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
 @WebServlet("/login")
public class login extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
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
                            String sql= "select * from register where email= ? and password= ? ";
                            
                            ps = con.prepareStatement(sql);
                            ps.setString(1,email);
                            ps.setString(2,pass);
                            rs = ps.executeQuery();
                            
                          while(rs.next()){ 
                          
                            String em= rs.getString(4);
                            String pa=rs.getString(5);
                            if(!(email.equals(em)) || !(pass.equals(pa))){
                                out.print("Invalid Email or Password");
                            }
                            else
                            {
                            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                            String status="Success"; 
                            request.setAttribute("status", status); // set your String value in the attribute
                            dispatcher.forward( request, response );
                          } 
                          }
                        
                        } 
                  catch(SQLException e)
                        {
                            System.out.println(e);
                        }
        
    }


}
