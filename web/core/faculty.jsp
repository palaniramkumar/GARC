<%-- 
    Document   : faculty
    Created on : Oct 10, 2014, 1:25:02 AM
    Author     : Ramkumar
--%>

<%@page import="org.garc.core.Faculty"%>
<%
    if (request.getParameter("action") != null) {
        if (request.getParameter("action").toString().equals("facultyinfo")) {

            out.print(
                    Faculty.getFacultyinfo(request.getParameter("facultyid").toString())
            );
        }
        
    }
        %>