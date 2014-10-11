<%-- 
    Document   : footer
    Created on : Sep 19, 2014, 1:36:41 AM
    Author     : Ramkumar
--%>

<%@page import="org.garc.core.misc"%>
<%@page import="java.util.Calendar"%>
<nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
    <div class="container" >
        <p class="navbar-text" style="text-align: center;width: 100%">Visitor Number: <%= new misc().getHitCount(session.isNew()).get("count") %>
                
            | &copy; <%=Calendar.getInstance().get(Calendar.YEAR)%> GARC Team</p>
        
    </div>
</nav>