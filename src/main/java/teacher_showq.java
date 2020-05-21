/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static jdk.nashorn.internal.runtime.Debug.id;

/**
 *
 * @author KETAN SARODE
 */
public class teacher_showq extends HttpServlet {

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
            HttpSession session = request.getSession() ;
            String id = (String)session.getAttribute("username");
            PrintWriter out = response.getWriter();
            try
                     {
                 try {  
                     Class.forName("com.mysql.jdbc.Driver");
                 } catch (ClassNotFoundException ex) {
                     Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
                 }
                                    Connection con=DriverManager.getConnection(  
                                    "jdbc:mysql://localhost:3306/questions","root","1234");  
                                     PreparedStatement ps=con.prepareStatement("SELECT * FROM qdata;");
                                     ResultSet result=ps.executeQuery();
                                     int i=1;
                            while (result.next()) 
                            {
                              String teacher_id=result.getString(3);
                                
                                
                                if(teacher_id.equals(id))
                                { 
                                   String qid = result.getString(1);
                                   out.println("Q"+i+")"+qid+"--");
                                  
                                   String q = result.getString(4);
                                   String a = result.getString(5);
                                   
                                   out.println(q);
                                   out.println("<br>");
                                   out.println(a);
                                   out.println("<br>");
                                   i++;
                                }
                            } 
			      //;
                                   // PreparedStatement stmt=con.prepareStatement("insert into qdata values(?,?,?,?)");  
                                    //here studentdb is database name, root is username and password 
//                                    stmt.setString(1,student_id);//1 specifies the first parameter in the query  
//                                    stmt.setString(2,teacher_id);
//                                    stmt.setString(3,ques);
//                                    stmt.setString(4," ");
                                   
                                //    int i=stmt.executeUpdate();  
                                    System.out.println("Questions Showed");
                     
                     }catch(SQLException e)
                     {
                         e.printStackTrace();
                     }
        
        
    }


}
