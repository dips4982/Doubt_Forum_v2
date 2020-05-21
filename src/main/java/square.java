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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import javax.servlet.annotation.WebServlet;
/**
 *
 * @author KETAN SARODE
 */
//@WebServlet("/sq")
public class square extends HttpServlet {


 
   public void service(HttpServletRequest request , HttpServletResponse response) throws IOException
   {    
         PrintWriter out = response.getWriter();
         HttpSession session = request.getSession() ;
            int z = (int) session.getAttribute("k");
            //COOKIE CONCEPT
            //int z = (int) req.getAttribute("k");
            z= z*z ;
            out.println("Square is -"+z);
            ServletContext ctx = getServletContext();
            String str = ctx.getInitParameter("name");
             out.println("\n"+str);
        }
    }

