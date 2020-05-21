<%-- 
    Document   : Teacher_Home
    Created on : 10-May-2020, 5:08:16 PM
    Author     : KETAN SARODE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <a href="#">VIDEOS</a>
           ${username}
        <h1>TO SHOW QUESTIONS & ANS </h1>
          <form action="teacher_showq" method="POST">
                 <label for="teacher_showq"><b>CLICK TO SHOW Q&A</b></label>
                <button type="submit" value="teacher_showq">Show Q&A</button>
            </form>
           <br>
           <h1 style="color:red ">TO GIVE ANS </h1>
          <form action="give_ans.jsp" method="POST">
                 <label for="give_ans"><b>CLICK HERE </b></label>
                <button type="submit" value="give_ans.jsp">ANSWER</button>
            </form>
           <br>  
    </body>
</html>
