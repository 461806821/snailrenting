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
    <!-- start-smoth-scrolling -->

</head>

<body>
<!-- header -->
<div class="header">
    <div class="header-top">
        <div class="container">
            <div class="header-top-left">
                <ul>
                    <%--                    <li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+0123 345 569</li>--%>
                    <li><a href="${pageContext.request.contextPath }/user/Web_login"><span class="icon icon-border pinterest" aria-hidden="true"></span>登录</a></li>
                    <li><a href="${pageContext.request.contextPath }/user/Web_login"><span class="icon icon-border twitter" aria-hidden="true"></span>注册</a></li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <nav class="navbar navbar-default">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="logo">
                        <h1><a class="navbar-brand" href="${pageContext.request.contextPath }/index/Web_index">蜗牛找房<span>Snail renting</span></a></h1>
                    </div>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                    <nav>
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="${pageContext.request.contextPath }/index/Web_index">主页</a></li>
                            <li><a href="${pageContext.request.contextPath }/house/Web_list" class="hvr-bounce-to-bottom">全部房源</a></li>
                            <li><a href="${pageContext.request.contextPath }/service/Web_service" class="hvr-bounce-to-bottom">蜗牛服务</a></li>
                            <li><a href="${pageContext.request.contextPath }/collectiom/Web_list" class="hvr-bounce-to-bottom">我的收藏</a></li>
                            <li><a class="hvr-bounce-to-bottom">VR看房(未解锁)</a></li>
                        </ul>
                    </nav>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
    </div>
</div>
<!-- //header -->
<!-- breadcrumbs -->
<!-- breadcrumbs -->
<div class="services-top-breadcrumbs">
    <div class="container">
        <div class="services-top-breadcrumbs-right">
            <ul>
                <li><a href="${pageContext.request.contextPath }/index/Web_index">主页</a> <i>/</i></li>
                <li>房源详情</li>
            </ul>
        </div>
        <div class="services-top-breadcrumbs-left">
            <h3>房源详情</h3>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //breadcrumbs -->
