<%-- 
    Document   : students
    Created on : Sep 19, 2014, 1:34:33 AM
    Author     : Ramkumar
--%>

<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.garc.core.Student"%>
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
        
            JSONObject json = Student.getStudentsList();
            int count = Integer.parseInt(json.get("count").toString());

            for (int i = 0; i < count; i++) {
        %>
       
        <div class="col-lg-4" style="height: 150px;">
                <div class="media ">
                    <a class="pull-left" href="#">
                        <img class="media-object dp img-circle" src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRbezqZpEuwGSvitKy3wrwnth5kysKdRqBW54cAszm_wiutku3R" style="width: 100px;height:100px;">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading"><%=getValueByKey(json, "name", i)%></h4>
                        <h5><%=getValueByKey(json, "id", i)%></h5>
                        <hr style="margin:8px auto">

                        <span class="label label-default">Batch <%=getValueByKey(json, "batch", i)%></span>
                        <span class="label label-default">Semester <%=getValueByKey(json, "semester", i)%></span>
                        <span class="label label-info"><%=getValueByKey(json, "section", i)%></span>
                    </div>
                </div>

            </div>
            <%}%>



        </div>
    </div>
    <%@ include file="layout/footer.jsp" %>
    <script type="text/javascript">
        $(function() {

            $(".dropdown-menu li a").click(function() {

                $(".btn:first-child").text($(this).text());
                $(".btn:first-child").val($(this).text());

            });

        });

    </script>
</body>

</html>