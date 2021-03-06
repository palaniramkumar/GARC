/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var uri;
$(document).ajaxStart(function() {
    $("#loading").show();
})
$(document).ajaxComplete(function() {
    $("#loading").hide();
});
function ajaxCall(url, div, field) {
    $.ajax({
        type: "post", url: url,
        success: function(data, text) {
            if ($.trim(data) == "" || data == null) {
                $('#' + div).html("No Update");
                return;
            }
            var json;
            try {
                json = $.parseJSON(data);
            }
            catch (err) {
                $('#' + div).html(data);
                $('[data-toggle="tooltip"]').tooltip();
                return;
            }

            if (json.responsecode == "301") {
                window.location = uri + json.redirectURI;
                $('#' + div).html("Redirecting ...");
            }
            if (json.responsecode == "200") {
                if (json["count"] != null) {
                    $('#' + div).html(unescape(json["items"][0][field]));
                }
                else
                    $('#' + div).html(json[field]);
                if (json["title"] != null)
                    $('#' + div + "-title").html(json["title"]);
            }
            else {
                $('#' + div).html(json.message);
            }


        },
        error: function(request, status, error) {
            $('#' + div).html(request.responseText);
        }
    });
}

function  validateUser(deployedURL) {
    uri = deployedURL;
    var user = $('#login-username').val();
    var pass = $('#login-password').val();
    var url = uri + "/core/login.jsp?username=" + user + "&password=" + pass;
    $('#response').html("Verifying Credentials...");
    ajaxCall(url, "response", null);

}
function getStudentReport(deployedURL, reportname, param) {
    uri = deployedURL;
    var url = uri + "/core/student.jsp?action=" + reportname + "&subjectId=" + param;
    if (reportname == "detailedattendance")
        url = uri + "/core/student.jsp?action=" + reportname + "&month=" + param;
    $('#response').html("Loading...");
    ajaxCall(url, "response", "data");
    $('#viewer').slideDown();
}
function getDownloadableResource(deployedURL, subject_id) {
    uri = deployedURL;
    var url = uri + "/core/subject.jsp?action=getalldownloadableresource&subject_id=" + subject_id;
    ajaxCall(url, "response", null);
}
function updatePassword(deployedURL) {
    uri = deployedURL;
    var password = $('#newpassword').val();
    var confirmpassword = $('#confirmpassword').val();
    if(password != confirmpassword){
        $("#response").html("Password Not Match");
        return;
    }
    var url = uri + "/core/profile.jsp?action=changepassword&password="+password;
    ajaxCall(url, "response", "message");
}

function updateProfile(deployedURL) {
    uri = deployedURL;
    var address = $('#address').val();
    var mobile = $('#inputMobile').val();  
    var sslc = $('#inputSSLC').val();   
    var hsc = $('#inputHSC').val();   
    var ug = $('#inputUG').val();   
    var email = $('#inputEmail').val();   
    
    
    var url = uri + "/core/profile.jsp?action=updateprofile&address="+address+
            "&phone="+mobile+
            "&ug="+ug+
            "&hsc="+hsc+
            "&sslc="+sslc+
            "&email="+email;
    ajaxCall(url, "response", "message");
    submit();
}