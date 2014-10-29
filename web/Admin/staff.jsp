<%-- 
    Document   : staff
    Created on : Oct 16, 2014, 2:15:18 AM
    Author     : Ramkumar
--%>

<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.garc.core.Faculty"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.garc.core.misc"%>
<div class="well">
    <div class="page-header">
        <h5>Garc Users <small>Faculty</small></h5>
    </div>
    <div class="row">
        <div class="col-sm-2">
            <div class="form-group">
                <input type="text" class="form-control floating-label" placeholder="Faculty Name">
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-1">
            <div class="form-group">
                <input type="text" class="form-control floating-label" placeholder="User Name">
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-1">
            <div class="form-group">
                <input type="text" class="form-control floating-label" placeholder="Qualification">
            </div><!-- /input-group -->
        </div>
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Designation</span>
                <select class="form-control">
                    <option> - Select -</option>
                    <%

                        Set<Map.Entry<String, Integer>> set = misc.facultyType.entrySet();

                        for (Map.Entry<String, Integer> me : set) {
                    %>
                    <option value="<%=me.getValue()%>"> <%=me.getKey()%></option>
                    <%

                        }

                    %>

                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Title</span>
                <select class="form-control">
                    <option value="selectone">Please Select...</option>
                    <option value="Mr.">Mr.</option>
                    <option value="Mrs.">Mrs.</option>
                    <option value="Ms.">Ms.</option>
                    <option value="Dr.">Dr.</option>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Login Type</span>
                <select class="form-control">
                    <option value="selectone">Please Select...</option>
                    <option value="Director">Director</option>
                    <option value="HOD">HOD</option>
                    <option value="Staff">Staff</option>
                    <option value="Office">Office</option>
                    <option value="Library">Library</option>
                    <option value="Library">Lab</option>
                    <option value="Garc">GARC</option>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-1">
            <a href="javascript:void(0)"  onclick="updatePassword('${pageContext.request.contextPath}')" class="btn btn-warning  btn-raised" style="margin-top: 0;"> <span class="glyphicon glyphicon-plus"></span> </a>
        </div>
    </div><!-- /.row -->
</div>
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
<div class="well">
    <table class="table table-striped table-hover ">
        <thead>
            <tr>
                <th>#</th>
                <th>Staff Name</th>
                <th>User Name</th>
                <th>Type</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <%  String[] designClass = {" ", " ", "info", "success", "danger", "warning", "active"};
                JSONObject json = Faculty.getFacultyList();
                int count = Integer.parseInt(json.get("count").toString());

                for (int i = 0; i < count; i++) {
            %>
            <tr class="<%=designClass[i % 7]%>">
                <td><%=i+1%></td>
                <td><%=getValueByKey(json, "name", i)%></td>
                <td><%=getValueByKey(json, "login_name", i)%></td>
                <td><%=getValueByKey(json, "user_type", i)%></td>
                <td >
                    
                        <a href="javascript:void(0)" > <span class="glyphicon glyphicon-edit" > </span> </a>
                        <a href="javascript:void(0)" ><span class="glyphicon glyphicon-trash"> </span> </a>
                        <a href="javascript:void(0)" ><span class="glyphicon glyphicon-refresh"></span> </a>
                           
            </tr>
            <%}%>

        </tbody>
    </table>
</div>