<%-- 
    Document   : post_public_question
    Created on : May 22, 2020, 9:56:18 AM
    Author     : DIPLESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form  action="post_question_serv" method="POST">
   
            <p>Please fill in this </p>
        
       <label for="ques"><b>ENTER QUESTION</b></label>
       <input type="text" placeholder="Enter Question" name="ques" required>
       <button type="submit" value="askques">SUBMIT QUESTION</button>
    </form>
    </body>
</html>
