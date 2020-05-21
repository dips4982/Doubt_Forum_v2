<%-- 
    Document   : give_ans
    Created on : 10-May-2020, 10:33:20 PM
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
        <h1>POST YOUR ANSWER</h1>
        <form action="add_ans" method="POST">
              <label for="question_id"><b>ENTER QID OF QUESTION</b></label>
              <input type="text" place  holder="QID" name="question_id" required>
              <br><br>
               <label for="answer"><b>ENTER ANSWER</b></label>
              <input type="text" place  holder="QID" name="answer" required>
                 <label for="add_ans"><b>CLICK TO POST</b></label>
                <button type="submit" value="add_ans">POST</button>
        </form>
           <br>
    </body>
</html>
