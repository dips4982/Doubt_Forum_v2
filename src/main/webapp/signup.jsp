<%-- 
    Document   : signup
    Created on : 30-Apr-2020, 11:28:04 PM
    Author     : KETAN SARODE
--%>



//Tasks to be done:

//Validation(not that Necessary)
//Designing

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body style="background-color: peachpuff">

<h2>Click To Login</h2>


  
  <form  action="signup" method="POST">
      <label for="uname"><b>User-ID</b></label>
      <input type="text" placeholder="Enter User-id" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit" value="signup">Login</button>    
  </form>

</body>
</html>
