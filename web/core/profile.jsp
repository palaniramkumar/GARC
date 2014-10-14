<%-- 
    Document   : profile
    Created on : Oct 14, 2014, 12:21:15 AM
    Author     : Ramkumar
--%>



<%@page import="java.util.Map"%>
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
        if (request.getParameter("action").toString().equals("updateprofile")) {
            JSONObject json = (JSONObject) session.getAttribute("user");
            Map<String, String[]> parameters = request.getParameterMap();
            for (String parameter : parameters.keySet()) {
                if (!parameter.equalsIgnoreCase("action")) {
                    String[] values = parameters.get(parameter);
                        out.print(
                                UserInfo.updateUserField(json.get("type").toString(), parameter,values[0] , json.get("id").toString())
                        );
                        out.print(values[0]);

                }
            }

        }
    }


%>