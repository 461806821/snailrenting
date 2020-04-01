<%--
  Created by IntelliJ IDEA.
  User: alien
  Date: 2020/3/19 0019
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>蜗牛房屋后台管理系统</title>
    <!-- Bootstrap core CSS -->
    <link href="/static/snailAdmin/css/error-bootstrap.css" rel="stylesheet">
    <!-- FONT AWESOME CSS -->
    <link href="/static/snailAdmin/css/error-font-awesome.min.css" rel="stylesheet" />
    <!--GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Nova+Flat' rel='stylesheet' type='text/css'>
    <!-- custom CSS here -->
    <link href="/static/snailAdmin/css/error-style.css" rel="stylesheet" />
</head>
<body>


<div class="container">

    <div class="row pad-top text-center">
        <div class="col-md-6 col-md-offset-3 text-center">
            <h1> 你做了什么? </h1>
            <h5> 现在回到使用下面的链接</h5>
            <span id="error-link"></span>
            <h2>! 错误 !</h2>
        </div>
    </div>

    <div class="row text-center">
        <div class="col-md-8 col-md-offset-2">
            <h3> <i  class="fa fa-lightbulb-o fa-5x"></i> </h3>
            <a href="${pageContext.request.contextPath }/index/Admin_index" class="btn btn-primary">返回主页</a>
        </div>
    </div>

</div>
<!-- /.container -->


<!--Core JavaScript file  -->
<script src="/static/snailAdmin/js/jquery-1.10.2.js"></script>
<!--bootstrap JavaScript file  -->
<script src="/static/snailAdmin/js/bootstrap.js"></script>
<!--Count Number JavaScript file  -->
<script src="/static/snailAdmin/js/countUp.js"></script>
<!--Custom JavaScript file  -->
<script src="/static/snailAdmin/js/custom.js"></script>
</body>
</html>
