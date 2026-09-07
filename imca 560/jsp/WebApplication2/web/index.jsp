<%-- 
    Document   : index
    Created on : 7 Sep, 2026, 8:47:34 AM
    Author     : SCMS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP calculator</title>
    </head>
    <body>
         <h1> add to number</h1>
         <form action="index.jsp" method ="POST">
             Number1 <input type ="number" name="n1" required> <br>
             Number2 <input type ="number" name="n2" required> <br>
            <input type ="Submit"name ="b1" value="add" >
            <input type ="Submit"name ="b1" value="sub" >
            <input type ="Submit"name ="b1" value="mul" >
            <input type ="Submit"name ="b1" value="div" >
            
        </form>
         <%
             
             String v1= request.getParameter("n1");
             String v2= request.getParameter("n2");
             String v3= request.getParameter("b1");
             
             if(v2 !=null && v1 != null){
                int n1=Integer.parseInt(v1);
                int n2=Integer.parseInt(v2);
                int result=0;
                if(v3.equals("add"))
                    result = n1+n2;
                 else if(v3.equals("sub"))
                    result= n1-n2;
                else if(v3.equals("mul"))
                    result= n1*n2;
                else if(v3.equals("div"))
                    result= n1/n2;
                else
                    result= 0;
                %>
                <p>
                    <%= result %>
                </p>
           <%
                }
           %>
                  
    </body>
   
</html>
