<%-- 
    Document   : student
    Created on : Sep 27, 2014, 10:00:16 PM
    Author     : Ramkumar
--%>

<%@page import="org.garc.oauth.UserInfo"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormatSymbols"%>
<%@page import="org.garc.core.Student"%>
<%@page import="org.garc.core.Subject"%>
<%@page import="org.json.simple.JSONObject"%>
<%!
    private JSONObject parseJson(JSONObject json, int day, int hour) {
        try {

            Iterator i = ((JSONArray) json.get("items")).iterator();
            // take each value from the json array separately
            while (i.hasNext()) {
                JSONObject innerObj = (JSONObject) i.next();

                if (innerObj.get("day").equals(day + "")) {

                    Iterator j = ((JSONArray) innerObj.get("daylist")).iterator();
                    while (j.hasNext()) {
                        JSONObject nestedObj = (JSONObject) j.next();
                        if (nestedObj.get("hour").equals(hour + "")) {
                            return nestedObj;
                        }
                    }
                    break;
                }
            }

        } catch (Exception e) {
            System.out.print(json);
        }
        return null;
    }
%>
<%
    JSONObject user = (JSONObject) session.getAttribute("user");
    Subject subject = new Subject();
    if (request.getParameter("action") != null) {
        if (request.getParameter("action").toString().equals("coursecoverage")) {

            out.print(
                    subject.getCourseCoverage(request.getParameter("subjectId").toString(), user.get("section").toString())
            );
        } else if (request.getParameter("action").toString().equals("courseoutline")) {
            out.print(
                    subject.getCourseOutline(request.getParameter("subjectId").toString(), user.get("section").toString())
            );
        } else if (request.getParameter("action").toString().equals("getCourseProgress")) {
            out.print(
                    subject.getCourseProgress(request.getParameter("subjectId").toString(), user.get("section").toString())
            );
        } else if (request.getParameter("action").toString().equals("attendancepie")) {
            out.print(
                    new Student(user.get("id").toString(), user.get("section").toString(), user.get("semester").toString()).getattendanceGraph()
            );
        } else if (request.getParameter("action").toString().equals("detailedattendance")) {


            /*constructing in table format*/
            int monthInNumber = request.getParameter("month")==null || request.getParameter("month").equals("") 
                    ?Calendar.getInstance().get(Calendar.MONTH):Integer.parseInt(request.getParameter("month"));
            DateFormatSymbols dfs = new DateFormatSymbols();
            String[] months = dfs.getMonths();
            String[] days = dfs.getWeekdays();
            Calendar calendar = Calendar.getInstance();
            calendar.set(Calendar.MONTH, monthInNumber);
            int maxDay = calendar.getActualMaximum(Calendar.DATE);
            JSONObject json = new Student(user.get("id").toString(), user.get("section").toString(), user.get("semester").toString()).getDetailedAttendance(monthInNumber +1+ "");
%>

<table class="table table-bordered table-striped ">
    <thead>
    <th><select onchange="getStudentReport('${pageContext.request.contextPath}', 'detailedattendance', $(this).val())">
    <% for (int i = 0; i < months.length; i++) {%>
    <option value="<%=i%>" <%=monthInNumber == i ? "selected":""%> ><%=months[i]%></option>
    <%}%>
</select></th>
        <%for (int i = 1; i <= maxDay; i++) {
        %><th><%=i%></th><%
            }
        %>
</thead>
<%
    for (int i = 2; i <= 7; i++) {
%><tr ><td><%=i-1%> Period</td><%
    for (int j = 1; j <= maxDay; j++) {
        JSONObject finder = parseJson(json, j, i - 1);
        if (finder != null) {
%><td data-toggle="tooltip" data-placement="top" data-container="body" title="<%=finder.get("subject_name")%> by <%=finder.get("staff_name")%>"  class="<%=finder.get("ab_type").equals("A")?"danger":""%>"><%=finder.get("ab_type")%></td><%
        }
        else
        {
            %><td>-</td><%
        }
    }
    %></tr><%
        }
    %>
</table>
<%
        }
    }
%>