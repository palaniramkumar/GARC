<%-- 
    Document   : subject
    Created on : Oct 11, 2014, 6:03:06 PM
    Author     : Ramkumar
--%>

<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.garc.core.Subject"%>
<%!
    Object getValueByKey(JSONObject json, String key, int i) {
        Object parsedValue = null;

        try {
            parsedValue = ((JSONObject) ((JSONArray) json.get("items")).get(i)).get(key);
        } catch (Exception e) {
            //e.printStackTrace();
            System.out.print(json);
        }
        return parsedValue;
    }
%>
<%
    if (request.getParameter("action") != null) {
        

        if (request.getParameter("action").toString().equals("getalldownloadableresource")) {

        %>
<section class="widget twitter">

    <%
        JSONObject json = Subject.getResourceDownloadList(request.getParameter("subject_id").toString());
        int i = 0;
        for (; json.get("responsecode").equals("200") && (i < Integer.parseInt(json.get("count").toString())); i++) {

            if (i == 0) {
    %>
    <header class="header header-twitter">
        <h3><%=getValueByKey(json, "subject_id", i)%> - <%=getValueByKey(json, "subject_name", i)%> by <%=getValueByKey(json, "staff_name", i)%></h3>
        <div class="background-icon"><small><span class="glyphicon glyphicon-book"></span></small></div>
    </header>

    <div class="list-group" >
        <%}%>
        <div class="list-group-item">
            <div class="row-action-primary">
                <i class="icon-material-folder"></i>
            </div>
            <div class="row-content">
                <div class="least-content"><%=getValueByKey(json, "date", i)%></div>
                <h4 class="list-group-item-heading">Unit <%=getValueByKey(json, "category", i)%> - <%=getValueByKey(json, "title", i)%></h4>
                <p ></p>
                <% for (int j = 0; j < Integer.parseInt(getValueByKey(json, "count", i).toString()); j++) {%>
                <p class="list-group-item-text"><a href="" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-download-alt"></span> <%=((JSONObject) ((JSONArray) getValueByKey(json, "items", i)).get(j)).get("filename")%></a> <span class="label label-warning">For Section <%=((JSONObject) ((JSONArray) getValueByKey(json, "items", i)).get(j)).get("section")%></span></p>
                    <%}%>
            </div>
        </div>
        <div class="list-group-separator"></div>
        <%
            }
            if (i != 0) {
        %>
    </div>
</section>
<%
            } else {
                out.print("No Uploads");
            }
        }

    }

%>
