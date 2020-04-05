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
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
                    <h1 class="h4">${sessionuser.username}</h1>
                    <p>管理员</p>
                </div>
            </div>
            <!-- Sidebar Navidation Menus--><span class="heading">菜单栏</span>
            <ul class="list-unstyled">
                <li class="active"><a href="${pageContext.request.contextPath }/index/Admin_index"> <i class="icon-home"></i>主页 </a></li>
                <li><a href="${pageContext.request.contextPath }/admin/Admin_message"> <i class="icon-mail"></i>消息 </a></li>
                <li><a href="${pageContext.request.contextPath }/business/Admin_list?type=1&pageSize=6"> <i class="icon-interface-windows"></i>售后服务</a></li>
                <li><a href="${pageContext.request.contextPath }/business/Admin_list?type=3&pageSize=6"> <i class="icon-interface-windows"></i>预约看房</a></li>
                <li><a href="${pageContext.request.contextPath }/business/Admin_list?type=4&pageSize=6"> <i class="icon-interface-windows"></i>定制房源</a></li>
                <li><a href="#exampledropdownDropdown1" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>用户管理 </a>
                    <ul id="exampledropdownDropdown1" class="collapse list-unstyled ">
                        <li><a href="${pageContext.request.contextPath }/user/Admin_list?pageSize=6">用户列表</a></li>
                        <li><a href="${pageContext.request.contextPath }/user/Admin_insert">添加用户</a></li>
                    </ul>
                </li>
                <li><a href="#exampledropdownDropdown2" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>房源管理 </a>
                    <ul id="exampledropdownDropdown2" class="collapse list-unstyled ">
                        <li><a href="${pageContext.request.contextPath }/house/Admin_list?pageSize=6">房源列表</a></li>
                        <li><a href="${pageContext.request.contextPath }/house/Admin_insert">添加房源</a></li>
                    </ul>
                </li>
                <li><a href="#exampledropdownDropdown3" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>订单管理 </a>
                    <ul id="exampledropdownDropdown3" class="collapse list-unstyled ">
                        <li><a href="${pageContext.request.contextPath }/order/Admin_list?pageSize=6">订单列表</a></li>
                        <li><a href="${pageContext.request.contextPath }/order/Admin_insert">添加订单</a></li>
                    </ul>
                </li>
                <li><a href="#exampledropdownDropdown4" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>业务办理管理 </a>
                    <ul id="exampledropdownDropdown4" class="collapse list-unstyled ">
                        <li><a href="${pageContext.request.contextPath }/business/Admin_list?type=2&pageSize=6">退租</a></li>
                        <li><a href="${pageContext.request.contextPath }/business/Admin_list?type=5&pageSize=6">其他问题</a></li>
                    </ul>
                </li>
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
                    <h2 class="no-margin-bottom">Snialrenting</h2>
                </div>
            </header>
            <!-- Dashboard Counts Section-->
            <section class="tables">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-close">
                                    <div class="dropdown">
                                        <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>关闭</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>编辑</a></div>
                                    </div>
                                </div>
                                <div class="card-header d-flex align-items-center">
                                    <h3 class="h4">房源管理  （共 ${total} 条）</h3>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <a href="${pageContext.request.contextPath }/house/Admin_insert" type="button" class="btn btn-primary">添加房源</a>
                                        <h3 class="h4"></h3>
                                        <c:if test="${!empty msg}">
                                            <c:choose>
                                                <c:when test="${success == true}">
                                                    <div class="alert alert-info" role="alert">
                                                        <strong>操作提示：</strong>${msg}
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="alert alert-danger" role="alert">
                                                        <strong>操作警告：</strong>${msg}
                                                    </div>
                                                </c:otherwise>
                                                </c:choose>
                                        </c:if>
                                        <c:choose>
                                            <c:when test="${total==0}">
                                                <div class="container-fluid">
                                                    <h3 class="h4"></h3>
                                                    <h2 class="no-margin-bottom">查询到的数据暂时为空！</h2>
                                                    <h3 class="h4"></h3>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <table class="table table-bordered">
                                                    <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>房东ID</th>
                                                        <th>类型</th>
                                                        <th>地址</th>
                                                        <th>价格</th>
                                                        <th>卧</th>
                                                        <th>浴</th>
                                                        <th>厨</th>
                                                        <th>客</th>
                                                        <th>截止</th>
                                                        <th>操作</th>
                                                        <th>#，房间</th>
                                                        <th>价格(原,优)</th>
                                                        <th>状态</th>
                                                        <th>操作</th>
                                                        <th>网站广告位</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${data}" var="h">
                                                        <c:choose>
                                                            <c:when test="${h.snailRooms.size()!=1}">
                                                                <tr>
                                                                    <th rowspan="${h.snailRooms.size()+1}" scope="row">${h.id}</th>
                                                                    <td rowspan="${h.snailRooms.size()+1}">${h.userId}</td>
                                                                    <td rowspan="${h.snailRooms.size()+1}">
                                                                        <c:if test="${h.type == 1}">合租</c:if>
                                                                        <c:if test="${h.type == 2}">整租</c:if>
                                                                    </td>
                                                                    <td rowspan="${h.snailRooms.size()+1}">${h.address}</td>
                                                                    <td rowspan="${h.snailRooms.size()+1}">${h.housePrice}</td>
                                                                    <td rowspan="${h.snailRooms.size()+1}">${h.bedroom}</td>
                                                                    <td rowspan="${h.snailRooms.size()+1}">${h.bath}</td>
                                                                    <td rowspan="${h.snailRooms.size()+1}">${h.kitchen}</td>
                                                                    <td rowspan="${h.snailRooms.size()+1}">${h.living}</td>
                                                                    <td rowspan="${h.snailRooms.size()+1}"><fmt:formatDate value="${h.validTime}" pattern="yyyy年MM月dd日hh分mm秒" /></td>
                                                                    <td rowspan="${h.snailRooms.size()+1}">
                                                                        <a class="btn btn-primary" href="${pageContext.request.contextPath }/house/Admin_update?id=${h.id}&pageNum=${pageNum}&pageSize=${pageSize}">修改</a>
                                                                        <a class="btn btn-primary" href="${pageContext.request.contextPath }/house/Admin_delete?id=${h.id}&pageNum=${pageNum}&pageSize=${pageSize}">删除</a>
                                                                    </td>
                                                                </tr>
                                                                <c:forEach items="${h.snailRooms}" var="r">
                                                                    <tr>
                                                                        <td>${r.id}，${r.name}</td>
                                                                        <td>${r.price}，${r.sale}</td>
                                                                        <td>
                                                                            <c:if test="${r.state == 0}">出租中</c:if>
                                                                            <c:if test="${r.state == 1}">已租</c:if>
                                                                            <c:if test="${r.state == 2}">停用</c:if>
                                                                            <c:if test="${r.state == 3}">审核中</c:if>
                                                                            <c:if test="${r.state == 4}">装修</c:if>
                                                                            <c:if test="${r.state == 5}">准备签约</c:if>
                                                                        </td>
                                                                        <td>
                                                                            <c:choose>
                                                                                <c:when test="${r.state==0}">
                                                                                    <a class="btn btn-primary" href="${pageContext.request.contextPath }/house/Admin_update/state?state=2&id=${r.id}&houseId=${h.id}&pageNum=${pageNum}&pageSize=${pageSize}">停用</a>
                                                                                    <a class="btn btn-primary" href="${pageContext.request.contextPath }/house/Admin_update/state?state=4&id=${r.id}&houseId=${h.id}&pageNum=${pageNum}&pageSize=${pageSize}">维修</a>
                                                                                </c:when>
                                                                                <c:otherwise>
                                                                                    <a class="btn btn-primary" href="${pageContext.request.contextPath }/house/Admin_update/state?state=0&id=${r.id}&houseId=${h.id}&pageNum=${pageNum}&pageSize=${pageSize}">启用</a>
                                                                                </c:otherwise>
                                                                            </c:choose>
                                                                        </td>
                                                                        <td>
                                                                            <c:choose>
                                                                                <c:when test="${r.bannerType==null}">
                                                                                    <a class="btn btn-primary" href="${pageContext.request.contextPath }/banner/Admin_insert?type=1&roomId=${r.id}&pageNum=${pageNum}&pageSize=${pageSize}">加入优惠广告位</a>
                                                                                    <a class="btn btn-primary" href="${pageContext.request.contextPath }/banner/Admin_insert?type=2&roomId=${r.id}&pageNum=${pageNum}&pageSize=${pageSize}">加入推荐广告位</a>
                                                                                </c:when>
                                                                                <c:otherwise>
                                                                                    <a class="btn btn-primary" href="${pageContext.request.contextPath }/banner/Admin_delete?roomId=${r.id}&pageNum=${pageNum}&pageSize=${pageSize}">移除广告位</a>
                                                                                </c:otherwise>
                                                                            </c:choose>
                                                                        </td>
                                                                    </tr>
                                                                </c:forEach>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <tr>
                                                                    <th scope="row">${h.id}</th>
                                                                    <td>${h.userId}</td>
                                                                    <td>
                                                                        <c:if test="${h.type == 1}">合租</c:if>
                                                                        <c:if test="${h.type == 2}">整租</c:if>
                                                                    </td>
                                                                    <td>${h.address}</td>
                                                                    <td>${h.housePrice}</td>
                                                                    <td>${h.bedroom}</td>
                                                                    <td>${h.bath}</td>
                                                                    <td>${h.kitchen}</td>
                                                                    <td>${h.living}</td>
                                                                    <td><fmt:formatDate value="${h.validTime}" pattern="yyyy年MM月dd日hh分mm秒" /></td>
                                                                    <td>
                                                                        <a class="btn btn-primary" href="${pageContext.request.contextPath }/house/Admin_update?id=${h.id}&pageNum=${pageNum}&pageSize=${pageSize}">修改</a>
                                                                        <a class="btn btn-primary" href="${pageContext.request.contextPath }/house/Admin_delete?id=${h.id}&pageNum=${pageNum}&pageSize=${pageSize}">删除</a>
                                                                    </td>
                                                                    <c:forEach items="${h.snailRooms}" var="r">
                                                                        <td>${r.id}，${r.name}</td>
                                                                        <td>${r.price}，${r.sale}</td>
                                                                        <td>
                                                                            <c:if test="${r.state == 0}">出租中</c:if>
                                                                            <c:if test="${r.state == 1}">已租</c:if>
                                                                            <c:if test="${r.state == 2}">停用</c:if>
                                                                            <c:if test="${r.state == 3}">审核中</c:if>
                                                                            <c:if test="${r.state == 4}">装修</c:if>
                                                                            <c:if test="${r.state == 5}">准备签约</c:if>
                                                                        </td>
                                                                        <td>
                                                                            <c:choose>
                                                                                <c:when test="${r.state==0}">
                                                                                    <a class="btn btn-primary" href="${pageContext.request.contextPath }/house/Admin_update/state?state=2&id=${r.id}&houseId=${h.id}&pageNum=${pageNum}&pageSize=${pageSize}">停用</a>
                                                                                    <a class="btn btn-primary" href="${pageContext.request.contextPath }/house/Admin_update/state?state=4&id=${r.id}&houseId=${h.id}&pageNum=${pageNum}&pageSize=${pageSize}">维修</a>
                                                                                </c:when>
                                                                                <c:otherwise>
                                                                                    <a class="btn btn-primary" href="${pageContext.request.contextPath }/house/Admin_update/state?state=0&id=${r.id}&houseId=${h.id}&pageNum=${pageNum}&pageSize=${pageSize}">启用</a>
                                                                                </c:otherwise>
                                                                            </c:choose>
                                                                        </td>
                                                                        <td>
                                                                            <c:choose>
                                                                                <c:when test="${r.bannerType==null}">
                                                                                <a class="btn btn-primary" href="${pageContext.request.contextPath }/banner/Admin_insert?type=1&roomId=${r.id}&pageNum=${pageNum}&pageSize=${pageSize}">加入优惠广告位</a>
                                                                                <a class="btn btn-primary" href="${pageContext.request.contextPath }/banner/Admin_insert?type=2&roomId=${r.id}&pageNum=${pageNum}&pageSize=${pageSize}">加入推荐广告位</a>
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                <a class="btn btn-primary" href="${pageContext.request.contextPath }/banner/Admin_delete?roomId=${r.id}&pageNum=${pageNum}&pageSize=${pageSize}">移除广告位</a>
                                                                            </c:otherwise>
                                                                            </c:choose>
                                                                           </td>
                                                                    </c:forEach>
                                                                </tr>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                                <!-- page -->
                                                <ul class="pagination pagination-lg">
                                                    <li <c:if test="${pageNum-1 <=0}">class="disabled"</c:if>> <a <c:if test="${pageNum-1 >0}" >href="${pageContext.request.contextPath }/house/Admin_list?pageNum=${pageNum-1}&pageSize=${pageSize}"</c:if> type="button" class="btn btn-primary"><i>上一页</i></a></li>
                                                    <c:forEach var="prePageNum" begin="1" end="${total/pageSize+1}">
                                                        <li <c:if test="${prePageNum == pageNum}" >class="active" </c:if> ><a href="${pageContext.request.contextPath }/house/Admin_list?pageNum=${prePageNum}&pageSize=${pageSize}" type="button" class="btn btn-primary">${prePageNum}</a></li>
                                                    </c:forEach>
                                                    <li><a <c:if test="${pageNum < total/pageSize}" >href="${pageContext.request.contextPath }/house/Admin_list?pageNum=${pageNum+1}&pageSize=${pageSize}"</c:if> type="button" class="btn btn-primary"><i>下一页</i></a></li>
                                                </ul>
                                                <!-- //page -->
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
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