<%-- 
    Document   : index
    Created on : May 22, 2020, 7:37:44 AM
    Author     : DIPLESH
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.SQLException"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap 4 Website Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  </style>
</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0">
  <h1>DOUBT FORUM</h1>
  <p>Here you can ask your Doubt regarding any subject</p> 
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">Admin</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="signup.jsp">Student Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="teacher_signup.jsp">Teacher Login</a>
      </li>  
      <li class="nav-item">
        <a class="nav-link" href="regis.jsp">Register</a>
      </li>  
    </ul>
  </div>  
</nav>

<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-4">
      <h2>About Me</h2>
      <h5>Photo of me:</h5>
      <div class="fakeimg">
          
          
          Region 1
          <br>
          
          <form action="verify_user.jsp">
            
            <button type="submit"> Click Here to Answer a Public Doubt </button>
            
        </form>
          <br>
          <form action="verify_q_user.jsp">
            
            <button type="submit"> Click Here to Ask a Doubt </button>
            
        </form>
      
      
      
      
      </div>
      <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
      <h3>Some Links</h3>
      <p>Lorem ipsum dolor sit ame.</p>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active" href="#">Active</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#">Disabled</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-8">
      <h2>TITLE HEADING</h2>
      <h5>Title description, Dec 7, 2017</h5>
      <div class="fakeimg">
      
          <p>Region 2 Showing All Posted Question</p>
          <%
             // PrintWriter out = response.getWriter();
                    try
                     {
                 try {  
                     Class.forName("com.mysql.jdbc.Driver");
                 } catch (ClassNotFoundException ex) {
                     
                 }
                            Connection con=DriverManager.getConnection(  
                            "jdbc:mysql://localhost:3306/public_answers","root","1234");  
                             PreparedStatement ps=con.prepareStatement("SELECT * FROM public_ques;");
                             ResultSet result=ps.executeQuery();
                             int i=1;
                            while (result.next()) 
                            {
                                   String q_id=result.getString(1);
                                
                                
                                   out.println("\n");
                                   out.println("Q"+i+")");
                                   String q = result.getString(2);
                                   String s = result.getString(3);
                                   out.println(q);
                                   out.println("\n");
                                   out.println(s);
                                   out.println("\n");
                                   out.println("ID: "+q_id);
                                   out.println("\n");
                                   
                                   i++;
                                
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






           %>
          
          
          
      
      
      
      
      
      </div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
      <br>
      <h2>TITLE HEADING</h2>
      <h5>Title description, Sep 2, 2017</h5>
      <div class="fakeimg">
          
          Region 3 Showing Available Answers
          
          <br>
          
          
          
           <%
             // PrintWriter out = response.getWriter();
                    try
                     {
                 try {  
                     Class.forName("com.mysql.jdbc.Driver");
                 } catch (ClassNotFoundException ex) {
                     
                 }
                            Connection con=DriverManager.getConnection(  
                            "jdbc:mysql://localhost:3306/public_answers","root","1234");  //connecting with table
                             
                             
                             PreparedStatement ps=con.prepareStatement("SELECT * FROM public_ques;");
                             ResultSet result=ps.executeQuery();
                             
                             
                             
                             int i=1;
                            while (result.next()) 
                            {
                                   String q_id=result.getString(1);
                                
                                
                                   out.println("\n");
                                   out.println("Q"+i+")");
                                   String q = result.getString(2);
                                   String s = result.getString(3);
                                   out.println(q);
                                   out.println("\n");
                                   out.println(s);
                                   out.println("\n");
                                   out.println("ID: "+q_id);
                                   out.println("\n");
                            
                                    PreparedStatement ps2=con.prepareStatement("SELECT * FROM public_ans where question_id='"+q_id+"';");
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
                                  
                                  
                                  
                                  i++;
                                  
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






           %>
          
      
      
      
      
      
      
      
      
      
      </div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
    </div>
  </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
  <p>Footer</p>
</div>

</body>
</html>