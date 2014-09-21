<%-- 
    Document   : index
    Created on : Sep 21, 2014, 3:50:33 PM
    Author     : Ramkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body.modal-open #wrap{
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

            .dropdown-large {
                position: static !important;
            }
            .dropdown-menu-large {
                margin-left: 16px;
                margin-right: 16px;
                padding: 20px 0px;
            }
            .dropdown-menu-large > li > ul {
                padding: 0;
                margin: 0;
            }
            .dropdown-menu-large > li > ul > li {
                list-style: none;
            }
            .dropdown-menu-large > li > ul > li > a {
                display: block;
                padding: 3px 20px;
                clear: both;
                font-weight: normal;
                line-height: 1.428571429;
                color: #333333;
                white-space: normal;
            }
            .dropdown-menu-large > li ul > li > a:hover,
            .dropdown-menu-large > li ul > li > a:focus {
                text-decoration: none;
                color: #262626;
                background-color: #f5f5f5;
            }
            .dropdown-menu-large .disabled > a,
            .dropdown-menu-large .disabled > a:hover,
            .dropdown-menu-large .disabled > a:focus {
                color: #999999;
            }
            .dropdown-menu-large .disabled > a:hover,
            .dropdown-menu-large .disabled > a:focus {
                text-decoration: none;
                background-color: transparent;
                background-image: none;
                filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
                cursor: not-allowed;
            }
            .dropdown-menu-large .dropdown-header {
                color: #428bca;
                font-size: 18px;
            }
            @media (max-width: 768px) {
                .dropdown-menu-large {
                    margin-left: 0 ;
                    margin-right: 0 ;
                }
                .dropdown-menu-large > li {
                    margin-bottom: 30px;
                }
                .dropdown-menu-large > li:last-child {
                    margin-bottom: 0;
                }
                .dropdown-menu-large .dropdown-header {
                    padding: 3px 15px !important;
                }
            }

        </style>
        <meta charset="UTF-8">
        <title>Welcome Garc 4.0</title>
        <%@ include file="../layout/header.jsp" %>

    <nav class="navbar navbar-inverse navbar-static">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Large Dropdown Menu</a>
        </div>


        <div class="collapse navbar-collapse js-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown dropdown-large">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>

                    <ul class="dropdown-menu dropdown-menu-large row">
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">Glyphicons</li>
                                <li><a href="#">Available glyphs</a></li>
                                <li class="disabled"><a href="#">How to use</a></li>
                                <li><a href="#">Examples</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Dropdowns</li>
                                <li><a href="#">Example</a></li>
                                <li><a href="#">Aligninment options</a></li>
                                <li><a href="#">Headers</a></li>
                                <li><a href="#">Disabled menu items</a></li>
                            </ul>
                        </li>
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">Button groups</li>
                                <li><a href="#">Basic example</a></li>
                                <li><a href="#">Button toolbar</a></li>
                                <li><a href="#">Sizing</a></li>
                                <li><a href="#">Nesting</a></li>
                                <li><a href="#">Vertical variation</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Button dropdowns</li>
                                <li><a href="#">Single button dropdowns</a></li>
                            </ul>
                        </li>
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">Input groups</li>
                                <li><a href="#">Basic example</a></li>
                                <li><a href="#">Sizing</a></li>
                                <li><a href="#">Checkboxes and radio addons</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Navs</li>
                                <li><a href="#">Tabs</a></li>
                                <li><a href="#">Pills</a></li>
                                <li><a href="#">Justified</a></li>
                            </ul>
                        </li>
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">Navbar</li>
                                <li><a href="#">Default navbar</a></li>
                                <li><a href="#">Buttons</a></li>
                                <li><a href="#">Text</a></li>
                                <li><a href="#">Non-nav links</a></li>
                                <li><a href="#">Component alignment</a></li>
                                <li><a href="#">Fixed to top</a></li>
                                <li><a href="#">Fixed to bottom</a></li>
                                <li><a href="#">Static top</a></li>
                                <li><a href="#">Inverted navbar</a></li>
                            </ul>
                        </li>
                    </ul>

                </li>
            </ul>

        </div><!-- /.nav-collapse -->
    </nav>


    <div class="container">
        <div class="span3 well">
            <center>
                <a href="#aboutModal" data-toggle="modal" data-target="#myModal"><img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRbezqZpEuwGSvitKy3wrwnth5kysKdRqBW54cAszm_wiutku3R" name="aboutme" width="140" height="140" class="img-circle"></a>
                <h3>Joe Sixpack</h3>
                <em>click my face for more</em>
            </center>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title" id="myModalLabel">More About Joe</h4>
                    </div>
                    <div class="modal-body">
                        <center>
                            <img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRbezqZpEuwGSvitKy3wrwnth5kysKdRqBW54cAszm_wiutku3R" name="aboutme" width="140" height="140" border="0" class="img-circle"></a>
                            <h3 class="media-heading">Joe Sixpack <small>USA</small></h3>
                            <span><strong>Skills: </strong></span>
                            <span class="label label-warning">HTML5/CSS</span>
                            <span class="label label-info">Adobe CS 5.5</span>
                            <span class="label label-info">Microsoft Office</span>
                            <span class="label label-success">Windows XP, Vista, 7</span>
                        </center>
                        <hr>
                        <center>
                            <p class="text-left"><strong>Bio: </strong><br>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sem dui, tempor sit amet commodo a, vulputate vel tellus.</p>
                            <br>
                        </center>
                    </div>
                    <div class="modal-footer">
                        <center>
                            <button type="button" class="btn btn-default" data-dismiss="modal">I've heard enough about Joe</button>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <ul class="thumbnails list-unstyled">
                <li class="col-md-3">
                    <div class="thumbnail" style="padding: 0">

                        <div class="caption">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]">BA7011</h2></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            
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
                                <div class="col-md-4"><b>60%</b><br/><small>FUNDED</small></div>
                                <div class="col-md-4"><b>$400</b><br/><small>PLEDGED</small></div>
                                <div class="col-md-4"><b>18</b><br/><small>DAYS</small></div>
                            </div>

                        </div>
                        <div class="modal-footer" style="text-align: left">

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
                    <div class="thumbnail" style="padding: 0">
                        <div style="padding:4px">
                            <img alt="300x200" style="width: 100%" src="http://placehold.it/200x150">
                        </div>
                        <div class="caption">
                            <h2>Project B</h2>
                            <p>My project description</p>
                            <p><i class="icon icon-map-marker"></i> Place, Country</p>
                        </div>
                        <div class="modal-footer" style="text-align: left">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                                    <span class="sr-only">60% Complete</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4"><b>250%</b><br/><small>FUNDED</small></div>
                                <div class="col-md-4"><b>$50000</b><br/><small>PLEDGED</small></div>
                                <div class="col-md-4"><b>FUNDED</b><br/><small>AUG 5</small></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="col-md-3">
                    <div class="thumbnail" style="padding: 0">
                        <div style="padding:4px">
                            <img alt="300x200" style="width: 100%" src="http://placehold.it/200x150">
                        </div>
                        <div class="caption">
                            <h2>Project C</h2>
                            <p>My project description</p>
                            <p><i class="icon icon-map-marker"></i> Place, Country</p>
                        </div>
                        <div class="modal-footer" style="text-align: left">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
                                    <span class="sr-only">60% Complete</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4"><b>30%</b><br/><small>FUNDED</small></div>
                                <div class="col-md-4"><b>$1000</b><br/><small>PLEDGED</small></div>
                                <div class="col-md-4"><b>NOT FUNDED</b><br/><small></small></div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h3>Progess bar <span class="semi-bold">Colors</span></h3>
                <p>Progress bars comes with customized colors and transparent background that would fit any colored widget or portlet</p>
                <br>
                <div class="col-md-11">
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
                </div>
            </div>
        </div>
    </div>

    <div id="wrap" class="text-center">
        <!-- Button trigger modal -->
        <br>
        <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
            Modal with blur effect
        </button>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 text-center">
                    <h1>Modal with blur effect</h1>
                    <h2>Put here whatever you want here</h2>
                    <h4>For instance, a login form or an article content</h4>
                    <h4><kbd>esc</kbd> or click anyway to close</h4>
                    <hr>
                    <div class="alert alert-info"><h4>I can add a close button if you want.<br>Please, tell me in comments :)</h4></div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <h2 class="text-center">Progress Bar Meter!<br/><small>Hover over the options if you can't see the text</small></h2>
            <hr />
        </div>
        <div class="row">
            <div class="col-sm-offset-4 col-sm-4">
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;" data-toggle="tooltip" data-placement="top" title="HTML / HTML5">
                        <span class="sr-only">60% Complete</span>
                        <span class="progress-type">HTML / HTML5</span>
                    </div>
                </div>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="1" aria-valuemin="0" aria-valuemax="100" style="width: 80%;" data-toggle="tooltip" data-placement="top" title="CSS / CSS3">
                        <span class="sr-only">80% Complete</span>
                        <span class="progress-type">CSS / CSS3</span>
                    </div>
                </div>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="1" aria-valuemin="0" aria-valuemax="100" style="width: 1%;" data-toggle="tooltip" data-placement="top" title="Russian">
                        <span class="sr-only">1% Complete</span>
                        <span class="progress-type">Russian</span>
                    </div>
                </div>
                <div class="progress-meter">
                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Meh</span></div>
                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Sorta</span></div>
                    <div class="meter meter-right" style="width: 20%;"><span class="meter-text">MASTER</span></div>
                    <div class="meter meter-right" style="width: 30%;"><span class="meter-text">WOW</span></div>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../layout/footer.jsp" %>
    <script>
        $(function() {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
</body>

</html>