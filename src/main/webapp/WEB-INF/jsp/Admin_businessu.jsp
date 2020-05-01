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
    <!-- Nav Area Start-->
    <%@ include file="Admin_nav.jsp"%>
    <!-- Nav Area End-->
        <div class="content-inner">
            <!-- Page Header-->
            <header class="page-header">
                <div class="container-fluid">
                    <h2 class="no-margin-bottom">业务信息</h2>
                </div>
            </header>
            <!-- Breadcrumb-->
            <div class="breadcrumb-holder container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/admin/Admin_index">主页 </a></li>
                    <li class="breadcrumb-item active">修改业务信息            </li>
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
                                    <h3 class="h4">修改业务信息</h3>
                                </div>
                                <div class="card-body">
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
                                    <form form="country1" class="form-horizontal" action="${pageContext.request.contextPath }/business/Admin_update" method="post">
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">用户ID：</label>
                                            <div class="col-sm-9">
                                                <input type="hidden" name="id" value="${data.id}"/>
                                                <input  value="${data.userId}" type="text" oninput = "value=value.replace(/[^\d]/g,'')" class="form-control" name="userId">
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">类型：</label>
                                            <div class="col-sm-9">
                                                <select id="country1" name="type" class="form-control mb-3">
                                                    <option value="${data.type}">
                                                            <c:if test="${data.type==1}"> 报修</c:if>
                                                            <c:if test="${data.type==2}"> 退租</c:if>
                                                            <c:if test="${data.type==3}"> 预约看房</c:if>
                                                            <c:if test="${data.type==4}"> 定制房源</c:if>
                                                            <c:if test="${data.type==5}"> 其他问题</c:if>
                                                    </option>
                                                    <option value="1">报修</option>
                                                    <option value="2">退租</option>
                                                    <option value="3">预约看房</option>
                                                    <option value="4">定制房源</option>
                                                    <option value="5">其他问题</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">详细描述：</label>
                                            <div class="col-sm-9">
                                                <input value="${data.desp}" type="text" class="form-control" name="desp" >
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <div class="col-sm-4 offset-sm-3">
                                                <a href="${pageContext.request.contextPath }/business/Admin_list" type="button" class="btn btn-secondary">取消</a>
                                                <button type="submit" class="btn btn-primary">保存</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Footer Area Start-->
            <%@ include file="Admin_footer.jsp"%>
            <!-- Footer Area End-->
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