<%-- 
    Document   : index
    Created on : Sep 17, 2014, 12:07:36 AM
    Author     : Ramkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <%@ include file="layout/header.jsp" %>
        <div class="container">


            <div class="grid_12 heading">
                <h3>We give you powerful free tools to help you educate the world</h3>
            </div>
            <div >
                <article class="post post-blog">
                    <a href="#" class="post-image">
                        <img src="${pageContext.request.contextPath}/img/bg_img2.jpg"  width="100%"/>
                    </a>
                    <div class="well">
                        <h2><a href="#">Welcome to Graduate Academic Resource Center (GARC).</a></h2>
                        <div class="meta">
                            <p>Written by <strong>Admin</strong> <span class="verified"></span></p>
                        </div>
                        <p>Recognizing that currently multiple dissimilar repositories exist at SoMCA to share, transfer and maintain academic information, course material, course management review and realizing the need to use IT based solution to deal with this situation, GARC has evolved. <br />___<br />
                            <br />P.S The code or enhancement is always welcome, please contact me if you're interested.</p>
                        <div class="btn-group" data-grouptype="OR">
                            <button class="btn btn-success" onclick="window.location='${pageContext.request.contextPath}/login.jsp'">Login Now</button>
                            <button class="btn btn-flat btn-warning " onclick="window.location='http://github.com/palaniramkumar/GARC'">Download</button>
                        </div>
                        <div class="intents">
                            <span class="icon icon-heart"></span>
                            <span class="count">1,056</span>
                            <span class="icon icon-link"></span>
                            <span class="count">14,854</span>
                        </div>
                    </div>
                </article> 
            </div>
                            <div class="well" >
                <div class="heading">
                    <h3>News</h3>
                </div>     

                <div class="feedback">
                    <article class="post">
                        <div class="details">

                            <p>The most expected GARC 4.0 is under development. Expecting volunteers to promote the open-source community. Download the latest version from https://github.com/palaniramkumar/GARC.git </p>
                            <div class="meta">
                                <span class="icon-star"></span>
                                <span class="icon-star"></span>
                                <span class="icon-star"></span>
                                <span class="icon-star"></span>
                                <span class="icon-star2"></span>
                            </div>
                        </div>
                    </article>
                </div>
            </div>


            <div class="grid_7 well">
                <section class="widget twitter">
                    <header class="header header-tertiary">
                        <h3>Dont's</h3>
                        <div class="background-icon"><span class="icon-cross"></span></div>
                    </header>
                    <div class="actions">
                        <a href="#" class="btn btn-tertiary btn-round"><span class="icon-star"></span></a>
                    </div>
                    <article>
                        <ul>
                            <li>Being absent on the reopening day after the vacation (Summer & Winter)</li>
                            <li>
                                Being late for the class after breaks (Lunch & Tea)
                            </li>
                            <li>
                                Having a non-serious attitude towards studies and campus in general
                            </li>
                            <li>
                                Being absent without prior intimation
                            </li>
                            <li>
                                Being absent during the internal examinations / tests
                            </li>
                            <li>
                                Being absent a day before internals / Presentations etc
                            </li>
                            <li>
                                Having lack of commitment to the institution
                            </li>
                            <li>
                                Staining the campus premises
                            </li>
                            <li>
                                Using cell phones in the classroom, lab & the library
                            </li>
                            <li>
                                Talking in the library in a loud voice
                            </li>
                            <li>
                                Talking in the classroom during lectures
                            </li>
                        </ul>

                    </article>
                </section>
            </div>
            <div class="grid_7 well">
                <section class="widget storage">
                    <header class="header header-quaternary">
                        <h3>Do's</h3>
                        <div class="background-icon"><span class="icon-checkmark"></span></div>
                    </header>
                     <div class="actions">
                        <a href="#" class="btn btn-quaternary btn-round"><span class="icon-star"></span></a>
                    </div>
                    <article>
                        <ul>
                            <li class="active">
                                Be in time for class
                            </li>
                            <li class="active">
                                Keep your surroundings (room, walls, corridors etc.) clean
                            </li>
                            <li class="active">
                                Appear in all the internal examinations
                            </li>
                            <li class="active">
                                Handle all the campus resources carefully
                            </li>
                            <li class="active">
                                Be attentive to and appreciative of the visitors
                            </li>
                            <li class="active">
                                Participate in the lectures / presentation given by the faculty (external as well as internal)
                            </li>
                            <li class="active">
                                Dress decently
                            </li>
                            <li class="active">
                                Switch the fans & lights off when classroom is not in use
                            </li>
                            <li class="active">
                                Approach faculty / Mentor for Counseling
                            </li>
                            <li class="active">
                                Inform the concerned authority about mishaps and accidents
                            </li>
                        </ul>

                    </article>
                </section>
            </div>
        </div>
        
    <%@ include file="layout/footer.jsp" %>
    </body>

</html>