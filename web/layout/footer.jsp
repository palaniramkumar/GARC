<%-- 
    Document   : footer
    Created on : Sep 19, 2014, 1:36:41 AM
    Author     : Ramkumar
--%>

<%@page import="org.garc.core.misc"%>
<%@page import="java.util.Calendar"%>
<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <div class="container" >
        <p class="navbar-text" style="color: gray;text-align: center;width: 100%">Visitor Number: <%= new misc().getHitCount(session.isNew()).get("count") %>
                
            | Copyright 2008-<%=Calendar.getInstance().get(Calendar.YEAR)%> GARC</p>
        
    </div>
</nav>