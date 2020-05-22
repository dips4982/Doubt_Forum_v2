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
public class showq extends HttpServlet {

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
                              String student_id=result.getString(2);
                                
                                
                                if(student_id.equals(id))
                                {  
                                   out.println("Q"+i+")");
                                   String q = result.getString(4);
                                   String a = result.getString(5);
                                   out.println(q);
                                   out.println("\n");
                                   out.println(a);
                                   out.println("\n");
                                   i++;
                                }
                            } 
                            
                            out.println("Questions Asked Publicly");
                            
                            try
                     {
                 try {  
                     Class.forName("com.mysql.jdbc.Driver");
                 } catch (ClassNotFoundException ex) {
                     
                 }
                            Connection con2=DriverManager.getConnection(  
                            "jdbc:mysql://localhost:3306/public_answers","root","1234");  //connecting with table
                             
                             
                             PreparedStatement ps1=con2.prepareStatement("SELECT * FROM public_ques where student_id='"+id+"';");
                             ResultSet result1=ps1.executeQuery();
                             
                             
                             
                            int k=1;
                            while (result1.next()) 
                            {
                                   String q_id=result1.getString(1);
                                
                                
                                   out.println("\n");
                                   out.println("Q"+k+")");
                                   String question = result1.getString(2);
                                 //  String s = result1.getString(3);
                                   out.println(question);
                                   out.println("\n");
                                  // out.println(s);
                                   out.println("\n");
                                   out.println("ID: "+q_id);
                                   out.println("\n");
                            
                                    PreparedStatement ps2=con2.prepareStatement("SELECT * FROM public_ans where question_id='"+q_id+"';");
                                    ResultSet result2=ps2.executeQuery();
                                    
                                   int j=1;
                                   while(result2.next())
                                   {
                                   
           
                                        String q_id1=result2.getString(1);


                                        out.println("\n");
                                        out.println("Ans"+j+")");
                                        String a1 = result2.getString(2);
                                        String s1 = result2.getString(3);
                                        //out.println("ID: "+q_id1);
                                        out.println("\n");
                                        out.println(a1);
                                        out.println("\n");
                                        out.println(s1);
                                        out.println("\n");

                                        j++;
                                  }
                                  
                                  
                                  
                                  k++;
                                  
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
