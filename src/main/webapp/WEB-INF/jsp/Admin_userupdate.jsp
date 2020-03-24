<%--
  Created by IntelliJ IDEA.
  User: alien
  Date: 2020/3/19 0019
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>蜗牛房屋后台管理系统</title>
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
<div class="page">
    <!-- Main Navbar-->
    <header class="header">
        <nav class="navbar">
            <!-- Search Box-->
            <div class="search-box">
                <button class="dismiss"><i class="icon-close"></i></button>
                <form id="searchForm" action="#" role="search">
                    <input type="search" placeholder="想搜索的内容？" class="form-control">
                </form>
            </div>
            <div class="container-fluid">
                <div class="navbar-holder d-flex align-items-center justify-content-between">
                    <!-- Navbar Header-->
                    <div class="navbar-header">
                        <!-- Navbar Brand --><a href="${pageContext.request.contextPath }/admin/Admin_index" class="navbar-brand d-none d-sm-inline-block">
                        <div class="brand-text d-none d-lg-inline-block"><span>蜗牛房屋 </span><strong>后台管理系统</strong></div>
                        <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div></a>
                        <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                    </div>
                    <!-- Navbar Menu -->
                    <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                        <!-- Search-->
                        <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li>
                        <!-- Notifications-->
                        <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">12</span></a>
                            <ul aria-labelledby="notifications" class="dropdown-menu">
                                <li><a rel="nofollow" href="#" class="dropdown-item">
                                    <div class="notification">
                                        <div class="notification-content"><i class="fa fa-envelope bg-green"></i>You have 6 new messages </div>
                                        <div class="notification-time"><small>4 minutes ago</small></div>
                                    </div></a></li>
                                <li><a rel="nofollow" href="#" class="dropdown-item">
                                    <div class="notification">
                                        <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                        <div class="notification-time"><small>4 minutes ago</small></div>
                                    </div></a></li>
                                <li><a rel="nofollow" href="#" class="dropdown-item">
                                    <div class="notification">
                                        <div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>
                                        <div class="notification-time"><small>4 minutes ago</small></div>
                                    </div></a></li>
                                <li><a rel="nofollow" href="#" class="dropdown-item">
                                    <div class="notification">
                                        <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                        <div class="notification-time"><small>10 minutes ago</small></div>
                                    </div></a></li>
                                <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all notifications                                            </strong></a></li>
                            </ul>
                        </li>
                        <!-- Messages                        -->
                        <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">10</span></a>
                            <ul aria-labelledby="notifications" class="dropdown-menu">
                                <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                                    <div class="msg-profile"> <img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                    <div class="msg-body">
                                        <h3 class="h5">Jason Doe</h3><span>Sent You Message</span>
                                    </div></a></li>
                                <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                                    <div class="msg-profile"> <img src="/static/snailAdmin/img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                    <div class="msg-body">
                                        <h3 class="h5">Frank Williams</h3><span>Sent You Message</span>
                                    </div></a></li>
                                <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                                    <div class="msg-profile"> <img src="/static/snailAdmin/img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                    <div class="msg-body">
                                        <h3 class="h5">Ashley Wood</h3><span>Sent You Message</span>
                                    </div></a></li>
                                <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>Read all messages   </strong></a></li>
                            </ul>
                        </li>
                        <%--                        <!-- Languages dropdown    -->--%>
                        <%--                        <li class="nav-item dropdown"><a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle"><img src="img/flags/16/GB.png" alt="English"><span class="d-none d-sm-inline-block">English</span></a>--%>
                        <%--                            <ul aria-labelledby="languages" class="dropdown-menu">--%>
                        <%--                                <li><a rel="nofollow" href="#" class="dropdown-item"> <img src="img/flags/16/DE.png" alt="English" class="mr-2">German</a></li>--%>
                        <%--                                <li><a rel="nofollow" href="#" class="dropdown-item"> <img src="img/flags/16/FR.png" alt="English" class="mr-2">French                                         </a></li>--%>
                        <%--                            </ul>--%>
                        <%--                        </li>--%>
                        <!-- Logout    -->
                        <li class="nav-item"><a href="${pageContext.request.contextPath }/admin/Admin_login" class="nav-link logout"> <span class="d-none d-sm-inline">退出</span><i class="fa fa-sign-out"></i></a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <nav class="side-navbar">
            <!-- Sidebar Header-->
            <div class="sidebar-header d-flex align-items-center">
                <div class="avatar"><img src="/static/snailAdmin/img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                <div class="title">
                    <h1 class="h4">${username}</h1>
                    <p>管理员</p>
                </div>
            </div>
            <!-- Sidebar Navidation Menus--><span class="heading">菜单栏</span>
            <ul class="list-unstyled">
                <li class="active"><a href="${pageContext.request.contextPath }/admin/Admin_index"> <i class="icon-home"></i>主页 </a></li>
                <li><a href="${pageContext.request.contextPath }/admin/Admin_message"> <i class="icon-mail"></i>消息 </a></li>
                <li><a href="tables.html"> <i class="icon-grid"></i>Tables </a></li>
                <li><a href="charts.html"> <i class="icon-picture"></i>Charts </a></li>
                <li><a href="forms.html"> <i class="icon-padnote"></i>Forms </a></li>
                <li><a href="#exampledropdownDropdown1" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>用户管理 </a>
                    <ul id="exampledropdownDropdown1" class="collapse list-unstyled ">
                        <li><a href="${pageContext.request.contextPath }/user/Admin_list">用户列表</a></li>
                        <li><a href="${pageContext.request.contextPath }/user/Admin_userinsert">添加用户</a></li>
                    </ul>
                </li>
                <li><a href="#exampledropdownDropdown2" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>房源管理 </a>
                    <ul id="exampledropdownDropdown2" class="collapse list-unstyled ">
                        <li><a href="${pageContext.request.contextPath }/house/Admin_list">房源列表</a></li>
                        <li><a href="${pageContext.request.contextPath }/house/Admin_update">修改房源</a></li>
                        <li><a href="${pageContext.request.contextPath }/house/Admin_insert">添加房源</a></li>
                    </ul>
                </li>
                <li><a href="#exampledropdownDropdown3" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>订单管理 </a>
                    <ul id="exampledropdownDropdown3" class="collapse list-unstyled ">
                        <li><a href="${pageContext.request.contextPath }/order/Admin_orderlist">订单列表</a></li>
                        <li><a href="${pageContext.request.contextPath }/order/Admin_orderpass">审核订单</a></li>
                        <li><a href="${pageContext.request.contextPath }/order/Admin_orderupdate">修改订单</a></li>
                        <li><a href="${pageContext.request.contextPath }/order/Admin_orderadd">添加订单</a></li>
                    </ul>
                </li>
                <li><a href="#exampledropdownDropdown4" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>售后服务 </a>
                    <ul id="exampledropdownDropdown4" class="collapse list-unstyled ">
                        <li><a href="${pageContext.request.contextPath }/admin/Admin_index">售后</a></li>
                    </ul>
                </li>
