<%-- 
    Document   : garcsetup
    Created on : Oct 17, 2014, 12:35:49 AM
    Author     : Ramkumar
--%>
<%@page import="org.garc.core.misc"%>
<%@page import="org.json.simple.JSONObject"%>
<%
    JSONObject appConfig = misc.getApplicationSettings();
%>
<form class="form-horizontal well">
    <fieldset>
        <legend>Garc Setup</legend>
        <div class="form-group">
            <label for="inputEmail" class="col-lg-2 control-label">College Name</label>
            <div class="col-lg-10">
                <input type="text" class="form-control" id="inputEmail" placeholder="College Name" value="<%=appConfig.get("college")%>">
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail" class="col-lg-2 control-label">Course Duration</label>
            <div class="col-lg-10">
                <input type="text" class="form-control" id="inputEmail" placeholder="Course Duration" value="<%=appConfig.get("course_duration")%>">
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail" class="col-lg-2 control-label">Department</label>
            <div class="col-lg-10">
                <input type="text" class="form-control" id="inputEmail" placeholder="Department" value="<%=appConfig.get("dept")%>">
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail" class="col-lg-2 control-label">Periods</label>
            <div class="col-lg-10">
                <input type="text" class="form-control" id="inputEmail" placeholder="Periods" value="<%=appConfig.get("max_period")%>">
            </div>
        </div>

        <div class="form-group">
            <label for="inputEmail" class="col-lg-2 control-label">sections</label>
            <div class="col-lg-10">
                <input type="text" class="form-control" id="inputEmail" placeholder="no of section" value="<%=appConfig.get("no_of_section")%>">
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail" class="col-lg-2 control-label">Max Units</label>
            <div class="col-lg-10">
                <input type="text" class="form-control" id="inputEmail" placeholder="max_unit" value="<%=appConfig.get("max_unit")%>">
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail" class="col-lg-2 control-label">max period</label>
            <div class="col-lg-10">
                <input type="text" class="form-control" id="inputEmail" placeholder="max_period" value="<%=appConfig.get("max_period")%>">
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-2 control-label">Download Permissions</label>
            <div class="col-lg-10">
                <div class=" radio-inline">
                    <label>
                        <input type="checkbox" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                        Lock Resource
                    </label>
                </div>
                <div class=" radio-inline">
                    <label>
                        <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                        Lock Software
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
                <button class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </fieldset>
</form>