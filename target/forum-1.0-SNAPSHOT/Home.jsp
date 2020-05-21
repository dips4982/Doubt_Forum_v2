
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello </h1>
        
        <%
            if(session.getAttribute("username")==null  || session==null)
            {
                response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
                response.setHeader("Progrma","no-cache");
                response.setHeader("Expiers","0");
                response.sendRedirect("signup.jsp");
                
            }
         %>
           <a href="#">VIDEOS</a>
         
           ${username}
           <h1>ASK QUESTION</h1>
           
           
      <form  action="askques" method="POST">
   
         <p>Please fill in this </p>
      
        <label for="id"><b>Faculty ID</b></label>
        <input type="text" placeholder="Enter ID" name="id" required>
        
       <label for="ques"><b>ENTER QUESTION</b></label>
       <input type="text" placeholder="Enter Question" name="ques" required>
       <button type="submit" value="askques">SUBMIT QUESTION</button>
    </form>
           
           
             <form action="showq" method="POST">
                 <label for="showq"><b>CLICK TO SHOW Q&A</b></label>
                <button type="submit" value="showq">Show Q&A</button>
            </form>
           <br>
           
          
           <br>
            <form action="Signout" method="POST">
                <button type="submit" value="Signout">Log out</button>
            </form>
    </body>
</html>