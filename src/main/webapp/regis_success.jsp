<%-- 
    Document   : regis_success
    Created on : May 21, 2020, 6:56:24 PM
    Author     : DIPLESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Succcessfull Registration</title>
    </head>
    <body>
        <%String name = (String)request.getAttribute("name"); %>
        
        <h1>Hello <%= name%> </h1>
        
        
        <form action="signup.jsp">
            
            <button type="submit"> Click Here to Login </button>
            
        </form>
        
        //To go to landing page
        
        
    </body>
</html>
