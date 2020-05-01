<%--
  Created by IntelliJ IDEA.
  User: alien
  Date: 2020/3/20 0020
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
2<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<head>
    <title>蜗牛找房网</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="/static/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/static/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/static/web/css/light-carousel.css" rel="stylesheet" type="text/css">
    <!-- js -->
    <script type="text/javascript" src="/static/web/js/jquery-2.1.4.min.js"></script>
    <!-- //js -->
    <link href='https://fonts.googleapis.com/css?family=Quicksand:400,300,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="/static/web/js/move-top.js"></script>
    <script type="text/javascript" src="/static/web/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- //start-smoth-scrolling -->
</head>

<body>
<!-- header Area Start-->
<%@ include file="Web_header.jsp"%>
<!-- header Area End-->
<!-- breadcrumbs -->
<div class="services-top-breadcrumbs">
    <div class="container">
        <div class="services-top-breadcrumbs-right">
            <ul>
                <li><a href="${pageContext.request.contextPath }/index/Web_index">主页</a> <i>/</i></li>
                <li>蜗牛社交圈</li>
            </ul>
        </div>
        <div class="services-top-breadcrumbs-left">
            <h3>蜗牛社交圈</h3>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- gallery -->
<div class="gallery">
    <div class="container">
        <h3><span>蜗牛社交圈</span></h3>
        <p class="autem">欢迎来到蜗牛社交平台。</p>
    </div>
</div>
<div class="single">
    <div class="container">
        <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
            <div id="myTabContent" class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                    <div class="comments">
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
                                    <c:forEach items="${data }" var="m">
                                    <div class="comments-grid">
                                        <div class="comments-grid-left">
                                            <img src="/static/web/images/m.png" alt=" " class="img-responsive" />
                                        </div>
                                        <div class="comments-grid-right">
<%--                                            <ul id="myTab" class="nav nav-tabs" role="tablist">--%>
<%--                                                <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Home</a></li>--%>
<%--                                                <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Profile</a></li>--%>
<%--                                            </ul>--%>
                    <%--                        <input  id = "vrimg1" name = "vrimg1" value = ""${fn:length(data)}" />--%>
                    <%--                        <input  id = "vrimg2" name = "vrimg1" value = "${m.id}" />--%>
                                            <h3><a>${m.snailUser.username}</a></h3>
                                            <h5>
                                                <span class="glyphicon glyphicon-tag" aria-hidden="true"> 消息内容：${m.content}</span> &nbsp;
                                                <span class="glyphicon glyphicon-user" aria-hidden="true"> 用户身份：<c:if test="${m.snailUser.certificate == 0}">普通</c:if><c:if test="${m.snailUser.certificate == 1}">租客</c:if><c:if test="${m.snailUser.certificate == 2}">房东</c:if></span>  &nbsp;
                                                <span class="glyphicon glyphicon-heart heart" aria-hidden="true"> 赞：${m.praise}</span> &nbsp;
                                                <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> 发布于：<fmt:formatDate value="${m.createDate}" pattern="yyyy 年 MM 月 dd 日  HH : mm" /> &nbsp;
                                            </h5>
                                            <div class="reply">
                                                <a href="${pageContext.request.contextPath }/message/Web_update?id=${m.id}"><span class="label label-warning">我要点赞</span></a>&nbsp;
                                                <a href="${pageContext.request.contextPath }/message/Web_reply?messageId=${m.id}"><span class="label label-success">我要回复</span></a>
                                                <a role="presentation" href="#profile" id="profile-tab" role="tab" data-toggle="tab" aria-controls="profile"><span class="label label-info">发布消息</span></a>
                                            </div>
                                            <h3>-----------------------</h3>
                                            <c:forEach items="${m.snailReplys }" var="r">
                                                <p>
                                                    @${r.snailUser.username}回复：${r.content}  &nbsp;
                                                    <span class="glyphicon glyphicon-user" aria-hidden="true"> 用户身份：<c:if test="${r.snailUser.certificate == 0}">普通</c:if><c:if test="${r.snailUser.certificate == 1}">租客</c:if><c:if test="${r.snailUser.certificate == 2}">房东</c:if></span>  &nbsp;
                                                    <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> 回复时间：<fmt:formatDate value="${r.createDate}" pattern="yyyy 年 MM 月 dd 日  HH : mm" /> &nbsp;
                                                </p>
                                            </c:forEach>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                    </c:forEach>
                                    <!-- page -->
                                    <h1>.</h1>
                                    <ul class="pagination pagination-lg">
                                        <li class="disabled"><a <c:if test="${pageNum-1 >0}" >href="${pageContext.request.contextPath }/message/Web_list?pageSize=5&pageNum=${pageNum-1}"</c:if>><i class="fa fa-angle-left">&laquo;</i></a></li>
                                        <c:forEach var="prePageNum" begin="1" end="${total/pageSize+1}">
                                            <li <c:if test="${prePageNum == pageNum}" >class="active" </c:if> ><a href="${pageContext.request.contextPath }/message/Web_list?pageSize=5&pageNum=${prePageNum}">${prePageNum}</a></li>
                                        </c:forEach>
                                        <li><a <c:if test="${pageNum+1 < total/pageSize+1}" >href="${pageContext.request.contextPath }/message/Web_list?pageSize=5&pageNum=${pageNum+1}"</c:if>><i class="fa fa-angle-right">&raquo;</i></a></li>
                                    </ul>
                                    <!-- //page -->
                                </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
                    <div class="write-reply">
                        <h3>发布消息 <a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true"><span class="label label-info"> &nbsp; 返回上一级</span></a></h3>
                        <form action="${pageContext.request.contextPath }/message/Web_insert" method="post">
                            <textarea name="content" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '输入内容...';}" required="">输入内容...</textarea>
                            <input type="submit" value="发布" >
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //single -->
<!-- mail -->
<div class="special-services">
    <div class="container">
        <h3><span>欢迎联系我们</span></h3>
        <p class="autem">让  租  房   变  得  简  单  和  快  乐 。</p>
        <div class="contact-grid1">
            <div class="col-md-4 contact-grid1-left">
                <div class="contact-grid1-left1">
                    <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                    <h4>邮箱联系</h4>
                    <p>欢迎发送邮箱联系我们，管理员会尽快回复您的邮件。</p>
                    <ul>
                        <li>邮箱1: <a href="mailto:info@example.com">snailrenting1@163.com</a></li>
                        <li>邮箱2: <a href="mailto:info@example.com">snailrenting2@152.com</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 contact-grid1-left">
                <div class="contact-grid1-left1">
                    <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                    <h4>电话联系</h4>
                    <p>欢迎致电联系我们，客服会为您解答相关问题。</p>
                    <ul>
                        <li>电话: +0123 321 312</li>
                        <li>传真: +123 312</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 contact-grid1-left">
                <div class="contact-grid1-left1">
                    <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                    <h4>线下联系</h4>
                    <p>欢迎您到线下门店进行参观，希望可以帮您解决问题。</p>
                    <ul>
                        <li>地址: 中国，北京市，三屯，7号。</li>
                        <li>蜗牛找房门店</li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //mail -->
<!-- footer Area Start-->
<%@ include file="Web_footer.jsp"%>
<!-- footer Area End-->
<!-- for bootstrap working -->
<script src="/static/web/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->
</body>
</html>