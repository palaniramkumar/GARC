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
    <div class="container well">
        <ul class="nav nav-tabs" style="margin-bottom: 15px;">

            <li class="active"><a href="#profile" data-toggle="tab">Profile</a></li>
            <li><a href="#password" data-toggle="tab">Change Password</a></li>

        </ul>
        <div id="myTabContent" class="tab-content">

            <div class="tab-pane fade active in" id="profile">
                <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
            </div>
            <div class="tab-pane fade" id="password">
                <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.</p>
            </div>

        </div>
    </div>
    <%@ include file="../layout/footer.jsp" %>
</body>

</html>