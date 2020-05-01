<%--
  Created by IntelliJ IDEA.
  User: alien
  Date: 2020/3/21 0021
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
                    <!-- Navbar Brand --><a href="${pageContext.request.contextPath }/index/Admin_index" class="navbar-brand d-none d-sm-inline-block">
                    <div class="brand-text d-none d-lg-inline-block"><span>蜗牛房屋 </span><strong>后台管理系统</strong></div>
                    <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div></a>
                    <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                </div>
                <!-- Navbar Menu -->
                <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                    <!-- Search-->
                    <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li>
                    <!-- Notifications-->
                    <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">${unBusiness.size()}</span></a>
                        <ul aria-labelledby="notifications" class="dropdown-menu">
                            <c:forEach items="${unBusiness}" var="b" begin="0" end="6">
                                <li><a rel="nofollow" href="#" class="dropdown-item">
                                    <div class="notification">
                                        <div class="notification-content"><i class="fa fa-envelope bg-green"></i>${b.desp} </div>
                                        <div class="notification-time"><small>${b.ago}</small></div>
                                    </div></a></li>
                            </c:forEach>
                        </ul>
                    </li>
                    <!-- Messages                        -->
<%--                    <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">10</span></a>--%>
<%--                        <ul aria-labelledby="notifications" class="dropdown-menu">--%>
<%--                            <li><a rel="nofollow" href="#" class="dropdown-item d-flex">--%>
<%--                                <div class="msg-profile"> <img src="/static/snailAdmin/img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>--%>
<%--                                <div class="msg-body">--%>
<%--                                    <h3 class="h5">Jason Doe</h3><span>Sent You Message</span>--%>
<%--                                </div></a></li>--%>
<%--                            <li><a rel="nofollow" href="#" class="dropdown-item d-flex">--%>
<%--                                <div class="msg-profile"> <img src="/static/snailAdmin/img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>--%>
<%--                                <div class="msg-body">--%>
<%--                                    <h3 class="h5">Frank Williams</h3><span>Sent You Message</span>--%>
<%--                                </div></a></li>--%>
<%--                            <li><a rel="nofollow" href="#" class="dropdown-item d-flex">--%>
<%--                                <div class="msg-profile"> <img src="/static/snailAdmin/img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>--%>
<%--                                <div class="msg-body">--%>
<%--                                    <h3 class="h5">Ashley Wood</h3><span>Sent You Message</span>--%>
<%--                                </div></a></li>--%>
<%--                            <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>Read all messages   </strong></a></li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
                    <!-- Logout    -->
                    <li class="nav-item"><a href="${pageContext.request.contextPath }/admin/logout" class="nav-link logout"> <span class="d-none d-sm-inline">退出</span><i class="fa fa-sign-out"></i></a></li>
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
<%--            <li><a > <i class="icon-mail"></i>消息 </a></li>--%>
            <li><a href="${pageContext.request.contextPath }/message/Admin_list"> <i class="icon-mail"></i>消息 </a></li>
            <li><a href="${pageContext.request.contextPath }/order/Admin_list?pageSize=6"><i class="icon-interface-windows"></i>租户签约 查看 / 审核 </a></li>
<%--            <li><a href="${pageContext.request.contextPath }/business/Admin_list?type=1&pageSize=6"> <i class="icon-interface-windows"></i>售后服务</a></li>--%>
<%--            <li><a href="${pageContext.request.contextPath }/business/Admin_list?type=3&pageSize=6"> <i class="icon-interface-windows"></i>预约看房</a></li>--%>
<%--            <li><a href="${pageContext.request.contextPath }/business/Admin_list?type=4&pageSize=6"> <i class="icon-interface-windows"></i>定制房源</a></li>--%>
            <li><a href="#exampledropdownDropdown2" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>房源管理 </a>
                <ul id="exampledropdownDropdown2" class="collapse list-unstyled ">
                    <li><a href="${pageContext.request.contextPath }/house/Admin_list?pageSize=6">房源列表</a></li>
                    <li><a href="${pageContext.request.contextPath }/house/Admin_houseinsert">添加房源</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown1" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>用户管理 </a>
                <ul id="exampledropdownDropdown1" class="collapse list-unstyled ">
                    <li><a href="${pageContext.request.contextPath }/user/Admin_list?pageSize=6">用户列表</a></li>
                    <li><a href="${pageContext.request.contextPath }/user/Admin_userinsert">添加用户</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown4" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>业务办理管理 </a>
                <ul id="exampledropdownDropdown4" class="collapse list-unstyled ">
                    <li><a href="${pageContext.request.contextPath }/business/Admin_businessinsert">添加业务</a></li>
                    <li><a href="${pageContext.request.contextPath }/business/Admin_list?type=4&pageSize=6">定制房源</a></li>
                    <li><a href="${pageContext.request.contextPath }/business/Admin_list?type=3&pageSize=6">预约看房</a></li>
                    <li><a href="${pageContext.request.contextPath }/business/Admin_list?type=1&pageSize=6">售后服务</a></li>
                    <li><a href="${pageContext.request.contextPath }/business/Admin_list?type=2&pageSize=6">退租</a></li>
                    <li><a href="${pageContext.request.contextPath }/business/Admin_list?type=5&pageSize=6">其他问题</a></li>
                </ul>
            </li>
            <li><a href="${pageContext.request.contextPath }/banner/Admin_list"> <i class="icon-interface-windows"></i>网站广告 </a></li>
        </ul>
        <span class="heading">数据</span>
        <ul class="list-unstyled">
            <li> <a href="${pageContext.request.contextPath }/data/Admin_statistics"> <i class="fa fa-bar-chart"></i>数据统计 </a></li>
<%--            <li> <a href="${pageContext.request.contextPath }/data/Admin_analyze"> <i class="icon-screen"></i>数据分析 </a></li>--%>
            <li> <a href="${pageContext.request.contextPath }/data/Admin_predict"> <i class="icon-flask"></i>数据预测 </a></li>
<%--            <li> <a href="#"> <i class="icon-padnote"></i>其他 </a></li>--%>
        </ul>
    </nav>
