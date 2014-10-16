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

            .list-group-item {
                background-color: #fff;
                border-radius: 0px !important;
                border: 1px solid #DDD;
            }

            .list-group-item.active, .list-group-item:hover {
                border-left: 3px solid #FF766C;
                background-color: #F8F7F5;
            }

            /*Ignore this tag. It is to give space.*/
            #space {padding: 10px;}


        </style>
        <%@ include file="../layout/header.jsp" %>
    <div class="container">
        <div id="space"></div>
        <div class="container">
            <section class="row">
                <article class="col-sm-3 col-md-3 col-lg-3">
                    <div class="profile">
                        <img src="http://placehold.it/150x150" alt="..." class="img-circle">
                        <p>Oscar Gonzalez</p>
                        <p>example@bootsnipp.com</p>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item active">Computer Networks</li>
                        <li class="list-group-item">Software Engineering</li>
                    </ul>
                </article>
                <div class="col-md-9">

                    <nav class="navbar panel navbar-static-top" role="navigation">
                        <div class="container">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>

                                </button>
                            </div>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li>
                                        <a href="#inbox" role="tab" data-toggle="tab">
                                            <span class="glyphicon glyphicon-envelope"></span> Message
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#inbox" role="tab" data-toggle="tab">
                                            <span class="glyphicon glyphicon-compressed"></span>Course Work <span class="label label-success">10</span>
                                        </a>
                                    </li>
                                    <li><a href="#sent-mail" role="tab" data-toggle="tab">
                                            <span class="glyphicon glyphicon-ok-sign"></span>Attendance</a>

                                    </li>
                                    <li><a href="#draft" role="tab" data-toggle="tab">
                                            <span class="glyphicon glyphicon-pencil"></span>Assessment</a>

                                    </li>
                                    <li><a href="#trash" role="tab" data-toggle="tab">
                                            <span class="glyphicon glyphicon-upload"></span>Resources</a>

                                    </li><li><a href="#trash" role="tab" data-toggle="tab">
                                            <span class="glyphicon glyphicon-th-list"></span>Time Table</a>



                                    </li>
                                </ul>

                            </div>
                            <!-- /.navbar-collapse -->
                        </div>
                        <!-- /.container-fluid -->
                    </nav>
                </div>
                <div class="col-md-3">
                    <ul class="list-group">
                        <li class="list-group-item active">Cras justo odio</li>
                        <li class="list-group-item">Dapibus ac facilisis in</li>
                        <li class="list-group-item">Morbi leo risus</li>
                        <li class="list-group-item">Porta ac consectetur ac</li>
                        <li class="list-group-item">Vestibulum at eros</li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <ul class="list-group">
                        <li class="list-group-item active">Cras justo odio</li>
                        <li class="list-group-item">Dapibus ac facilisis in</li>
                        <li class="list-group-item">Morbi leo risus</li>
                        <li class="list-group-item">Porta ac consectetur ac</li>
                        <li class="list-group-item">Vestibulum at eros</li>
                    </ul>
                </div>
                <div class="col-md-3">

                    <div class="thumbnail panel-google-plus">

                        <div id="graph" style="height: 135px"></div>
                        <h3><center><span class="glyphicon glyphicon-ok"></span> Attendance %</center></h3>
                    </div>
                </div>
            </section>




        </div>
        <section class="row">
            <div class="container">
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
</body>

</html>