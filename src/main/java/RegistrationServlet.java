/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
// To be Done:
//Redirect to login page or landing page after registration is successfull





import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KETAN SARODE
 */
public class RegistrationServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
             PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String id=request.getParameter("id");
            String password=request.getParameter("psw");
            String abc="1234";
            int flag=0;
            out.println("Welcome  - " + name);
                try
                     {
                 try {  
                     Class.forName("com.mysql.jdbc.Driver");
                 } catch (ClassNotFoundException ex) {
                     Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
                 }
                                    Connection con=DriverManager.getConnection(  
                                    "jdbc:mysql://localhost:3306/studentdata","root","1234");  
                                    PreparedStatement stmt=con.prepareStatement("insert into stdata values(?,?,?,?)");  
                                    //here studentdb is database name, root is username and password 
                                    stmt.setString(1,name);//1 specifies the first parameter in the query  
                                    stmt.setString(2,email);
                                    stmt.setString(3,id);
                                    stmt.setString(4,password);
                                   
                                    int i=stmt.executeUpdate();  
                                    System.out.println(i+" records inserted");
                                    
                                    request.setAttribute("name",name);
                                    request.getRequestDispatcher("regis_success.jsp").forward(request, response); 
                                    
                                    response.sendRedirect("regis_success.jsp");
                                    
                     
                     }catch(SQLException e)
                     {
                         e.printStackTrace();
                     }
             // C:\Users\KETAN SARODE\.m2\repository\mysql\mysql-connector-java\8.0.19\mysql-connector-java-8.0.19.jar
                }
                
            
        }
    
