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
<!DOCTYPE html>
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
                    <h2 class="no-margin-bottom">Snialrenting</h2>
                </div>
            </header>
        <!-- Page Header-->
        <header class="page-header">
            <div class="container-fluid">
                <h2 class="no-margin-bottom">消息列表（共 ${total} 条）</h2>
            </div>
        </header>
        <section class="projects no-padding-top"><div class="container-fluid"></div></section>
            <!-- Projects Section-->
            <section class="projects no-padding-top">
                <div class="container-fluid">
                    <!-- Project-->
                    <c:forEach items="${data }" var="m">
                    <div class="project">
                        <div class="row bg-white has-shadow">
                            <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                                <div class="project-title d-flex align-items-center">
<%--                                    <div class="image has-shadow"><img src="/static/web/images/m.png" alt="..." class="img-fluid"></div>--%>
                                    <div class="text">
                                        <h3 class="h4">${m.snailUser.username}</h3><small>${m.content}</small>
                                    </div>
                                </div>
                                <div class="project-date"><span class="hidden-sm-down"><fmt:formatDate value="${m.createDate}" pattern="yyyy 年 MM 月 dd 日" /></span></div>
                            </div>
                            <div class="right-col col-lg-6 d-flex align-items-center">
                                <div class="time"><i class="fa fa-clock-o"></i><fmt:formatDate value="${m.createDate}" pattern=" HH : mm" /></div>
                                <div class="comments"><i class="fa fa-comment-o">${m.replySize }</i></div>
                                <a href="${pageContext.request.contextPath }/message/Admin_delete?id=${m.id}" type="button" class="btn btn-primary">删除</a>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </section>
        <!-- Projects Section-->
        <section class="projects no-padding-top">
            <div class="container-fluid">
        <!-- page -->
        <ul class="pagination pagination-lg">
            <li <c:if test="${pageNum-1 <=0}">class="disabled"</c:if>> <a <c:if test="${pageNum-1 >0}" >href="${pageContext.request.contextPath }/message/Admin_list?pageNum=${pageNum-1}&pageSize=${pageSize}"</c:if> type="button" class="btn btn-primary"><i>上一页</i></a></li>
            <c:forEach var="prePageNum" begin="1" end="${total/pageSize+1}">
                <li <c:if test="${prePageNum == pageNum}" >class="active" </c:if> ><a href="${pageContext.request.contextPath }/message/Admin_list?pageNum=${prePageNum}&pageSize=${pageSize}" type="button" class="btn btn-primary">${prePageNum}</a></li>
            </c:forEach>
            <li><a <c:if test="${pageNum < total/pageSize}" >href="${pageContext.request.contextPath }/message/Admin_list?pageNum=${pageNum+1}&pageSize=${pageSize}"</c:if> type="button" class="btn btn-primary"><i>下一页</i></a></li>
        </ul>
            </div></section>
        <!-- //page -->
            <!-- Nav Area Start-->
            <%@ include file="Admin_footer.jsp"%>
            <!-- Nav Area End-->
        </div>
        </section><
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