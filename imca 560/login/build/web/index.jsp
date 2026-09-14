<%-- 
    Document   : index
    Created on : 14 Sep, 2026, 3:27:01 AM
    Author     : SCMS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP login</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2></h2>
        <form action="login_action.jsp" method ="POST">
            username <input type ="text"name ="username"  ><br>
            theme <input type ="radio"name ="theme" value="dark" >dark
            <input type ="radio"name ="theme" value="light" >light
            <input type ="Submit"name ="b1" value="submit" >  
        </form>
    </body>
</html>
