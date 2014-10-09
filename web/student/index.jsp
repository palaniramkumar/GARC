<%-- 
    Document   : index
    Created on : Sep 21, 2014, 3:50:33 PM
    Author     : Ramkumar
--%>

<%@page import="org.garc.core.Subject"%>
<%@page import="org.garc.core.Student"%>
<%@page import="org.garc.core.Faculty"%>
<%@page import="org.garc.core.Faculty"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.garc.oauth.UserInfo"%>
<%@page import="org.garc.core.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body.modal-open #page{
                -webkit-filter: blur(7px);
                -moz-filter: blur(15px);
                -o-filter: blur(15px);
                -ms-filter: blur(15px);
                filter: blur(15px);
            }

            .modal-backdrop {background: #f7f7f7;}


            .progress-meter {
                min-height: 15px;
                border-bottom: 2px solid rgb(160, 160, 160);
            }

            .progress-meter > .meter {
                position: relative;
                float: left;
                min-height: 15px;
                border-width: 0px;
                border-style: solid;
                border-color: rgb(160, 160, 160);
            }

            .progress-meter > .meter-left {
                border-left-width: 2px;
            }

            .progress-meter > .meter-right {
                float: right;
                border-right-width: 2px;
            }

            .progress-meter > .meter-right:last-child {
                border-left-width: 2px;
            }

            .progress-meter > .meter > .meter-text {
                position: absolute;
                display: inline-block;
                bottom: -20px;
                width: 100%;
                font-weight: 700;
                font-size: 0.85em;
                color: rgb(160, 160, 160);
                text-align: left;
            }

            .progress-meter > .meter.meter-right > .meter-text {
                text-align: right;
            }


            /** added for corner drop down **/

            .panel-google-plus {
                position: relative;
                border-radius: 0px;
                border: 1px solid rgb(216, 216, 216);
                font-family: 'Roboto', sans-serif;
            }
            .panel-google-plus > .dropdown {
                position: absolute;
                top: 5px;
                right: 15px;
            }
            .panel-google-plus > .dropdown > span > span {
                font-size: 10px;   
            }
            .panel-google-plus > .dropdown > .dropdown-menu {
                left: initial;
                right: 0px;
                border-radius: 2px;
            }
            /** read more **/
            .readmore-js-toggle, .readmore-js-section {
                text-align: left;
                top: 25px;
            }
            #chart > svg {height: 50% !important;}
            .dp:hover
            {
                border:2px solid #eee;
                transform:rotate(360deg);
                -ms-transform:rotate(360deg);  
                -webkit-transform:rotate(360deg);  
                /*-webkit-font-smoothing:antialiased;*/
            }
            .dp
            {
                border:10px solid #eee;
                transition: all 0.2s ease-in-out;
            }

        </style>
        <meta charset="UTF-8">
        <title>Welcome Garc 4.0</title>


        <%@ include file="../layout/header.jsp" %>
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
        <%            JSONObject user = (JSONObject) session.getAttribute("user");
            Student me = new Student(user.get("id").toString(),
                    user.get("semester").toString(), user.get("section").toString());
            JSONObject reportee = new Faculty().getClassIncharge(user.get("semester")
                    .toString(), user.get("section").toString());
        %>
    <div id="page">
        <div class="container" >
            <div class="row">
                <ul class="thumbnails list-unstyled">
                    <li class=" col-md-3  ">
                        <div class="thumbnail panel-google-plus">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Edit Profile</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">View My Batchmates</a></li>                                    
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Change Password</a></li>
                                </ul>
                            </div>
                            <center>
                                <a href="#aboutModal" data-toggle="modal" data-target="#myModal"><img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRbezqZpEuwGSvitKy3wrwnth5kysKdRqBW54cAszm_wiutku3R" name="aboutme" width="140" height="140" class="img-circle dp"></a>
                                <h3><%=user.get("name").toString()%></h3>

                            </center>
                        </div>
                    </li>

                    <li class="col-md-6 ">
                        <ul class="nav nav-pills panel">

                            <li><a href="#"><span class="glyphicon glyphicon-inbox"></span> Inbox</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-th-list"></span> Time Table </a></li>
                            <li><a href="#" ><span class="glyphicon glyphicon-calendar"></span>Calender</a></li>
                            <li><a href="#" onclick="getStudentReport('${pageContext.request.contextPath}', 'detailedattendance', '')"><span class="glyphicon glyphicon-heart"></span> Attendance</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle "  data-toggle="dropdown" href="#">
                                    More <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Downloads</a></li>
                                </ul>
                            </li>

                        </ul>
                        <div class="thumbnail panel-google-plus">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$('#viewer').slideDown('slow')">Course Planner</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Course Outline</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Download Resource</a></li>
                                </ul>
                            </div>
                            <p><strong><span class="glyphicon glyphicon-user"></span>  Reportee: </strong> <a href='#'><%=getValueByKey(reportee, "title", 0)%> <%=getValueByKey(reportee, "name", 0)%></a> <%=getValueByKey(reportee, "qualification", 0)%>. </p>
                            <p><strong><span class="glyphicon glyphicon-glass"></span>  Semester: </strong> <%=user.get("semester")%>, Section <%=user.get("section")%> </p>
                            <p><strong><span class="glyphicon glyphicon-time"></span> Last Login: </strong> <%=user.get("last_login_at")%>
                            <p><strong><span class="glyphicon glyphicon-heart"></span> Current Location: </strong>Chennai
                        </div>

                    </li>
                    <li class="col-md-3 ">
                        <div class="thumbnail panel-google-plus">

                            <div id="graph" style="height: 150px"></div>
                            <center><button class="btn btn-danger" data-toggle="modal" data-target="#myModal" style="width: 100%"><span class="glyphicon glyphicon-calendar"></span> Apply Leave</button></center>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
        <div class="container " id="viewer" style="display: none" >
            <div class="panel panel-default">

                <div class="panel-heading" ><span>Attendance</span><span class="close glyphicon glyphicon-remove-circle" onclick="$('#viewer').slideUp()"></span></div>
                <div id="response">


                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <ul class="thumbnails list-unstyled">
                    <%
                        JSONObject leaveSummary = me.getLeaveSummary();
                        JSONObject attendanceSummary = me.getAttendanceSummary();
                        final String[] theme = {"success", "info", "warning", "danger"};
                        int count = Integer.parseInt(attendanceSummary.get("count").toString());

                        for (int i = 0; i < count; i++) {
                            JSONObject assigenedFaculty = new Subject().getFaculties(getValueByKey(attendanceSummary, "subjectId", i));
                            int j = 0;
                            for (; j < Integer.parseInt(assigenedFaculty.get("count").toString()); j++) {
                                String section = getValueByKey(assigenedFaculty, "section", j);
                                if (section.equals(user.get("section")) || assigenedFaculty.get("electives").equals("YES")) {
                                    break;
                                }
                            }
                            JSONObject faculty = (JSONObject) ((JSONArray) assigenedFaculty.get("items")).get(j);
                            String subjectid = getValueByKey(attendanceSummary, "subjectId", i);
                            String onduty = getValueByKey(attendanceSummary, "onduty", i);
                            String attended = getValueByKey(attendanceSummary, "attended", i);
                            String tooltipTxt = "total classes taken is " + getValueByKey(attendanceSummary, "attendance_taken", i) + " and you have attended the " + attended + " classes + " + onduty + " OD(s). Which is " + getValueByKey(attendanceSummary, "attendance_percentage", i) + "%";
                            JSONObject facultyInfo = Faculty.getFacultyinfo(faculty.get("staff_id").toString());
                    %>
                    <li class="col-md-3">
                        <div class="thumbnail panel-google-plus more" style="padding: 0">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="getStudentReport('${pageContext.request.contextPath}', 'coursecoverage', '<%=subjectid%>')">Course Coverage</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="getStudentReport('${pageContext.request.contextPath}', 'courseoutline', '<%=subjectid%>')">Course Outline</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="../resources.jsp?subjectid=<%=subjectid%>" >Download Resource</a></li>

                                </ul>
                            </div>
                            <div class="caption">

                                <h2><%=subjectid%> </h2>
                                <p><%=getValueByKey(attendanceSummary, "subjectName", i)%>  </p>
                                <p><i class="icon icon-map-marker"></i> by <a  data-container="body" data-toggle="popover" title="<%=faculty.get("staff_name")%>"  data-content='<center><img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRbezqZpEuwGSvitKy3wrwnth5kysKdRqBW54cAszm_wiutku3R"  width="100" height="100" class="img-circle dp"><h5><%=facultyInfo.get("qualification")%></h5><h5></h5><%=facultyInfo.get("mailid")%><h5><%=facultyInfo.get("subjects_handled")%></h5></center>'><%=faculty.get("staff_name")%></a></p>
                            </div>
                            <div class="modal-footer" style="text-align: left">
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" data-container="body" aria-valuenow="<%=getValueByKey(attendanceSummary, "attendance_percentage", i)%>" aria-valuemin="0" aria-valuemax="100" style="width: <%=getValueByKey(attendanceSummary, "attendance_percentage", i)%>%;" data-toggle="tooltip" data-placement="top" title="<%=tooltipTxt%>">
                                        <span class="sr-only"><%=getValueByKey(attendanceSummary, "attendance_percentage", i)%>% Complete</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4"><b><%=attended%></b><br/><small>PRESENT</small></div>
                                    <div class="col-md-4"><b><a href="#" data-toggle="tooltip" data-placement="top" title="<%=leaveSummary.get(subjectid + "_summary")%>"><%=leaveSummary.get(subjectid) == null ? 0 : leaveSummary.get(subjectid)%></a></b><br/><small>LEAVE</small></div>
                                    <div class="col-md-4"><b><%=onduty%> </b><br/><small>OD</small></div>
                                </div>

                            </div>
                            <%
                                JSONObject marks = me.getMarks(getValueByKey(attendanceSummary, "subjectId", i));
                                String testMarks = getValueByKey(marks, "mark", j);
                                String maxMarks = getValueByKey(marks, "maxMarks", j);
                                String weightage = getValueByKey(marks, "weightage", j);
                                tooltipTxt = "";
                                String percent = "0";
                                try {
                                    percent = "" + (int) (Integer.parseInt(testMarks) * 100 / Integer.parseInt(maxMarks));
                                    tooltipTxt = "You have scored " + percent + "% (" + testMarks + ") in " + getValueByKey(marks, "examname", j);
                                } catch (NumberFormatException e) {
                                    //out.print(marks);
                                    tooltipTxt = "The " + getValueByKey(marks, "examname", j) + " Scheduled on " + getValueByKey(marks, "examdate", j);
                                }
                            %>
                            <div class="modal-footer " style="text-align: left">
                                <%                                    if (marks.get("responsecode").equals("200"))
                                        for (j = 0; j < Integer.parseInt(marks.get("count").toString()); j++) {%>                              

                                <div class="progress">
                                    <div data-percentage="0%" style="width: <%=percent%>%;" class="progress-bar progress-bar-<%=theme[j % 4]%>" role="progressbar" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="<%=percent.equals("0") ? "right" : "top"%>" title="<%=tooltipTxt%>">
                                        <span class="sr-only"><%=percent%>% Complete</span>
                                        <span class="progress-type"><%=getValueByKey(marks, "examname", j)%></span>

                                    </div>
                                </div>
                                <%}
                                else {%>

                                <div >
                                    No Exams Scheduled
                                </div>
                                <%}%>
                                <%if (marks.get("responsecode").equals("200")) {%>
                                <div class="progress-meter">
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Meh</span></div>
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Sorta</span></div>
                                    <div class="meter meter-right" style="width: 20%;"><span class="meter-text">MASTER</span></div>
                                    <div class="meter meter-right" style="width: 30%;"><span class="meter-text">WOW</span></div>
                                </div>
                                <%}%>


                            </div>
                        </div>
                    </li>
                    <%}%>                 
                </ul>
            </div>
        </div>

    </div>
    <!-- Modal -->
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>


    <%@ include file="../layout/footer.jsp" %>
    <script src="../js/readmore.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.2/raphael-min.js"></script>
    <script src="../js/morris.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.js"></script>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.css">
    <link rel="stylesheet" href="../css/morris.css">
    <script>
                                       
                                        $(function() {
                                            $('[data-toggle="tooltip"]').tooltip();
                                             $('[data-toggle="popover"]').popover({trigger: 'hover', 'placement': 'top','html': true});
                                            $('.more').readmore({
                                                speed: 75,
                                                maxHeight: 325
                                            });
                                            $(function() {

                                                $.ajax({
                                                    type: "post", url: "${pageContext.request.contextPath}/core/student.jsp?action=attendancepie",
                                                    success: function(data, text) {
                                                        var json = $.parseJSON(data);

                                                        var val = Morris.Donut({
                                                            element: 'graph',
                                                            data: json["items"],
                                                            backgroundColor: '#ccc',
                                                            resize: true, labelColor: '#060',
                                                            colors: [
                                                                '#0BA462',
                                                                '#F80000',
                                                                '#DFD24A',
                                                            ],
                                                            formatter: function(x) {
                                                                return x + "%"
                                                            }
                                                        });
                                                        eval(val);
                                                        prettyPrint();
                                                    },
                                                    error: function(request, status, error) {
                                                        $('#graph').html(request.responseText);
                                                    }
                                                });


                                            });
                                        });
    </script>
</body>

</html>