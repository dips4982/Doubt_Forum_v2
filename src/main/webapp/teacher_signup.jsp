<%-- 
    Document   : teacher_signup
    Created on : 10-May-2020, 4:44:27 PM
    Author     : KETAN SARODE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body style="background-color: skyblue">

<h2>Click To Login</h2>


  
  <form  action="Teacher_Signup" method="POST">
      <label for="uname"><b>Teacher-ID</b></label>
      <input type="text" placeholder="Enter User-id" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit" value="Teacher_Signup">Login</button>    
  </form>

</body>
</html>
