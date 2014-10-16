<%-- 
    Document   : staff
    Created on : Oct 16, 2014, 2:15:18 AM
    Author     : Ramkumar
--%>

<div class="well">
    <div class="page-header">
        <h5>Garc Users <small>Students</small></h5>
    </div>
    <div class="row">
        <div class="col-sm-2">
            <div class="form-group">
                <input type="text" class="form-control floating-label" placeholder="Student Name">
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-1">
            <div class="form-group">
                <input type="text" class="form-control floating-label" placeholder="Student ID">
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Batch</span>
                <select class="form-control">
                    <option> - Select -</option>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Semester</span>
                <select class="form-control">
                    <option> - Select -</option>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Section</span>
                <select class="form-control">
                    <option> - Select -</option>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-1">
            <a href="javascript:void(0)"  onclick="updatePassword('${pageContext.request.contextPath}')" class="btn btn-warning  btn-raised" style="margin-top: 0;"> <span class="glyphicon glyphicon-plus"></span> </a>
        </div>
    </div><!-- /.row -->
</div>
        <div class="well">
            <table class="table table-striped table-hover ">
    <thead>
        <tr>
            <th>#</th>
            <th>Column heading</th>
            <th>Column heading</th>
            <th>Column heading</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="info">
            <td>3</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="success">
            <td>4</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="danger">
            <td>5</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="warning">
            <td>6</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="active">
            <td>7</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
    </tbody>
</table>
        </div>