<%-- 
    Document   : registration
    Created on : Apr 24, 2020, 4:32:42 PM
    Author     : adesh
--%>

<%-- 
    Tasks to be performed:
    Designing
    Bootstrap and css
    Form validation

--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
 

      <form  action="reg" method="POST">
   
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      
      <label for="name"><b>Name</b></label>
      <input type="text" placeholder="Enter Name" name="name" required>
       
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" required>
      
       <label for="id"><b>UserID</b></label>
      <input type="text" place  holder="Enter UserID" name="id" required>
      
      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>

       <label for="cnfpsw"><b>Confirm Password</b></label>
      <input type="password" placeholder="Enter Password" name="cnfpsw" required>
      
      <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label>

      <p>By creating an account you agree to Doubt Forum's <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
      <button type="submit" value="">Sign Up</button>
    </form>
    </body>
</html>
