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
                                    <h3 class="h4">网站广告 （共 ${total} 条）</h3>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                         <h3 class="h4"></h3>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <a href="${pageContext.request.contextPath }/banner/Admin_list?pageSize=6" type="button" class="btn btn-primary">全部广告</a>&nbsp;
                                                <a href="${pageContext.request.contextPath }/banner/Admin_list?pageSize=6&type=1" type="button" class="btn btn-primary">优惠房源</a>&nbsp;
                                                <a href="${pageContext.request.contextPath }/banner/Admin_list?pageSize=6&type=2" type="button" class="btn btn-primary">推荐房源</a>
                                                <label class="col-sm-3 form-control-label"></label>
                                                <input type="text" name="keyword" class="form-control">
                                                <div class="input-group-append">
                                                    <button type="button" class="btn btn-primary">搜索！</button>
                                                </div>
                                            </div>
                                        </div>
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
                                                        <th>广告名称</th>
                                                        <th>房屋ID</th>
                                                        <th>创建人员ID</th>
                                                        <th>创建时间</th>
                                                        <th>更新人员ID</th>
                                                        <th>更新时间</th>
                                                        <th>操作</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${data}" var="o">
                                                        <tr>
                                                            <th scope="row">${o.id}</th>
                                                            <td>
                                                                <c:if test="${o.type == 1}">优惠房源</c:if>
                                                                <c:if test="${o.type == 2}">推荐房源</c:if></td>
                                                            <td>${o.roomId}</td>
                                                            <td>${o.createBy}</td>
                                                            <td><fmt:formatDate value="${o.createDate}" pattern="yyyy年MM月dd日hh分mm秒" /></td>
                                                            <td>${o.updateBy}</td>
                                                            <td><fmt:formatDate value="${o.updateDate}" pattern="yyyy年MM月dd日hh分mm秒" /></td>
                                                            <td><a href="${pageContext.request.contextPath }/house/Admin_list?pageSize=6&" type="button" class="btn btn-primary">前往添加</a></td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                                <!-- page -->
                                                <ul class="pagination pagination-lg">
                                                    <li <c:if test="${pageNum-1 <=0}">class="disabled"</c:if>> <a <c:if test="${pageNum-1 >0}" >href="${pageContext.request.contextPath }/order/Admin_list?pageNum=${pageNum-1}&pageSize=${pageSize}"</c:if> type="button" class="btn btn-primary"><i>上一页</i></a></li>
                                                    <c:forEach var="prePageNum" begin="1" end="${total/pageSize+1}">
                                                        <li <c:if test="${prePageNum == pageNum}" >class="active" </c:if> ><a href="${pageContext.request.contextPath }/order/Admin_list?pageNum=${prePageNum}&pageSize=${pageSize}" type="button" class="btn btn-primary">${prePageNum}</a></li>
                                                    </c:forEach>
                                                    <li><a <c:if test="${pageNum < total/pageSize}" >href="${pageContext.request.contextPath }/order/Admin_list?pageNum=${pageNum+1}&pageSize=${pageSize}"</c:if> type="button" class="btn btn-primary"><i>下一页</i></a></li>
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