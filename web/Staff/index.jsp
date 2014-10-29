<%-- 
    Document   : index
    Created on : Sep 25, 2014, 1:29:16 AM
    Author     : Ramkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Welcome Garc 4.0</title>

        <%@ include file="../layout/facultyHeader.jsp" %>
    <div class="container">
        <div id="space"></div>
        <div class="container ">
            <section class="row">
                <article class="col-sm-3 col-md-3 col-lg-3">
                    <div class="profile">
                        <img src="http://placehold.it/150x150" alt="..." class="img-circle">
                        <p>Oscar Gonzalez</p>
                        <select class="form-control">
                            <option>Computer Networks</option>
                        </select>
                    </div>

                </article>
                <div class="well col-md-9 " style="height: 250px">
                    <div class="col-sm-6" ><h4> Allocated Subject</h4>    
                        <p><span class="glyphicon glyphicon-bell"></span>MC0167 - Computer Networks for Section B <span class="label label-info">Current</span></p>
                        <p><span class="glyphicon glyphicon-bell"></span>MC0168 - Operating System for Section A</p>
                    </div>
                    <div class="col-sm-3" > <h4>Today's Absentees</h4>
                        <p><span class="glyphicon glyphicon-calendar"></span>Ramkumar</p>
                        <p><span class="glyphicon glyphicon-calendar"></span>Ravi</p>
                        <p><span class="glyphicon glyphicon-calendar"></span>Rajan</p>
                    </div>
                    <!--div class="col-sm-4" > <h4>Attendance %</h4>
                        <p><span class="glyphicon glyphicon-bell"></span>MC0167, Section B has 89%</p>
                        <p><span class="glyphicon glyphicon-bell"></span>MC0168, - Section A has 91%</p>
                        <p><span class="glyphicon glyphicon-book"></span>Daily Attendance</p>
                        <p><span class="glyphicon glyphicon-dashboard"></span>cumulative Attendance</p>
                        <p><span class="glyphicon glyphicon-calendar"></span>Attendance by subjects</p>
                        <p><span class="glyphicon glyphicon-cloud"></span>Non Academic Attendance</p>
                        <p><span class="glyphicon glyphicon-bell"></span>Absentees Report</p>
                        <p><span class="glyphicon glyphicon-list"></span>Course Progress</p>
                        <p><span class="glyphicon glyphicon-thumbs-up"></span>Course Outline</p>
                        <p><span class="glyphicon glyphicon-star"></span>Course Coverage</p>
                    </div-->
                    <div class="col-sm-10">
                        <p><span class="glyphicon glyphicon-stats"></span>You have created 12 test for this semester and average mark scored by the student is 60%</p>
                    </div>
                </div>
                
            </section>
        </div>
        <section class="row">
            <div class="container" id="content">
                <div id="space"></div>
                <ul class="thumbnails list-unstyled">
                    <li class="col-md-3">
                        <div class="thumbnail panel-google-plus" style="padding: 0">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <div class="caption">

                                <h2>BA7011 </h2>
                                <p>Merchant Banking and Financial Services </p>
                                <p><i class="icon icon-map-marker"></i> by <a href='#'>Ramkumar K</a>, <a href='#'>Kannan S</a></p>
                            </div>
                            <div class="modal-footer" style="text-align: left">
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                        <span class="sr-only">60% Complete</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4"><b>60%</b><br/><small>PRESENT</small></div>
                                    <div class="col-md-4"><b>$400</b><br/><small>LEAVE</small></div>
                                    <div class="col-md-4"><b>18</b><br/><small>OD</small></div>
                                </div>

                            </div>
                            <div class="modal-footer more" style="text-align: left">

                                <div class="progress">
                                    <div data-percentage="0%" style="width: 50%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="HTML / HTML5">
                                        <span class="sr-only">60% Complete</span>
                                        <span class="progress-type">HTML / HTML5</span>

                                    </div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 40%;" class="progress-bar progress-bar-warning" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 20%;" class="progress-bar progress-bar-danger" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress-meter">
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Meh</span></div>
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Sorta</span></div>
                                    <div class="meter meter-right" style="width: 20%;"><span class="meter-text">MASTER</span></div>
                                    <div class="meter meter-right" style="width: 30%;"><span class="meter-text">WOW</span></div>
                                </div>



                            </div>
                        </div>
                    </li>
                    <li class="col-md-3">
                        <div class="thumbnail panel-google-plus" style="padding: 0">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <div class="caption">

                                <h2>BA7011 </h2>
                                <p>Merchant Banking and Financial Services </p>
                                <p><i class="icon icon-map-marker"></i> by <a href='#'>Ramkumar K</a>, <a href='#'>Kannan S</a></p>
                            </div>
                            <div class="modal-footer" style="text-align: left">
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                        <span class="sr-only">60% Complete</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4"><b>60%</b><br/><small>PRESENT</small></div>
                                    <div class="col-md-4"><b>$400</b><br/><small>LEAVE</small></div>
                                    <div class="col-md-4"><b>18</b><br/><small>OD</small></div>
                                </div>

                            </div>
                            <div class="modal-footer more" style="text-align: left">

                                <div class="progress">
                                    <div data-percentage="0%" style="width: 50%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 40%;" class="progress-bar progress-bar-warning" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 20%;" class="progress-bar progress-bar-danger" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress-meter">
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Meh</span></div>
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Sorta</span></div>
                                    <div class="meter meter-right" style="width: 20%;"><span class="meter-text">MASTER</span></div>
                                    <div class="meter meter-right" style="width: 30%;"><span class="meter-text">WOW</span></div>
                                </div>



                            </div>
                        </div>
                    </li>
                    <li class="col-md-3">
                        <div class="thumbnail panel-google-plus" style="padding: 0">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <div class="caption">

                                <h2>BA7011 </h2>
                                <p>Merchant Banking and Financial Services </p>
                                <p><i class="icon icon-map-marker"></i> by <a href='#'>Ramkumar K</a>, <a href='#'>Kannan S</a></p>
                            </div>
                            <div class="modal-footer" style="text-align: left">
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                        <span class="sr-only">60% Complete</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4"><b>60%</b><br/><small>PRESENT</small></div>
                                    <div class="col-md-4"><b>$400</b><br/><small>LEAVE</small></div>
                                    <div class="col-md-4"><b>18</b><br/><small>OD</small></div>
                                </div>

                            </div>
                            <div class="modal-footer more" style="text-align: left">

                                <div class="progress">
                                    <div data-percentage="0%" style="width: 50%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 40%;" class="progress-bar progress-bar-warning" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 20%;" class="progress-bar progress-bar-danger" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress-meter">
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Meh</span></div>
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Sorta</span></div>
                                    <div class="meter meter-right" style="width: 20%;"><span class="meter-text">MASTER</span></div>
                                    <div class="meter meter-right" style="width: 30%;"><span class="meter-text">WOW</span></div>
                                </div>



                            </div>
                        </div>
                    </li>
                    <li class="col-md-3">
                        <div class="thumbnail panel-google-plus" style="padding: 0">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <div class="caption">

                                <h2>BA7011 </h2>
                                <p>Merchant Banking and Financial Services </p>
                                <p><i class="icon icon-map-marker"></i> by <a href='#'>Ramkumar K</a>, <a href='#'>Kannan S</a></p>
                            </div>
                            <div class="modal-footer" style="text-align: left">
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                        <span class="sr-only">60% Complete</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4"><b>60%</b><br/><small>PRESENT</small></div>
                                    <div class="col-md-4"><b>$400</b><br/><small>LEAVE</small></div>
                                    <div class="col-md-4"><b>18</b><br/><small>OD</small></div>
                                </div>

                            </div>
                            <div class="modal-footer more" style="text-align: left">

                                <div class="progress">
                                    <div data-percentage="0%" style="width: 50%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 40%;" class="progress-bar progress-bar-warning" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 20%;" class="progress-bar progress-bar-danger" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress-meter">
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Meh</span></div>
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Sorta</span></div>
                                    <div class="meter meter-right" style="width: 20%;"><span class="meter-text">MASTER</span></div>
                                    <div class="meter meter-right" style="width: 30%;"><span class="meter-text">WOW</span></div>
                                </div>



                            </div>
                        </div>
                    </li>
                </ul>

            </div>

        </section>
    </div>
    <%@ include file="../layout/footer.jsp" %>
    <script>

            $("li>a").click(function() {
                url = $(this).attr('data-load')+".jsp";
                $.ajax({url: url, success: function(result) {
                        $("#content").html(result);
                        localStorage.ajaxURL=url;
                    }});
            });
            if ('ajaxURL' in localStorage) {
                $.ajax({url: localStorage.ajaxURL, success: function(result) {
                        $("#content").html(result);
                      
                    }});
            }

    </script>
</body>
<style>
    .profile {
        background-color: #FF766C;
        border: 1px solid #ff766c;
    }

    .profile img {
        display: block;
        border: 10px solid rgba(255, 255, 255, 0.3);
        margin: 0 auto;
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .profile p {
        text-align: center;
        color: #fff;
    }
    .profile .form-control {
        text-align: center;
        color: #fff;
    }

</style>
</html>