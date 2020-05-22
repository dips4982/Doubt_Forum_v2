<%-- 
    Document   : give_pub_ans
    Created on : May 22, 2020, 4:05:55 AM
    Author     : DIPLESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <p>hello user ${username}</p>
    <body>
        <h1>POST YOUR ANSWER</h1>
        <form action="insert_public_answer" method="POST">
            <p>Posting Answer in Public</p>
              <label for="question_id"><b>ENTER QID OF QUESTION</b></label>
              <input type="text" place  holder="QID" name="question_id" required>
              <br><br>
               <label for="answer"><b>ENTER ANSWER</b></label>
              <input type="text" place  holder="QID" name="answer" required>
                 <label for="add_ans"><b>CLICK TO POST</b></label>
                <button type="submit" value="insert_public_answer">POST</button>
        </form>
           <br>
    </body>
</html>
