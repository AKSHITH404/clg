<%-- login_action.jsp --%>
<%
String user = request.getParameter("username");
String theme = request.getParameter("theme");
session.setAttribute("auth_user", user);
Cookie themeCookie = new Cookie("pref_theme", theme);
themeCookie.setMaxAge(30 * 24 * 60 * 60); // 30 days lifetime
themeCookie.setPath("/");
themeCookie.setHttpOnly(true); // Mitigate XSS attacks
themeCookie.setSecure(true); // Enforce HTTPS transmission
response.addCookie(themeCookie);
response.sendRedirect("dashboard.jsp");
%>