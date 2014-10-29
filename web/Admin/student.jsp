<%-- 
    Document   : staff
    Created on : Oct 16, 2014, 2:15:18 AM
    Author     : Ramkumar
--%>

<%@page import="org.garc.core.Student"%>
<%@page import="java.util.Calendar"%>
<%@page import="org.garc.core.misc"%>
<%@page import="org.garc.core.Faculty"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%
    JSONObject appConfig = misc.getApplicationSettings();
    int max_section = Integer.parseInt(appConfig.get("no_of_section").toString());
    int max_semester = Integer.parseInt(appConfig.get("course_duration").toString()) * 2;
%>
<div class="well">
    <div class="page-header">
        <h5>Garc Users <small>Students</small></h5>
    </div>
    <div class="row">
        <div class="col-sm-2">
            <div class="form-group">
                <input type="text" class="form-control floating-label" placeholder="Student Name">
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-1">
            <div class="form-group">
                <input type="text" class="form-control floating-label" placeholder="Student ID">
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->

        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Batch</span>
                <select class="form-control">
                    <option> - Select -</option>
                    <% for (int i = Calendar.getInstance().get(Calendar.YEAR); i >= Calendar.getInstance().get(Calendar.YEAR) - (max_semester / 2); i--) {%>
                    <option> <%=i%></option>
                    <%}%>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Semester</span>
                <select class="form-control">
                    <option> - Select -</option>
                    <% for (int i = 1; i <= max_semester; i++) {%>
                    <option> <%=i%></option>
                    <%}%>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Section</span>
                <select class="form-control">
                    <option> - Select -</option>
                    <% for (int i = 1; i <= max_section; i++) {%>
                    <option> <%=i%></option>
                    <%}%>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-1">
            <a href="javascript:void(0)"  onclick="updatePassword('${pageContext.request.contextPath}')" class="btn btn-warning  btn-raised" style="margin-top: 0;"> <span class="glyphicon glyphicon-plus"></span> </a>
        </div>
    </div><!-- /.row -->
</div>
<div class="well">

    <div class="btn-toolbar">

        <div class="btn-group btn-danger">
            <a class="btn btn-default">Batch</a>
            <% for (int i = Calendar.getInstance().get(Calendar.YEAR); i > Calendar.getInstance().get(Calendar.YEAR) - (max_semester / 2); i--) {%>
            <a href="javascript:void(0)" class="btn btn-default"><%=i%></a>
            <%}%>

        </div>

        <div class="btn-group btn-info">
            <a class="btn ">Section</a>
            <% for (int i = 1; i <= max_section; i++) {%>
            <a href="javascript:void(0)" class="btn btn-default"><%=misc.toSectionAsString(i)%></a>
            <%}%>
        </div>


    </div>

    <table class="table table-striped table-hover ">
        <thead>
            <tr>
            <tr>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>Login Name</th>

                <th>semester</th>
                <th>section</th>
                <th></th>
            </tr>

        </thead>
        <tbody>
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
            <%  String[] designClass = {" ", " ", "info", "success", "danger", "warning", "active"};
                JSONObject json = Student.getStudentsList();
                int count = Integer.parseInt(json.get("count").toString());

                for (int i = 0; i < count; i++) {
            %>
            <tr class="<%=designClass[i % 7]%>">


                <td><%=getValueByKey(json, "id", i)%></td>
                <td><%=getValueByKey(json, "name", i)%></td>
                <td><%=getValueByKey(json, "login_name", i)%></td>
                <td><%=getValueByKey(json, "semester", i)%></td>
                <td><%=getValueByKey(json, "section", i)%></td>
                <td >

                    <a href="javascript:void(0)" > <span class="glyphicon glyphicon-edit" > </span> </a>
                    <a href="javascript:void(0)" ><span class="glyphicon glyphicon-trash"> </span> </a>
                    <a href="javascript:void(0)" ><span class="glyphicon glyphicon-refresh"></span> </a>

            </tr>
            <%}%>
        </tbody>
    </table>
</div>