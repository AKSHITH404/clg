<%-- 
    Document   : index
    Created on : Sep 18, 2026, 9:42:38 AM
    Author     : SCMS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>email</th>
            </tr>
        <%
            String url="jdbc:mysql://localhost:3306/testdb?sslMode=DISABLED";
            String user ="root";
            String password ="windows";
            Connection con = null;
            Statement stmt = null;
            ResultSet rs=null;
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                con=DriverManager.getConnection(url,user,password);
                stmt=con.createStatement();
                rs=stmt.executeQuery("select* from users");
                while (rs.next()){
        %>
        <tr>
            <td>
                <%= rs.getInt("id")%>
            </td>
            <td>
                <%= rs.getString("name")%>
            </td>
            <td>
                <%= rs.getString("email")%>
            </td>
        </tr>
        <%
                }
            }catch(SQLException e){
                out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
            }finally{
                if (rs != null) try { rs.close(); } catch (Exception e) {}
                if (stmt != null) try { stmt.close(); } catch (Exception e) {}
                if (con != null) try { con.close(); } catch (Exception e) {}
            }
        %>
        </table>
    </body>
</html>
