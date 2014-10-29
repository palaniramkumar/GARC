<%-- 
    Document   : assignElectiveStudents
    Created on : Oct 17, 2014, 1:06:53 AM
    Author     : Ramkumar
--%>

<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.garc.core.Subject"%>
<%@page import="org.garc.core.misc"%>
<%@page import="org.json.simple.JSONObject"%>
<%
    JSONObject appConfig = misc.getApplicationSettings();
    int max_semester = Integer.parseInt(appConfig.get("course_duration").toString()) * 2;
%>
<%@page import="java.util.Calendar"%>
<div class="well">
    <div class="page-header">
        <h5>Assign <small>Elective Students</small></h5>
    </div>
    <div class="row">

        <div class="col-sm-5">
            <div class="input-group">
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
                    JSONObject json = Subject.getAllSubjectName();
                    int count = Integer.parseInt(json.get("count").toString());


                %>
                <span class="input-group-addon">Elective Subject</span>
                <select class="form-control">
                    <option> - Select -</option>
                    <%                        for (int i = 0; i < count; i++) {
                            if (getValueByKey(json, "elective", i).equalsIgnoreCase("YES")) {
                                continue;
                            }
                    %><option value="<%=getValueByKey(json, "subject_id", i)%>"> <%=getValueByKey(json, "subject_id", i)%> - <%=getValueByKey(json, "subject_name", i)%></option><%

                        }%>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
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
        <div class="col-sm-1">
            <a href="javascript:void(0)"  onclick="updatePassword('${pageContext.request.contextPath}')" class="btn btn-warning  btn-raised" style="margin-top: 0;"> <span class="glyphicon glyphicon-expand">Fetch</span> </a>
        </div>
    </div><!-- /.row -->
</div>

<div class="row">

    <div class="col-sm-6 ">
        <div class="well">
            <div class="page-header">
                <h5>Unassigned <small>Available Elective Students </small></h5>
            </div>
            <a href="javascript:void(0)"  onclick="updatePassword('${pageContext.request.contextPath}')" class="btn btn-sm btn-warning  btn-raised" style="margin-top: 0;"> <span class="glyphicon glyphicon-saved">Save</span> </a>
            <table class="table table-striped table-hover ">
                <thead>
                    <tr>
                        <th>Student ID</th>
                        <th>Name</th>
                        <th>Semester</th>
                        <th>Section</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                    <tr class="info">
                        <td>3</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                    <tr class="success">
                        <td>4</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                    <tr class="danger">
                        <td>5</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                    <tr class="warning">
                        <td>6</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                    <tr class="active">
                        <td>7</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                </tbody>
            </table>
            <a href="javascript:void(0)"  onclick="updatePassword('${pageContext.request.contextPath}')" class="btn btn-sm btn-warning  btn-raised" style="margin-top: 0;"> <span class="glyphicon glyphicon-saved">Save</span> </a>
        </div>
    </div>

    <div class="col-sm-6 " >
        <div class="well">
            <div class="page-header">
                <h5>Assigned <small>You can Delete the selected elective Students</small></h5>
            </div>
            <a href="javascript:void(0)"  onclick="updatePassword('${pageContext.request.contextPath}')" class="btn btn-sm btn-warning  btn-raised" style="margin-top: 0;"> <span class="glyphicon glyphicon-trash">Delete</span> </a>
            <table class="table table-striped table-hover ">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Column heading</th>
                        <th>Column heading</th>
                        <th>Column heading</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                    <tr class="info">
                        <td>3</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                    <tr class="success">
                        <td>4</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                    <tr class="danger">
                        <td>5</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                    <tr class="warning">
                        <td>6</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                    <tr class="active">
                        <td>7</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                </tbody>
            </table>
            <a href="javascript:void(0)"  onclick="updatePassword('${pageContext.request.contextPath}')" class="btn btn-sm btn-warning  btn-raised" style="margin-top: 0;"> <span class="glyphicon glyphicon-trash">Delete</span> </a>
        </div>
    </div>
</div>
