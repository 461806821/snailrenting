<%--
  Created by IntelliJ IDEA.
  User: alien
  Date: 2020/3/19 0019
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>蜗牛房屋后台管理系统（Snailrenting System）</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="robots" content="all,follow">
        <!-- Bootstrap CSS-->
        <link rel="stylesheet" href="/static/snailAdmin/vendor/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome CSS-->
        <link rel="stylesheet" href="/static/snailAdmin/vendor/font-awesome/css/font-awesome.min.css">
        <!-- Fontastic Custom icon font-->
        <link rel="stylesheet" href="/static/snailAdmin/css/fontastic.css">
        <!-- Google fonts - Poppins -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
        <!-- theme stylesheet-->
        <link rel="stylesheet" href="/static/snailAdmin/css/style.default.css" id="theme-stylesheet">
        <!-- Custom stylesheet - for your changes-->
        <link rel="stylesheet" href="/static/snailAdmin/css/custom.css">
        <!-- Favicon-->
        <link rel="shortcut icon" href="/static/snailAdmin/img/favicon.ico">
        <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>
<body>
<div class="page login-page">
    <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
            <div class="row">
                <!-- Logo & Information Panel-->
                <div class="col-lg-6">
                    <div class="info d-flex align-items-center">
                        <div class="content">
                            <div class="logo">
                                <h1>蜗牛房屋后台管理系统</h1>
                            </div>
                            <p>Snailrenting Manager System</p>
                        </div>
                    </div>
                </div>
                <!-- Form Panel    -->
                <div class="col-lg-6 bg-white">
                    <div class="form d-flex align-items-center">
                        <div class="content">
                            <form method="post" action="${pageContext.request.contextPath }/admin/login" class="form-validate">
                                <div class="form-group">
                                    <input id="login-username" type="text" name="username" required data-msg="请输入您的用户名" class="input-material">
                                    <label for="login-username" class="label-material">用户名</label>
                                </div>
                                <div class="form-group">
                                    <input id="login-password" type="password" name="password" required data-msg="请输入您的密码" class="input-material">
                                    <label for="login-password" class="label-material">密码</label>
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-primary" value="登录"  />
                                    <c:if test="${!empty msg }">
                                        <label class="label-material">${msg}</label>
                                    </c:if>
                                </div>
                                <!-- This should be submit button but I replaced it with <a> for demo purposes-->
                            </form><a href="#" class="forgot-pass">忘记密码?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyrights text-center">
        <p>Design by <a href="#" class="external">Alien</a>
            <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
        </p>
    </div>
</div>
<!-- JavaScript files-->
<script src="/static/snailAdmin/vendor/jquery/jquery.min.js"></script>
<script src="/static/snailAdmin/vendor/popper.js/umd/popper.min.js"> </script>
<script src="/static/snailAdmin/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/static/snailAdmin/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="/static/snailAdmin/vendor/chart.js/Chart.min.js"></script>
<script src="/static/snailAdmin/vendor/jquery-validation/jquery.validate.min.js"></script>
<!-- Main File-->
<script src="/static/snailAdmin/js/front.js"></script>
</body>
</html>