<%-- 
    Document   : coursesetup
    Created on : Oct 17, 2014, 12:36:00 AM
    Author     : Ramkumar
--%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.garc.core.CourseInfo"%>
<%@page import="java.util.Calendar"%>
<%@page import="org.garc.core.misc"%>
<%@page import="org.json.simple.JSONObject"%>
<%
    JSONObject appConfig = misc.getApplicationSettings();
    int max_section = Integer.parseInt(appConfig.get("no_of_section").toString());
    int max_semester = Integer.parseInt(appConfig.get("course_duration").toString()) * 2;
%>
<div class="well">
    <div class="page-header">
        <h5>Course Setup <small>align the current year course</small></h5>
    </div>
    <div class="row">
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Year</span>
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
                <span class="input-group-addon">No. of sections</span>
                <select class="form-control">
                    <option> - Select -</option>
                    <% for (int i = 1; i <= max_section; i++) {%>
                    <option> <%=i%></option>
                    <%}%>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-lg-2">
            <div class="input-group">
                <span class="input-group-addon">Number of Electives</span>
                <select class="form-control">
                    <% for (int i = 0; i <= 20; i++) {%>
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
    <table class="table table-striped table-hover ">
        <thead>
            <tr>
                <th>#</th>
                <th>Year</th>
                <th>Semester</th>
                <th>No Of Sections</th>
                <th>Elective</th>
                <td></td>
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
                JSONObject json = CourseInfo.getCourseInfo();
                int count = Integer.parseInt(json.get("count").toString());

                for (int i = 0; i < count; i++) {
            %>
            <tr class="<%=designClass[i % 7]%>">
                <td><%=i + 1%></td>
                <td><%=getValueByKey(json, "sectioncount", i)%></td>
                <td><%=getValueByKey(json, "year", i)%></td>
                <td><%=getValueByKey(json, "semester", i)%></td>
                <td><%=getValueByKey(json, "no_of_electives", i)%></td>
                <td >

                    <a href="javascript:void(0)" > <span class="glyphicon glyphicon-edit" > </span> </a>
                    <a href="javascript:void(0)" ><span class="glyphicon glyphicon-trash"> </span> </a>
                    <a href="javascript:void(0)" ><span class="glyphicon glyphicon-refresh"></span> </a>

            </tr>
            <%}%>
        
        </tbody>
    </table>
</div>