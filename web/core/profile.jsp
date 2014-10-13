<%-- 
    Document   : profile
    Created on : Oct 14, 2014, 12:21:15 AM
    Author     : Ramkumar
--%>



<%@page import="org.garc.core.misc"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.garc.oauth.UserInfo"%>
<%
    if (request.getParameter("action") != null) {
        if (request.getParameter("action").toString().equals("changepassword")) {
            JSONObject json = (JSONObject) session.getAttribute("user");
            String password = request.getParameter("password").toString();           
            out.print(
                    UserInfo.updateUserField(json.get("type").toString(), "pass", misc.MySQLPassword(password), json.get("id").toString())
            );
        }
    }
        
        %>