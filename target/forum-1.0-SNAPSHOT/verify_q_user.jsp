<%-- 
    Document   : verify_user
    Created on : May 22, 2020, 4:12:31 AM
    Author     : DIPLESH
--%>


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   

<h2>Click To Login before posting a Doubt</h2>

  
  <form  action="signup_public_ques" method="POST">
      
      <label for="uname"><b>User-ID</b></label>
      <input type="text" placeholder="Enter User-id" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit" value="signup">Login</button>    
  </form>



