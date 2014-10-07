<%-- 
    Document   : logout
    Created on : Oct 8, 2014, 12:22:27 AM
    Author     : Ramkumar
--%>

<%
session.removeAttribute("user");
response.sendRedirect("../");
%>