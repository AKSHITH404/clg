<%-- dashboard.jsp --%>
<%
String authUser = (String) session.getAttribute("auth_user");
if (authUser == null) {
	response.sendRedirect("login.jsp");
	return;
}
String currentTheme = "light"; // fallback default
Cookie[] cookies = request.getCookies();
if (cookies != null) {
	for (Cookie c : cookies) {
		if ("pref_theme".equals(c.getName())) {
			currentTheme = c.getValue();
			break;
		}
	}
}
 String t;
if(currentTheme.equals("dark")){
    t="black";
}else{
     t="lightblue";
}
%>
<html>
    <head>
        <title>dashboard</title>
    </head>
    <body>
        <style>
            body{
                background-color:<%= t %>;
            }
        </style>
        <h2> hai <%= authUser%></h2>
    </body>
</html>
