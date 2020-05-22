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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Random; 
/**
 *
 * @author KETAN SARODE
 */
public class post_question_serv extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
          PrintWriter out = response.getWriter();
           Random rand = new Random(); 
           String random = Integer.toString(rand.nextInt(1000)); 
            /* TODO output your page here. You may use following sample code. */
            //String teacher_id=request.getParameter("id");
            String ques=request.getParameter("ques");
           
            HttpSession session = request.getSession() ;
            String student_id = (String)session.getAttribute("username");
            String abc="1234";
            int flag=0;
           
                try
                     {
                 try {  
                     Class.forName("com.mysql.jdbc.Driver");
                 } catch (ClassNotFoundException ex) {
                     Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
                 }
                                    Connection con=DriverManager.getConnection(  
                                    "jdbc:mysql://localhost:3306/public_answers","root","1234");  
                                    PreparedStatement stmt=con.prepareStatement("insert into public_ques values(?,?,?)");  
                                    //here studentdb is database name, root is username and password 
                                    stmt.setString(1,random);
                                    stmt.setString(2,ques);//1 specifies the first parameter in the query  
                                    stmt.setString(3,student_id);
                                    //stmt.setString(4,ques);
                                   // stmt.setString(5,"");
                                   
                                   
                                    int i=stmt.executeUpdate();  
                                    System.out.println(i+"  Questions inserted");
                                     response.sendRedirect("index.jsp");
                     
                     }catch(SQLException e)
                     {
                         e.printStackTrace();
                     }
        
   
        
    }

 

}
