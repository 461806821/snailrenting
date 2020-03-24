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
<!-- banner -->
<div class="banner">
    <div class="container">
        <div class="banner-left">
            <h3>让  租  房   变  得  简  单  和  快  乐 。</h3>
            <p>100%真实房源，品质房屋，优质保洁，极速维修，品质房屋，放心呼吸。</p>
        </div>
        <div class="banner-right">
            <h3><span>搜索理想房源</span></h3>
            <div class="reservation">
                <div class="section_room">
                    <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                    <select id="country" onchange="change_country(this.value)" class="frm-field required">
                        <option value="null">位置</option>
                        <option value="AX">Sweden</option>
                        <option value="AX">New Zealand</option>
                        <option value="AX">America</option>
                        <option value="AX">Australia</option>
                    </select>
                </div>
                <div class="section_room">
                    <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                    <select id="country1" onchange="change_country(this.value)" class="frm-field required">
                        <option value="null">租房类型</option>
                        <option value="1">整租</option>
                        <option value="2">合租</option>
                    </select>
                </div>
                <div class="reservation-grids">
                    <div class="reservation-grid-left">
                        <div class="section_room">
                            <span class="tent"> </span>
                            <select id="country2" onchange="change_country(this.value)" class="frm-field required">
                                <option value="null">卧室</option>
                                <option value="null">无限制</option>
                                <option value="AX">2</option>
                                <option value="AX">3</option>
                                <option value="AX">4</option>
                                <option value="AX">更多</option>
                            </select>
                        </div>
                    </div>
                    <div class="reservation-grid-right">
                        <div class="section_room">
                            <span class="bath"></span>
                            <select id="country3" onchange="change_country(this.value)" class="frm-field required">
                                <option value="null">浴室</option>
                                <option value="null">无限制</option>
                                <option value="AX">2</option>
                                <option value="AX">3</option>
                                <option value="AX">4</option>
                                <option value="AX">更多</option>
                            </select>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="reservation-grids">
                    <div class="reservation-grid-left">
                        <div class="section_room">
                            <span class="glyphicon glyphicon-yen" aria-hidden="true"></span>
                            <select id="country4" onchange="change_country(this.value)" class="frm-field required">
                                <option value="null">最低价格</option>
                                <option value="null">无限制</option>
                                <option value="AX">500元</option>
                                <option value="AX">1000元</option>
                                <option value="AX">2000元</option>
                            </select>
                        </div>
                    </div>
                    <div class="reservation-grid-right">
                        <div class="section_room">
                            <span class="glyphicon glyphicon-yen" aria-hidden="true"></span>
                            <select id="country5" onchange="change_country(this.value)" class="frm-field required">
                                <option value="null">最高价格</option>
                                <option value="null">无限制</option>
                                <option value="AX">500元</option>
                                <option value="AX">1000元</option>
                                <option value="AX">2000元</option>
                                <option value="AX">更高</option>
                            </select>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="keywords">
                    <form action="#" method="post" form="country country1 country2 country3 country4 country5">
                        <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                        <input type="text" name="keyword" placeholder="其他想要搜索内容">
                        <input type="submit" value="搜索">
                    </form>
                </div>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //banner -->
<!-- events -->
<div class="events">
    <div class="container">
        <h3><span>特惠房源</span></h3>
        <p class="autem">入住免租金，短租优惠9折住。</p>
        <div class="events-grids">
            <div class="col-md-4 events-grid">
                <div class="events-grid1 hvr-sweep-to-top">
                    <a href="single.html"><img src="/static/web/images/6.jpg" alt=" " class="img-responsive" /></a>
                    <h4><a href="single.html">oribus asperiores</a></h4>
                    <ul>
                        <li><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Admin</a></li>
                        <li><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>May 20, 2016</li>
                    </ul>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui
                        blanditiis praesentium voluptatum deleniti atque.</p>
                </div>
            </div>
            <div class="col-md-4 events-grid">
                <div class="events-grid1 hvr-sweep-to-top">
                    <a href="single.html"><img src="/static/web/images/8.jpg" alt=" " class="img-responsive" /></a>
                    <h4><a href="single.html">iusto odio dignissi</a></h4>
                    <ul>
                        <li><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Admin</a></li>
                        <li><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>May 25, 2016</li>
                    </ul>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui
                        blanditiis praesentium voluptatum deleniti atque.</p>
                </div>
            </div>
            <div class="col-md-4 events-grid">
                <div class="events-grid1 hvr-sweep-to-top">
                    <a href="single.html"><img src="/static/web/images/7.jpg" alt=" " class="img-responsive" /></a>
                    <h4><a href="single.html">tatum deleniti atque</a></h4>
                    <ul>
                        <li><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Admin</a></li>
                        <li><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>May 30, 2016</li>
                    </ul>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui
                        blanditiis praesentium voluptatum deleniti atque.</p>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //events -->
<!-- special-services -->
<div class="special-services">
    <div class="container">
        <h3><span>推荐房源</span></h3>
        <p class="autem">maiores alias consequatur aut perferendis doloribus asperiores repellat</p>
        <div class="special-services-grids">
            <div class="col-md-3 special-services-grid">
                <div class="special-services-grid1">
                    <img src="/static/web/images/6.jpg" alt=" " class="img-responsive" />
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
                    <img src="/static/web/images/7.jpg" alt=" " class="img-responsive" />
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
                    <img src="/static/web/images/8.jpg" alt=" " class="img-responsive" />
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
                    <img src="/static/web/images/9.jpg" alt=" " class="img-responsive" />
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
<!-- about-bottom -->
<div class="about-bottom">
    <div class="container">
        <div class="about-bottom-grid">
            <span> </span>
        </div>
        <h3>用心带您找到心仪的房源。根据您的找房要求，我们会尽快安排管家。</h3>
        <p><i>前往定制</i></p>
    </div>
</div>
<!-- //about-bottom -->
<!-- gallery -->
<div class="gallery">
    <div class="container">
        <h3><span>VR</span></h3>
        <p class="autem">maiores alias consequatur aut perferendis doloribus asperiores repellat</p>
        <div class="gallery-grids carouselGallery-grid hidden-xs">
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="0" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="/static/web/images/7.jpg" data-posturl="#"
                     style="background-image:url(/static/web/images/7.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>4535
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="1" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="/static/web/images/9.jpg" data-posturl="#"
                     style="background-image:url(/static/web/images/9.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>3144
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="2" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="/static/web/images/8.jpg" data-posturl="#"
                     style="background-image:url(/static/web/images/8.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>5345
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="3" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="/static/web/images/6.jpg" data-posturl="#"
                     style="background-image:url(/static/web/images/6.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>1233
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="4" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="/static/web/images/10.jpg" data-posturl="#"
                     style="background-image:url(/static/web/images/10.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>9896
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="8" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio
						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."
                     data-location="Temporibus" data-imagepath="/static/web/images/6.jpg" data-posturl="#"
                     style="background-image:url(/static/web/images/6.jpg);">
                    <div class="carouselGallery-item">
                        <div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Temporibus
								</span>
                            <span class="carouselGallery-item-meta-likes">
									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>2544
								</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
            <script src="/static/web/js/main.js"></script>
        </div>
    </div>
</div>
<!-- //gallery -->
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