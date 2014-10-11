<%-- 
    Document   : resources
    Created on : Sep 19, 2014, 1:34:52 AM
    Author     : Ramkumar
--%>

<%@page import="org.garc.core.Subject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Welcome Garc 4.0</title>
        <%@ include file="layout/header.jsp" %>
    <div class="container page">
        <div class="row">
            <div class="list-group col-xs-11">
                <div class="list-group-item ">
                    <div class="row-picture">
                        <h1><span class="glyphicon glyphicon-book"></span></h1>
                    </div>
                    <div class="row-content">
                        <h4 class="list-group-item-heading">Subject Name</h4>
                        <select class="form-control" id="subject">
                            
                            <%
                                String subject_id = "0";
                                if (request.getParameter("subjectid") != null) {
                                    subject_id = request.getParameter("subjectid").toString();
                                }
                                JSONObject json = Subject.getAllSubjectName();
                                %><option value = "<%=subject_id%>">Please Select</option><%
                                for (int i = 0; i < Integer.parseInt(json.get("count").toString()); i++) {
                                    JSONObject tuple = ((JSONObject) ((JSONArray) json.get("items")).get(i));
                            %>
                            <option value="<%=tuple.get("subject_id")%>"><%=tuple.get("subject_name")%></option>
                            <%}%>                            
                        </select>
                    </div>
                </div>

                <div class="list-group-separator"></div>
            </div>

            <div class="list-group col-xs-1">
                <a href="javascript:void(0)"  onclick="getDownloadableResource('${pageContext.request.contextPath}', $('#subject').val())" class="btn btn-info btn-fab btn-raised"> <span class="glyphicon glyphicon-list"></span> </a>
            </div>
        </div>
        <div class="alert alert-dismissable alert-warning">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <h4>Warning!</h4>
            <p>Please select any of the above option to  <a href="javascript:void(0)" class="alert-link">download </a> the resource.</p>
        </div>
        <div class="well" id="response" style="padding: 0px">

            <p class="well" >Choose your subject</p>

        </div>

    </div>
    <%@ include file="layout/footer.jsp" %>
    <script>
        //        String subject_id ="0";
        getDownloadableResource('${pageContext.request.contextPath}', $('#subject').val())
    </script>
</body>

</html>