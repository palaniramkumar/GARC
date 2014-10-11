<%-- 
    Document   : faculties
    Created on : Sep 19, 2014, 1:34:42 AM
    Author     : Ramkumar
--%>
<%@page import="org.garc.core.Faculty"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <title>Welcome Garc 4.0</title>
    <%@ include file="layout/header.jsp" %>
    <div class="container">
        <%!
            String getValueByKey(JSONObject json, String key, int i) {
                String parsedValue = "";

                try {
                    parsedValue = ((JSONObject) ((JSONArray) json.get("items")).get(i)).get(key).toString();
                } catch (Exception e) {
                    //e.printStackTrace();
                    System.out.print(json);
                }
                return parsedValue;
            }
        %>
         <div class="row">
        <% 
        
            JSONObject json = Faculty.getFacultyList();
            int count = Integer.parseInt(json.get("count").toString());

            for (int i = 0; i < count; i++) {
        %>
       
        <ul class="thumbnails list-unstyled" >
                    <li class=" col-md-3  ">
                        <div class="well" style="height: 300px;">
                           
                            <center>
                                <a href="#aboutModal" data-toggle="modal" data-target="#myModal"><img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRbezqZpEuwGSvitKy3wrwnth5kysKdRqBW54cAszm_wiutku3R" name="aboutme" width="140" height="140" class="img-circle dp"></a>
                                <h3><%=getValueByKey(json, "name", i)%></h3>
                                <h5><%=getValueByKey(json, "designation", i)%></h5>
                                <h5><%=getValueByKey(json, "subjects_handled", i)%></h5>
                                <h5><%=getValueByKey(json, "mailid", i)%></h5>

                            </center>
                        </div>
                    </li>
        </ul>
        <%}%>
    </div>
     <%@ include file="layout/footer.jsp" %>
    </body>

</html>