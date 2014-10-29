<%-- 
    Document   : staff
    Created on : Oct 16, 2014, 2:15:18 AM
    Author     : Ramkumar
--%>

<%@page import="org.garc.core.Subject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<div class="well">
    <div class="page-header">
        <h5>Garc Users <small>Subjects</small></h5>
    </div>
    <div class="row">
        <div class="col-sm-1">
            <div class="form-group">
                <input type="text" class="form-control floating-label" placeholder="Subject Code">
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-5">
            <div class="form-group">
                <input type="text" class="form-control floating-label" placeholder="Subject Name">
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Semester</span>
                <select class="form-control">
                    <option> - Select -</option>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-1">
            <div class="input-group">
                <span class="input-group-addon"><input type="checkbox"/>Elective</span>
                
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-1">
            <div class="input-group">
                <span class="input-group-addon"> <input type="checkbox"/>Lab</span>
               
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
            <th>ID</th>
            <th>Name</th>
            <th>Semester</th>
            <th>Elective</th>
            <th>Lab</th>
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
                JSONObject json = Subject.getAllSubjectName();
                int count = Integer.parseInt(json.get("count").toString());

                for (int i = 0; i < count; i++) {
            %>
            <tr class="<%=designClass[i % 7]%>">


                <td><%=getValueByKey(json, "subject_id", i)%></td>
                <td><%=getValueByKey(json, "subject_name", i)%></td>
                <td><%=getValueByKey(json, "semester", i)%></td>
                <td><%=getValueByKey(json, "elective", i) %></td>
                <td><%=getValueByKey(json, "lab", i)%></td>
                <td >

                    <a href="javascript:void(0)" > <span class="glyphicon glyphicon-edit" > </span> </a>
                    <a href="javascript:void(0)" ><span class="glyphicon glyphicon-trash"> </span> </a>
                    <a href="javascript:void(0)" ><span class="glyphicon glyphicon-refresh"></span> </a>

            </tr>
        
        <%}%>
        
    </tbody>
</table>
        </div>