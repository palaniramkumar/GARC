<%-- 
    Document   : editprofile
    Created on : Oct 13, 2014, 11:09:52 PM
    Author     : Ramkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Welcome Garc 4.0</title>
        <%@ include file="../layout/header.jsp" %>
    <div class="container ">
        <div class="well">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#home" data-toggle="tab">Profile</a></li>
                <li><a href="#profile" data-toggle="tab">Password</a></li>
            </ul>
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active in" id="home">
                    <br/>
                    <form class="form-horizontal tab">
                        <fieldset>
                            <legend>Edit User Profile</legend>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                                <div class="col-lg-10">
                                    <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">SSLC</label>
                                <div class="col-lg-10">
                                    <input type="email" class="form-control" id="inputSSLC" placeholder="SSLC">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">HSC</label>
                                <div class="col-lg-10">
                                    <input type="email" class="form-control" id="inputHSC" placeholder="HSC">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">UG</label>
                                <div class="col-lg-10">
                                    <input type="email" class="form-control" id="inputUG" placeholder="UG">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Mobile</label>
                                <div class="col-lg-10">
                                    <input type="email" class="form-control" id="inputMobile" placeholder="Mobile">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="textArea" class="col-lg-2 control-label">Address</label>
                                <div class="col-lg-10">
                                    <textarea class="form-control" id="addresss" rows="3" id="textArea"></textarea>
                                    <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                                </div>
                            </div>
                            
                            
                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                    <button class="btn btn-default">Cancel</button>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
                <div class="tab-pane fade" id="profile">
                    <br/>
                    <form id="tab2">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <input class="form-control floating-label" id="newpassword" type="password" placeholder="Old Password">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <input class="form-control floating-label" id="confirmpassword" type="password" placeholder="New Password">
                                </div>
                            </div>
                            <div class="col-sm-4 form-group">
                                <a href="javascript:void(0)"  onclick="updatePassword('${pageContext.request.contextPath}')" class="btn btn-warning  btn-raised"> <span class="glyphicon glyphicon-list">Update</span> </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div id="response"></div>
    </div>
    <%@ include file="../layout/footer.jsp" %>
</body>

</html>