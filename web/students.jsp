<%-- 
    Document   : students
    Created on : Sep 19, 2014, 1:34:33 AM
    Author     : Ramkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Welcome Garc 4.0</title>
        <%@ include file="layout/header.jsp" %>
    <div class="container">
        <div class="btn-group">
  <button type="button" class="btn btn-info">1</button>
  <button type="button" class="btn btn-info">2</button>

  <div class="btn-group">
    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
      Dropdown
      <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu">
      <li><a href="#">Dropdown link</a></li>
      <li><a href="#">Dropdown link</a></li>
    </ul>
  </div>
  
</div>
        <div class="row">
            <div class="col-lg-5">
                <div class="media ">
                    <a class="pull-left" href="#">
                        <img class="media-object dp img-circle" src="http://www.huffmancode.com/img/hardik.jpg" style="width: 100px;height:100px;">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Hardik Sondagar <small> India</small></h4>
                        <h5>Software Developer at <a href="http://gridle.in">Gridle.in</a></h5>
                        <hr style="margin:8px auto">

                        <span class="label label-default">HTML5/CSS3</span>
                        <span class="label label-default">jQuery</span>
                        <span class="label label-info">CakePHP</span>
                        <span class="label label-default">Android</span>
                    </div>
                </div>

            </div>



        </div>
    </div>
    <%@ include file="layout/footer.jsp" %>
    <script type="text/javascript">
 $(function(){

    $(".dropdown-menu li a").click(function(){

      $(".btn:first-child").text($(this).text());
      $(".btn:first-child").val($(this).text());

   });

});

    </script>
</body>

</html>