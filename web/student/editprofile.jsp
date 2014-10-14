<%-- 
    Document   : editprofile
    Created on : Oct 13, 2014, 11:09:52 PM
    Author     : Ramkumar
--%>

<%@page import="org.garc.core.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Welcome Garc 4.0</title>
        <%@ include file="../layout/header.jsp" %>
        <%
        JSONObject user = (JSONObject) session.getAttribute("user");
        JSONObject profile = Student.getStrudentProfile(user.get("id").toString());
        %>
    <div class="container ">
        <div class="well">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#home" data-toggle="tab">Profile</a></li>
                <li><a href="#profile" data-toggle="tab">Password</a></li>
            </ul>
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active in" id="home">
                    <br/>
                    <div class="form-horizontal tab">
                        <fieldset>
                            <legend>Edit User Profile</legend>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                                <div class="col-lg-10">
                                    <input type="email" class="form-control" id="inputEmail" value="<%=profile.get("email")%>" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label" >SSLC</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputSSLC" placeholder="SSLC" value="<%=profile.get("sslc")%>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">HSC</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputHSC" placeholder="HSC" value="<%=profile.get("hsc")%>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">UG</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputUG" placeholder="UG" value="<%=profile.get("ug")%>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Mobile</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputMobile" placeholder="Mobile" value="<%=profile.get("mobile")%>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="textArea" class="col-lg-2 control-label">Address</label>
                                <div class="col-lg-10">
                                    <textarea class="form-control" id="addresss" rows="3" ><%=profile.get("address")%></textarea>
                                    <span class="help-block">*please enter all mandatory fields</span>
                                </div>
                            </div>
                            
                            
                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                    <button class="btn btn-default">Cancel</button>
                                    <button  class="btn btn-primary" onclick="updateProfile('${pageContext.request.contextPath}')">Submit</button>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
                <div class="tab-pane fade" id="profile">
                    <br/>
                    <form id="tab2">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <input class="form-control floating-label" id="newpassword" type="password" placeholder="New Password">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <input class="form-control floating-label" id="confirmpassword" type="password" placeholder="Confirm Password">
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