<%-- 
    Document   : header
    Created on : Sep 19, 2014, 1:36:31 AM
    Author     : Ramkumar
--%>

<%@page import="org.json.simple.JSONObject"%>
<link rel='stylesheet prefetch' href='${pageContext.request.contextPath}/css/grid.css'>
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.org.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/material.min.css" rel="stylesheet">
<!--link rel='stylesheet prefetch' href='${pageContext.request.contextPath}/css/flexslider.css'-->
<link rel='stylesheet prefetch' href='${pageContext.request.contextPath}/css/icomoon-uikit-feb.css'>
<script src="${pageContext.request.contextPath}/js/prefixfree.min.js"></script>        
<script src='${pageContext.request.contextPath}/js/jquery.js'></script>
<!--script src='${pageContext.request.contextPath}/js/jquery.flexslider-min.js'></script-->
<script src='${pageContext.request.contextPath}/js/bootstrap.min.js'></script>
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/garc.js"></script>
</head>
<body>

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}">GARC 4.0 <sup>&beta;eta</sup></a>
                <p class="navbar-text navbar-left"><small> for MCA Department</small></p>
            </div>
            <%
                String uri = request.getRequestURI();
                String pageName = uri.substring(uri.lastIndexOf("/") + 1);
            %>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li <%=pageName.equals("") ? "class='active'" : ""%> ><a href="${pageContext.request.contextPath}"> <span class="glyphicon glyphicon-home"></span> Home</a></li>
                    <li <%=pageName.equals("students.jsp") ? "class='active'" : ""%>><a href="${pageContext.request.contextPath}/students.jsp"><span class="glyphicon glyphicon-user"></span> Students</a></li>
                    <li <%=pageName.equals("faculties.jsp") ? "class='active'" : ""%>><a href="${pageContext.request.contextPath}/faculties.jsp"><span class="glyphicon glyphicon-bookmark   "></span> Faculties</a></li>
                    <li <%=pageName.equals("resources.jsp") ? "class='active'" : ""%>><a href="${pageContext.request.contextPath}/resources.jsp"><span class="glyphicon glyphicon-download"></span> Resource</a></li>
                    <!--li <%=pageName.equals("articles.jsp") ? "class='active'" : ""%>><a href="${pageContext.request.contextPath}/articles.jsp"><span class="glyphicon glyphicon-book"></span> Article</a></li-->



                    <% {
                            JSONObject user = null;
                            if (session.getAttribute("user") != null) {
                                user = (JSONObject) session.getAttribute("user");
                            }
                            if (user == null) {
                    %>
                    <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        <%} else {
                        %>
                    <li><a href="${pageContext.request.contextPath}/core/logout.jsp"><span class="glyphicon glyphicon-log-in"></span> <%=user.get("name")%></a></li>
                        <%
                                }
                            }%>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">  <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="about.jsp">About</a></li>
                            <li><a href="contactus.jsp">Contact</a></li>


                            <li class="divider"></li>
                            <li class="dropdown-header">External Links</li>
                            <li><a href="#">Library</a></li>
                            <li><a href="http://ssnunite.com" target="_blank">ssnunite.com</a></li>
                            <li><a href="http://ssn.edu.in" target="_blank">ssn.edu.in</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
