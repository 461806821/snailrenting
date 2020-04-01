<%--
  Created by IntelliJ IDEA.
  User: alien
  Date: 2020/3/22 0022
  Time: 20:52
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
    <style type="text/css">
        *{margin:0;padding:0;list-style:none;}
        body{font:normal 12px/22px "Microsoft Yahei";background-color: #76c5f0;}
        img{border:0;}
        a{text-decoration:none;color:#333;}
        a:hover{color:#1974A1;}
        .clearfix:after,.clearfix:before{display:table;line-height:0;content:""}
        .clearfix:after{clear:both}

        #cw {
            background-color: #76c5f0;
            width: 1000px;
            margin-right: auto;
            margin-left: auto;
        }
        .cw-1 {
            background-image: url(/static/web/images/404-1.png);
            background-repeat: no-repeat;
            height: 424px;
            width: 1000px;
            margin-top: 2px;
            margin-bottom: 30px;
            margin-right: auto;
            margin-left: auto;
        }
        .cw-2{
            height: 48px;
            width: 1000px;
            margin-right: auto;
            margin-left: auto;
            padding-right: 100px;
            padding-left: 200px;
            font-family: "新宋体";
            font-size: 24px;
            font-weight: bolder;
        }
        .cw-3{
            float: left;
            height: 50px;
            width: 271px;
            background-image: url(/static/web/images/404-2.png);
            background-repeat: no-repeat;
            padding-left: 60px;
            padding-top: 18px;
        }
        .cw-4{
            height: 50px;
            background-image: url(/static/web/images/404-3.png);
            background-repeat: no-repeat;
            margin-left: 508px;
            padding-left: 60px;
            padding-top: 18px;
        }


    </style>
</head>
<body bgcolor="">
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
                            <li><a href="${pageContext.request.contextPath }/house/Web_list?locationid=${locationid}" class="hvr-bounce-to-bottom">附近房源</a></li>
                            <li><a href="${pageContext.request.contextPath }/house/Web_list?locationid=0" class="hvr-bounce-to-bottom">全部房源</a></li>
                            <li><a href="${pageContext.request.contextPath }/service/Web_service" class="hvr-bounce-to-bottom">服务</a></li>
                            <li><a href="${pageContext.request.contextPath }/collection/Web_list" class="hvr-bounce-to-bottom">我的收藏</a></li>
                        </ul>
                    </nav>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
    </div>
</div>
<!-- //header -->
<div class="cw">
    <div class="cw-1"></div>
    <div class="cw-2">
        <div class="cw-3">
            <a href="${pageContext.request.contextPath }/index/Web_index">还回首页</a>
        </div>
        <div class="cw-4">
            <a href="${pageContext.request.contextPath }/service/Web_service">联系我们</a>
        </div>
    </div>
</div>
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