<div class="single">
    <div class="container">
        <div class="col-md-8 single-left">
            <div class="sample1">
                <div class="carousel">
                    <ul>
                        <c:if test="${!empty data.snailRoom.bedroomImg1}">
                            <li> <img src="${pageContext.request.contextPath }/static/web/images/${data.snailRoom.bedroomImg1}" alt="quibusdam et aut offi"> </li>
                        </c:if>
                        <c:if test="${!empty data.snailRoom.bedroomImg2}">
                            <li> <img src="${pageContext.request.contextPath }/static/web/images/${data.snailRoom.bedroomImg2}" alt="Itaque earum rerum hic"> </li>
                        </c:if>
                        <c:if test="${!empty data.bathImg1}">
                            <li> <img src="${pageContext.request.contextPath }/static/web/images/${data.bathImg1}" alt="doloribus asperio rep"> </li>
                        </c:if>
                        <c:if test="${!empty data.bathImg2}">
                            <li> <img src="${pageContext.request.contextPath }/static/web/images/${data.bathImg2}" alt="maiores alias consequ"> </li>
                        </c:if>
                    </ul>
                    <div class="controls">
                        <div class="prev"></div>
                        <div class="next"></div>
                    </div>
                </div>
                <div class="thumbnails">
                    <ul>
                        <c:if test="${!empty data.houseImg}">
                            <li> <img src="${pageContext.request.contextPath }/static/web/images/${data.houseImg}"alt="doloribus asperio rep"> </li>
                        </c:if>
                        <c:if test="${!empty data.kitchenImg1}">
                            <li> <img src="${pageContext.request.contextPath }/static/web/images/${data.kitchenImg1}" alt=" "> </li>
                        </c:if>
                        <c:if test="${!empty data.livingImg1}">
                            <li> <img src="${pageContext.request.contextPath }/static/web/images/${data.livingImg1}" alt=" "> </li>
                        </c:if>
                        <c:if test="${!empty data.livingImg2}">
                            <li> <img src="${pageContext.request.contextPath }/static/web/images/${data.livingImg2}" alt=" "> </li>
                        </c:if>
                    </ul>
                </div>
            </div>
            <script src="/static/web/js/jquery.light-carousel.js"></script>
            <script>
                $('.sample1').lightCarousel();
            </script>
            <div class="single-left2">
                <h3>${data.address} ${data.snailRoom.name}</h3>
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
                <ul class="com">
                    <li><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a>卧室：${data.bedroom} </a></li>
                    <li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a>签约</a></li>
                    <li><span class="glyphicon glyphicon-heart" aria-hidden="true"></span><a href="${pageContext.request.contextPath }/collection/Web_insert?id=${data.snailRoom.id}">点赞：${data.snailRoom.prasie} </a></li>
                    <li><span class="glyphicon glyphicon-tag" aria-hidden="true"></span><a href="${pageContext.request.contextPath }/collection/Web_insert?roomId=${data.snailRoom.id}">收藏</a></li>
                </ul>
                <div class="single-left2-sub">
                    <ul>
                        <li>操作选择 </li>
                        <li><a href="${pageContext.request.contextPath }/service/Web_aftersale">预约看房</a></li>
                        <li><a >电话咨询</a></li>
                        <li><a href="${pageContext.request.contextPath }/order/Web_insert?id=${data.snailRoom.id}">立刻签约</a></li>
                    </ul>
                </div>
                <div class="single-left2-sub">
                    <ul>
                        <li>房源简介 </li>
                    </ul>
                </div>
            </div>
            <div class="single-left3">
                <p>${data.desp}</p>
            </div>
            <div class="single-left2-sub">
                <ul>
                    <li>房源配置 </li>
                </ul>
            </div>
            <div class="col-md-6">
                <table class="table table-bordered">
                    <tbody>
                    <tr>
                        <td><code>类型</code></td>
                        <td><span class="badge badge-info">
                            <c:if test="${data.type == 1 }">整租</c:if>
                            <c:if test="${data.type == 2 }">合租</c:if></span>
                        </td>
                    </tr>
                    <tr>
                        <td><code>地址</code></td>
                        <td><span class="badge badge-primary">${data.address}</span></td>
                    </tr>
                    <tr>
                        <td><code>开始日期</code></td>
                        <td><span class="badge badge-success"><fmt:formatDate value="${data.createDate}" pattern="yyyy年MM月dd日" /></span></td>
                    </tr>
                    <tr>
                        <td><code>截止日期</code></td>
                        <td><span class="badge badge-danger"><fmt:formatDate value="${data.validTime}" pattern="yyyy年MM月dd日" /></span></td>
                    </tr>
                    <tr>
                        <td><code>年代</code></td>
                        <td><span class="badge badge-warning">暂无数据</span></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-6">
                <table class="table table-bordered">
                    <tbody>
                    <tr>
                        <td><code>户型</code></td>
                        <td><span class="badge badge-info">${data.bedroom}室${data.living}厅${data.kitchen}厨${data.bath}卫</span></td>
                    </tr>
                    <tr>
                        <td><code>楼层</code></td>
                        <td><span class="badge badge-primary">1</span></td>
                    </tr>
                    <tr>
                        <td><code>电梯</code></td>
                        <td><span class="badge badge-success">22</span></td>
                    </tr>
                    <tr>
                        <td><code>状态</code></td>
                        <td><span class="badge badge-danger">可立即入住</span></td>
                    </tr>
                    <tr>
                        <td><code>绿化</code></td>
                        <td><span class="badge badge-warning">暂无数据</span></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="comments">
                <h4>蜗牛圈-社交</h4>
                <div class="comments-grid">
                    <div class="comments-grid-left">
                        <img src="/static/web/images/5.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="comments-grid-right">
                        <h3><a href="#">Adam Smith</a></h3>
                        <h5><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> On 28th May, 2016</h5>
                        <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>
                        <div class="reply">
                            <a href="#">Reply</a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="comments-grid">
                    <div class="comments-grid-left">
                        <img src="/static/web/images/4.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="comments-grid-right">
                        <h3><a href="#">James Rick</a></h3>
                        <h5><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> On 28th May, 2016</h5>
                        <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>
                        <div class="reply">
                            <a href="#">Reply</a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="write-reply">
                <h3>Write a Reply Or Comment</h3>
                <form action="#" method="post">
                    <textarea name="Comment" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'SnailMessage...';}" required="">Write a comment here...</textarea>
                    <input type="text" name="Name" value="Name..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name...';}" required="">
                    <input type="email" name="Email" value="Email..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email...';}" required="">
                    <input type="text" name="Website" value="Website..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Website...';}" required="">
                    <input type="submit" value="Send" >
                </form>
            </div>
        </div>
        <div class="col-md-4 single-right">
            <div class="categories">
                <h3>房源信息</h3>
                <c:forEach items="${data.snailRooms}" var="r">
                    <div class="related-post">
                        <div class="related-post-left">
                            <a href="${pageContext.request.contextPath }/house/Web_select?id=${r.id}">
                                <c:if test="${!empty r.bedroomImg1}">
                                    <img src="${pageContext.request.contextPath }/static/web/images/${r.bedroomImg1}" alt=" " class="img-responsive" />
                                </c:if>
                            </a>
                        </div>
                        <div class="related-post-right">
                            <h4><a href="${pageContext.request.contextPath }/house/Web_select?id=${r.id}">${r.name}</a></h4>
                            <p>${r.desp}
                                <span></span>
                            </p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </c:forEach>
            </div>
            <div class="categories categories-mid">
                <h3>房源室友</h3>
                <c:forEach items="${data.snailRooms}" var="r">
                    <ul>
                        <li><span>${r.name}</span></li>
                    </ul>
                    <ol class="breadcrumb">
                        <li><a >
                            <c:if test="${r.state == 0 }">出租中</c:if>
                            <c:if test="${r.state == 1 }">已租</c:if>
                            <c:if test="${r.state == 2 }">停用</c:if>
                            <c:if test="${r.state == 3 }">审核中</c:if>
                            <c:if test="${r.state == 4 }">装修</c:if>
                            <c:if test="${r.state == 5 }">准备签约</c:if></a></li>
                        <li><a>{r.sex}</a></li>
                        <li class="active"><a><fmt:formatDate value="${r.createDate}" pattern="yyyy年MM月dd日" /></a></li>
                    </ol>
                </c:forEach>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //single -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <h2>让  租  房   变  得  简  单  和  快  乐 。</h2>
        <p class="para">100%真实房源，品质房屋，优质保洁，极速维修，品质房屋，放心呼吸。</p>
        <div class="footer-grids">
            <div class="col-md-4 footer-grid">
                <p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> 中国，北京市，朝阳区，
                    三里屯，7号.</p>
                <p><a href="mailto:contact@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> snailrenting@163.com</a></p>
                <p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+0123 456 789</p>
            </div>
            <div class="col-md-2 footer-grid">
                <ul>
                    <li><a href="${pageContext.request.contextPath }/index/Web_index">主页</a></li>
                    <li><a href="${pageContext.request.contextPath }/service/Web_service">服务</a></li>
                    <li><a href="${pageContext.request.contextPath }/user/Web_login">登陆</a></li>
                    <li><a href="${pageContext.request.contextPath }/user/Web_login">注册</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <div class="footer-grid1">
                    <div class="footer-grid1-left">
                        <p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>
                        <p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>
                        <p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>
                        <p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>
                        <p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="footer-copy">
            <p>Copyright &copy; 2020.Alien All rights <a href="#" target="_blank" title="Snailrenting"> Snailrenting</a></p>
        </div>
    </div>
</div>
<!-- //footer -->
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