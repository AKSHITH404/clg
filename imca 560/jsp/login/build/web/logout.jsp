<%-- logout.jsp --%>
<%
session.invalidate();
Cookie killCookie = new Cookie("pref_theme", "");
killCookie.setMaxAge(0);
killCookie.setPath("/"); 
response.addCookie(killCookie);
response.sendRedirect("login.jsp");
%>