<%-- 
    Document   : demo
    Created on : Oct 9, 2014, 12:23:39 AM
    Author     : Ramkumar
--%>

<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormatSymbols"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
      /*constructing in table format*/
            int monthInNumber = 9;
            DateFormatSymbols dfs = new DateFormatSymbols();
            String[] months = dfs.getMonths();
            String[] days = dfs.getWeekdays();
            Calendar calendar = Calendar.getInstance();
            calendar.set(Calendar.MONTH, monthInNumber);
            int maxDay = calendar.getActualMaximum(Calendar.DATE);
            String text = "";
            JSONObject json= null;
            out.print(json);
            
%>
<table class="table table-bordered table-hover ">
    <thead>
    <th>Day/<%=months[monthInNumber]%></th>
        <%for (int i = 1; i <= maxDay; i++) {
        %><th><%=i%></th><%
            }
        %>
</thead>
<%
    for (int i = 2; i <= 7; i++) {
%><tr><td><%=days[i]%></td><%
    for (int j = 0; j <= maxDay; j++) {
    %><td>P</td><%
        }
    %></tr><%
        }
    %>
<tr>

</tr>
</table>
<%
        }
%>