<%--                <li><a href="login.html"> <i class="icon-interface-windows"></i>Login page </a></li>--%>
            </ul><span class="heading">数据</span>
            <ul class="list-unstyled">
                <li> <a href="#"> <i class="fa fa-bar-chart"></i>数据统计 </a></li>
                <li> <a href="#"> <i class="icon-screen"></i>数据分析 </a></li>
                <li> <a href="#"> <i class="icon-flask"></i>数据预测 </a></li>
                <li> <a href="#"> <i class="icon-padnote"></i>其他 </a></li>
            </ul>
        </nav>
        <div class="content-inner">
            <!-- Page Header-->
            <header class="page-header">
                <div class="container-fluid">
                    <h2 class="no-margin-bottom">修改用户</h2>
                </div>
            </header>
            <!-- Breadcrumb-->
            <div class="breadcrumb-holder container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/admin/Admin_index">主页 </a></li>
                    <li class="breadcrumb-item active">修改用户            </li>
                </ul>
            </div>
            <!-- Dashboard Counts Section-->
            <section class="tables">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-close">
                                    <div class="dropdown">
                                        <button type="button" id="closeCard5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard5" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>关闭</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>编辑</a></div>
                                    </div>
                                </div>
                                <div class="card-header d-flex align-items-center">
                                    <h3 class="h4">用户信息 </h3>
                                </div>
                                <div class="card-body">
                                    <form class="form-horizontal" action="${pageContext.request.contextPath }/user/Admin_update" method="post" >
                                        <div class="form-group row">
                                            <div class="col-sm-9">
                                                <c:if test="${!empty msg }">
                                                    <label class="col-sm-3 form-control-label">${msg }</label>
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <input type="hidden" name="id" value="${data.id }"/>
                                            <label class="col-sm-3 form-control-label">用户名</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" name="username" value="${data.username}">
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">密码</label>
                                            <div class="col-sm-9">
                                                <input type="password" name="password" class="form-control" value="${data.password}">
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">确认密码</label>
                                            <div class="col-sm-9">
                                                <input type="password" name="password1" class="form-control" value="${data.password}"><small class="help-block-none">请再次输入密码.</small>
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <div class="col-sm-4 offset-sm-3">
                                                <a href="${pageContext.request.contextPath }/user/Admin_list" type="button" class="btn btn-secondary">取消</a>
                                                <button type="submit" class="btn btn-primary">修改</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Page Footer-->
            <footer class="main-footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <p>Your company &copy; 2017-2019</p>
                        </div>
                        <div class="col-sm-6 text-right">
                            <p>Design by Bootstrapious.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="#" title="网页模板" target="_blank">网页模板</a></p>
                            <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="/static/snailAdmin/vendor/jquery/jquery.min.js"></script>
<script src="/static/snailAdmin/vendor/popper.js/umd/popper.min.js"> </script>
<script src="/static/snailAdmin/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/static/snailAdmin/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="/static/snailAdmin/vendor/chart.js/Chart.min.js"></script>
<script src="/static/snailAdmin/vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="/static/snailAdmin/js/charts-home.js"></script>
<!-- Main File-->
<script src="/static/snailAdmin/js/front.js"></script>
</body>
</html>