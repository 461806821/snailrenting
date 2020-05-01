<%--
  Created by IntelliJ IDEA.
  User: alien
  Date: 2020/3/22 0022
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<%@ include file="Web_header.jsp"%>
<!-- //header -->
<!-- breadcrumbs -->
<div class="services-top-breadcrumbs">
    <div class="container">
        <div class="services-top-breadcrumbs-right">
            <ul>
                <li><a href="${pageContext.request.contextPath }/index/Web_index">主页</a> <i>/</i></li>
                <li>服务</li>
            </ul>
        </div>
        <div class="services-top-breadcrumbs-left">
            <h3>服务</h3>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- services -->
<div class="services">
    <div class="container">
        <h3><span>服务</span></h3>
        <p class="autem">100%真实房源，品质房屋，优质保洁，极速维修，品质房屋，放心呼吸。</p>
        <div class="services-grids">
            <div class="col-md-4 services-grid">
                <div class="col-xs-2 services-grid-left">
                    <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                </div>
                <div class="col-xs-10 services-grid-right">
                    <h4><a href="${pageContext.request.contextPath }/service/Web_usercenter">个人中心</a></h4>
                    <p>点击这里可以进行个人信息的修改和设置。</p>
                    <div class="more">
                        <a href="${pageContext.request.contextPath }/service/Web_usercenter"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-4 services-grid">
                <div class="col-xs-2 services-grid-left">
                    <span class="glyphicon glyphicon-export" aria-hidden="true"></span>
                </div>
                <div class="col-xs-10 services-grid-right">
                    <h4><a href="${pageContext.request.contextPath }/service/Web_certificate">房东认证</a></h4>
                    <p>认证房东身份后，您可以在该平台发布您的房源信息，进行房屋租赁。</p>
                    <div class="more">
                        <a href="${pageContext.request.contextPath }/service/Web_certificate"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-4 services-grid">
                <div class="col-xs-2 services-grid-left">
                    <span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
                </div>
                <div class="col-xs-10 services-grid-right">
                    <h4><a href="${pageContext.request.contextPath }/house/Web_houseinsert">发布房源</a></h4>
                    <p>添加房源的真实有效信息，管理员审核后会将您的发布的房源信息展示在该网站上。</p>
                    <div class="more">
                        <a href="${pageContext.request.contextPath }/service/Web_houseinsert"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="services-grids">
            <div class="col-md-4 services-grid">
                <div class="col-xs-2 services-grid-left">
                    <span class="glyphicon glyphicon-tree-deciduous" aria-hidden="true"></span>
                </div>
                <div class="col-xs-10 services-grid-right">
                    <h4><a href="${pageContext.request.contextPath }/service/Web_businesslist">我的业务</a></h4>
                    <p>点击这里，可以查看您提交的业务，了解业务办理的进度。</p>
                    <div class="more">
                        <a href="${pageContext.request.contextPath }/service/Web_businesslist"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-4 services-grid">
                <div class="col-xs-2 services-grid-left">
                    <span class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>
                </div>
                <div class="col-xs-10 services-grid-right">
                    <h4><a href="${pageContext.request.contextPath }/service/Web_order">我的签约</a></h4>
                    <p>如果您在该网站租赁了房源，可以点击这里查看您的签约具体信息。</p>
                    <div class="more">
                        <a href="${pageContext.request.contextPath }/service/Web_order"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-4 services-grid">
                <div class="col-xs-2 services-grid-left">
                    <span class="glyphicon glyphicon-signal" aria-hidden="true"></span>
                </div>
                <div class="col-xs-10 services-grid-right">
                    <h4><a href="${pageContext.request.contextPath }/service/Web_aftersale">服务/售后</a></h4>
                    <p>房源签约后，如果您存在住房相关问题，可以办理售后服务给管理员。</p>
                    <div class="more">
                        <a href="${pageContext.request.contextPath }/service/Web_aftersale"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //services -->
<!-- services-bottom -->
<div class="services-bottom">
    <div class="container">
        <div class="services-bottom-left">
            <h3>用心带您找到心仪的房源。根据您的找房要求，我们会尽快安排管家。</h3>
            <p></p>
        </div>
        <div class="services-bottom-right">
            <div class="m2">
                <a href="${pageContext.request.contextPath }/service/Web_aftersale" class="hvr-bounce-to-bottom hvr-bounce-to-bottom1">前往定制</a>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //services-bottom -->
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
                        <p>asdhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhk</p>
                        <p>asdhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhk</p>
                        <p>asdhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhk</p>
                        <p>asdhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhk</p>
                        <p>asdhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhk</p>
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