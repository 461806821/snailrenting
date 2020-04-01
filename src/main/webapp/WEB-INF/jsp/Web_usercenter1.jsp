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
                            <li><a href="${pageContext.request.contextPath }/collectiom/Web_list" class="hvr-bounce-to-bottom">我的收藏</a></li>
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
<div class="services-top-breadcrumbs">
    <div class="container">
        <div class="services-top-breadcrumbs-right">
            <ul>
                <li><a href="${pageContext.request.contextPath }/index/Web_index">主页</a> <i>/</i></li>
                <li>个人中心</li>
            </ul>
        </div>
        <div class="services-top-breadcrumbs-left">
            <h3>个人中心</h3>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- services -->
<div class="services">
    <div class="container">
        <h3 class="bars animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">个人中心</h3>
        <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
            <span class="input-group-addon" id="basic-addon1">@</span>
            <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
        </div>
        <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
            <input type="text" class="form-control" placeholder="Recipient's username" aria-describedby="basic-addon2">
            <span class="input-group-addon" id="basic-addon2">@example.com</span>
        </div>
        <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
            <span class="input-group-addon">$</span>
            <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
            <span class="input-group-addon">.00</span>
        </div>
        <div class="input-group input-group-lg animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
            <span class="input-group-addon" id="sizing-addon1">@</span>
            <input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon1">
        </div>
        <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
            <span class="input-group-addon" id="sizing-addon2">@</span>
            <input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon2">
        </div>
        <div class="input-group input-group-sm animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
            <span class="input-group-addon" id="sizing-addon3">@</span>
            <input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon3">
        </div>
        <div class="row animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
            <div class="col-lg-6 in-gp-tl">
                <div class="input-group">
						<span class="input-group-addon">
							<input type="checkbox" aria-label="...">
						</span>
                    <input type="text" class="form-control" aria-label="...">
                </div><!-- /input-group -->
            </div><!-- /.col-lg-6 -->
            <div class="col-lg-6 in-gp-tb">
                <div class="input-group">
						<span class="input-group-addon">
							<input type="radio" aria-label="...">
						</span>
                    <input type="text" class="form-control" aria-label="...">
                </div><!-- /input-group -->
            </div><!-- /.col-lg-6 -->
        </div><!-- /.row -->
        <div class="row animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
            <div class="col-lg-6 in-gp-tl">
                <div class="input-group">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">Go!</button>
						</span>
                    <input type="text" class="form-control" placeholder="Search for...">
                </div><!-- /input-group -->
            </div><!-- /.col-lg-6 -->
            <div class="col-lg-6 in-gp-tb">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
							<button class="btn btn-default" type="button">Go!</button>
						</span>
                </div><!-- /input-group -->
            </div><!-- /.col-lg-6 -->
        </div><!-- /.row -->
        <div class="row animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
            <div class="col-lg-6 in-gp-tl">
                <div class="input-group">
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </div><!-- /btn-group -->
                    <input type="text" class="form-control" aria-label="...">
                </div><!-- /input-group -->
            </div><!-- /.col-lg-6 -->
            <div class="col-lg-6 in-gp-tb">
                <div class="input-group">
                    <input type="text" class="form-control" aria-label="...">
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action <span class="caret"></span></button>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </div><!-- /btn-group -->
                </div><!-- /input-group -->
            </div><!-- /.col-lg-6 -->
        </div><!-- /.row -->
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
                <a href="${pageContext.request.contextPath }/service/Web_custommade" class="hvr-bounce-to-bottom hvr-bounce-to-bottom1">前往定制</a>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //services-bottom -->
<!-- special-services -->
<div class="special-services">
    <div class="container">
        <h3><span>Special Services</span></h3>
        <p class="autem">maiores alias consequatur aut perferendis doloribus asperiores repellat</p>
        <div class="special-services-grids">
            <div class="col-md-3 special-services-grid">
                <div class="special-services-grid1">
                    <img src="images/6.jpg" alt=" " class="img-responsive" />
                </div>
                <h4><a href="single.html">earum rerum hic</a></h4>
                <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil
                    impedit quo minus id quod.</p>
                <div class="m2">
                    <a href="single.html" class="more-sub hvr-bounce-to-bottom hvr-bounce-to-bottom1">Read More...</a>
                </div>
            </div>
            <div class="col-md-3 special-services-grid">
                <div class="special-services-grid1">
                    <img src="images/7.jpg" alt=" " class="img-responsive" />
                </div>
                <h4><a href="single.html">eligendi optio cum</a></h4>
                <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil
                    impedit quo minus id quod.</p>
                <div class="m2">
                    <a href="single.html" class="more-sub hvr-bounce-to-bottom hvr-bounce-to-bottom1">Read More...</a>
                </div>
            </div>
            <div class="col-md-3 special-services-grid">
                <div class="special-services-grid1">
                    <img src="images/8.jpg" alt=" " class="img-responsive" />
                </div>
                <h4><a href="single.html">cum soluta nobis est</a></h4>
                <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil
                    impedit quo minus id quod.</p>
                <div class="m2">
                    <a href="single.html" class="more-sub hvr-bounce-to-bottom hvr-bounce-to-bottom1">Read More...</a>
                </div>
            </div>
            <div class="col-md-3 special-services-grid">
                <div class="special-services-grid1">
                    <img src="images/9.jpg" alt=" " class="img-responsive" />
                </div>
                <h4><a href="single.html">quo minus id quod</a></h4>
                <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil
                    impedit quo minus id quod.</p>
                <div class="m2">
                    <a href="single.html" class="more-sub hvr-bounce-to-bottom hvr-bounce-to-bottom1">Read More...</a>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //special-services -->
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