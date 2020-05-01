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
                                    <h3 class="h4">用户管理  （${total}）条</h3>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <a href="${pageContext.request.contextPath }/user/Admin_insert" type="button" class="btn btn-primary">添加用户</a>
                                        <h3 class="h4"></h3>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <a href="${pageContext.request.contextPath }/user/Admin_list?pageSize=6" type="button" class="btn btn-primary">全部用户</a>&nbsp;
                                                <a href="${pageContext.request.contextPath }/user/Admin_list?pageSize=6&certificate=0" type="button" class="btn btn-primary">普通</a>&nbsp;
                                                <a href="${pageContext.request.contextPath }/user/Admin_list?pageSize=6&certificate=1" type="button" class="btn btn-primary">租户</a>&nbsp;
                                                <a href="${pageContext.request.contextPath }/user/Admin_list?pageSize=6&certificate=2" type="button" class="btn btn-primary">房东</a>
                                                <label class="col-sm-3 form-control-label"></label>
                                                <input type="text" name="keyword" class="form-control">
                                                <div class="input-group-append">
                                                    <button type="button" class="btn btn-primary">搜索！</button>
                                                </div>
                                            </div>
                                        </div>
<%--                                        <button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-primary">添加用户</button>&ndash;%&gt;--%>
                                        <!-- Modal-->
                                        <div id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
                                            <div role="document" class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 id="exampleModalLabel" class="modal-title">添加用户</h4>
                                                        <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>请输入用户信息</p>
                                                        <form>
                                                            <div class="form-group">
                                                                <label>用户名</label>
                                                                <input type="username" placeholder="用户名" class="form-control">
                                                            </div>
                                                            <div class="form-group">
                                                                <label>密码</label>
                                                                <input type="password" placeholder="密码" class="form-control">
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" data-dismiss="modal" class="btn btn-secondary">关闭</button>
                                                        <a href="${pageContext.request.contextPath }/user/Admin_insert" type="button" class="btn btn-primary">保存</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <c:choose>
                                            <c:when test="${total==0}">
                                                <div class="container-fluid">
                                                    <h3 class="h4"></h3>
                                                    <h2 class="no-margin-bottom">查询到的数据暂时为空！</h2>
                                                    <h3 class="h4"></h3>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <table class="table table-striped table-hover">
                                                    <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>姓名</th>
                                                        <th>手机号</th>
                                                        <th>地址</th>
                                                        <th>身份证</th>
                                                        <th>角色</th>
                                                        <th>登录时间</th>
                                                        <th>创建时间</th>
                                                        <th>收藏房源编号</th>
                                                        <th>操作</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${data}" var="u">
                                                        <tr>
                                                            <th scope="row">${u.id}</th>
                                                            <td>${u.name}</td>
                                                            <td>${u.phone}</td>
                                                            <td>${u.address}</td>
                                                            <td>${u.identity}</td>
                                                            <td>${u.certificate}</td>
                                                            <td><fmt:formatDate value="${u.loginTime}" pattern="yyyy年MM月dd日hh分mm秒" /></td>
                                                            <td><fmt:formatDate value="${u.createDate}" pattern="yyyy年MM月dd日hh分mm秒" /></td>
                                                            <td>
                                                                <c:forEach items="${u.roomIds}" var="roomid">
                                                                    # ${roomid}，<br>
                                                                </c:forEach>
                                                            </td>
                                                            <td>
                                                                <a class="btn btn-primary" href="${pageContext.request.contextPath }/user/Admin_select?id=${u.id}">修改</a>
                                                                <a class="btn btn-primary" href="${pageContext.request.contextPath }/user/Admin_delete?id=${u.id}">删除</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                                <!-- page -->
                                                <ul class="pagination pagination-lg">
                                                    <li <c:if test="${pageNum-1 <=0}">class="disabled"</c:if>> <a <c:if test="${pageNum-1 >0}" >href="${pageContext.request.contextPath }/user/Admin_list?pageNum=${pageNum-1}"</c:if> type="button" class="btn btn-primary"><i>上一页</i></a></li>
                                                    <c:forEach var="prePageNum" begin="1" end="${total/pageSize+1}">
                                                        <li <c:if test="${prePageNum == pageNum}" >class="active" </c:if> ><a href="${pageContext.request.contextPath }/user/Admin_list?pageNum=${prePageNum}" type="button" class="btn btn-primary">${prePageNum}</a></li>
                                                    </c:forEach>
                                                    <li><a <c:if test="${pageNum+1 < total/pageSize+1}" >href="${pageContext.request.contextPath }/user/Admin_list?pageNum=${pageNum+1}"</c:if> type="button" class="btn btn-primary"><i>下一页</i></a></li>
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