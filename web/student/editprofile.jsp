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
                                <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                                <div class="col-lg-10">
                                    <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> Checkbox
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputFile" class="col-lg-2 control-label">File</label>
                                <div class="col-lg-10">
                                    <input type="text" readonly="" class="form-control floating-label" placeholder="Browse...">
                                    <input type="file" id="inputFile" multiple="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="textArea" class="col-lg-2 control-label">Textarea</label>
                                <div class="col-lg-10">
                                    <textarea class="form-control" rows="3" id="textArea"></textarea>
                                    <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 control-label">Radios</label>
                                <div class="col-lg-10">
                                    <div class="radio radio-primary">
                                        <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                                            Option one is this
                                        </label>
                                    </div>
                                    <div class="radio radio-primary">
                                        <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                            Option two can be something else
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="select" class="col-lg-2 control-label">Selects</label>
                                <div class="col-lg-10">
                                    <select class="form-control" id="select">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                    <br>
                                    <select multiple="" class="form-control">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
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