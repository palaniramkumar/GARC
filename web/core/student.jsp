<%-- 
    Document   : student
    Created on : Sep 27, 2014, 10:00:16 PM
    Author     : Ramkumar
--%>

<%@page import="org.garc.core.Student"%>
<%@page import="org.garc.core.Subject"%>
<%@page import="org.json.simple.JSONObject"%>
<%
    JSONObject user = (JSONObject) session.getAttribute("user");
    Subject subject = new Subject();
    if (request.getParameter("action") != null) {
        if (request.getParameter("action").toString().equals("coursecoverage")) {
            
            out.print(
                 subject.getCourseCoverage(request.getParameter("subjectId").toString(), user.get("section").toString())
            );
        }
        else if (request.getParameter("action").toString().equals("courseoutline")) {
            out.print(
                 subject.getCourseOutline(request.getParameter("subjectId").toString(), user.get("section").toString())
            );
        }
        else if (request.getParameter("action").toString().equals("getCourseProgress")) {
            out.print(
                 subject.getCourseProgress(request.getParameter("subjectId").toString(), user.get("section").toString())
            );
        }
        else if (request.getParameter("action").toString().equals("attendancepie")) {
            out.print(
                 new Student( user.get("id").toString(), user.get("section").toString(),user.get("semester").toString()).getattendanceGraph()
            );
        }
    }
%>