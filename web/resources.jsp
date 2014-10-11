<%-- 
    Document   : resources
    Created on : Sep 19, 2014, 1:34:52 AM
    Author     : Ramkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Welcome Garc 4.0</title>
        <%@ include file="layout/header.jsp" %>
    <div class="container page">
        <div class="row">
        <div class="list-group col-xs-4">
            <div class="list-group-item ">
                <div class="row-picture">
                    <h1><span class="glyphicon glyphicon-calendar"></span></h1>
                </div>
                <div class="row-content">
                    <h4 class="list-group-item-heading">Year</h4>
                    <select class="form-control">
                        <option>welcome</option>
                        <option>Demo</option>
                    </select>
                </div>
            </div>

            <div class="list-group-separator"></div>
        </div>
        <div class="list-group col-xs-4">
            <div class="list-group-item ">
                <div class="row-picture">
                    <h1><span class="glyphicon glyphicon-calendar"></span></h1>
                </div>
                <div class="row-content">
                    <h4 class="list-group-item-heading">Subject</h4>
                    <select class="form-control">
                        <option>welcome</option>
                        <option>Demo</option>
                    </select>
                </div>
            </div>

            <div class="list-group-separator"></div>
        </div>
        <div class="list-group col-xs-4">
            <div class="list-group-item ">
                <div class="row-picture">
                    <h1><span class="glyphicon glyphicon-calendar"></span></h1>
                </div>
                <div class="row-content">
                    <h4 class="list-group-item-heading">Section</h4>
                    <select class="form-control">
                        <option>Both</option>
                        <option>Demo</option>
                    </select>
                </div>
            </div>

            <div class="list-group-separator"></div>
        </div>
        </div>
        <div class="alert alert-dismissable alert-warning">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <h4>Warning!</h4>
            <p>You are in the launch page, Please select any of the above option to  <a href="javascript:void(0)" class="alert-link">download </a> the resource.</p>
        </div>
        <div class="well">
            No files to download
        
        <div class="list-group">
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="icon-material-folder"></i>
        </div>
        <div class="row-content">
            <div class="least-content">15m</div>
            <h4 class="list-group-item-heading">Tile with a label</h4>
            <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus.</p>
        </div>
    </div>
    <div class="list-group-separator"></div>
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="icon-material-folder"></i>
        </div>
        <div class="row-content">
            <div class="least-content">10m</div>
            <h4 class="list-group-item-heading">Tile with a label</h4>
            <p class="list-group-item-text">Maecenas sed diam eget risus varius blandit.</p>
        </div>
    </div>
    <div class="list-group-separator"></div>
    <div class="list-group-item">
        <div class="row-action-primary">
            <i class="icon-material-folder"></i>
        </div>
        <div class="row-content">
            <div class="least-content">8m</div>
            <h4 class="list-group-item-heading">Tile with a label</h4>
            <p class="list-group-item-text">Maecenas sed diam eget risus varius blandit.</p>
        </div>
    </div>
    <div class="list-group-separator"></div>
</div>
        </div>

    </div>
    <%@ include file="layout/footer.jsp" %>
</body>

</html>