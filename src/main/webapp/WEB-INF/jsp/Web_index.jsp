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
    <!-- start-pannellum -->
    <!-- Latest compiled and minified JavaScript -->
    <script src="/static/pannellum/pannellum.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="/static/pannellum/pannellum.css">
    <style>
        #panorama {
            width: 1200px;
            height: 600px;
        }
        #controls {
            position: absolute;
            bottom: 0;
            z-index: 2;
            text-align: center;
            width: 100%;
            padding-bottom: 3px;
        }
        .ctrl {
            padding: 8px 5px;
            width: 30px;
            text-align: center;
            background: rgba(200, 200, 200, 0.8);
            display: inline-block;
            cursor: pointer;
        }
        .ctrl:hover {
            background: rgba(200, 200, 200, 1);
        }
    </style>
    <!-- //start-pannellum -->
</head>

<body>
<!-- header -->
<%@ include file="Web_header.jsp"%>
<!-- //header -->
<!-- banner -->
<div class="banner">
    <div class="container">
        <div class="banner-left">
            <h3>让  租  房   变  得  简  单  和  快  乐 。</h3>
            <p>100%真实房源，品质房屋，优质保洁，极速维修，品质房屋，放心呼吸。</p>
        </div>
<%--        <a-scene>--%>
<%--            <a-sky src="/static/picture/1587129668947.png" rotation="0 -130 0"></a-sky>--%>
<%--        </a-scene>--%>
<%--        <div id="panorama"></div>--%>
        <div class="banner-right">
            <h3><span>搜索理想房源</span></h3>
            <div class="reservation">
                <form form="country1 country2 country3 country4 country5" action="${pageContext.request.contextPath }/house/Web_list" method="post" >
                <%--                <div class="section_room">--%>
<%--                    <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>--%>
<%--                    <select id="country" onchange="change_country1(this.value,${locations})" class="frm-field required">--%>
<%--                        <option value="null">省/市</option>--%>
<%--                        <option value="null">无限制</option>--%>
<%--                        <c:forEach items="${locations}" var="l1">--%>
<%--                            <c:if test="${l1.type == 1}">--%>
<%--                                <option value="${l1.id}">${l1.name}</option>--%>
<%--                            </c:if>--%>
<%--                        </c:forEach>--%>
<%--                    </select>--%>
<%--                </div>--%>
                <div class="section_room">
                    <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                    <select id="country1" name="typeVO" onchange="change_country(this.value)" class="frm-field required">
                        <option value=null>租房类型</option>
                        <option value="1">整租</option>
                        <option value="2">合租</option>
                    </select>
                </div>
                <div class="reservation-grids">
                    <div class="reservation-grid-left">
                        <div class="section_room">
                            <span class="tent"> </span>
                            <select id="country2" name="bedroomVO"  onchange="change_country(this.value)" class="frm-field required">
                                <option value=null>卧室</option>
                                <option value=null >无限制</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                            </select>
                        </div>
                    </div>
                    <div class="reservation-grid-right">
                        <div class="section_room">
                            <span class="bath"></span>
                            <select id="country3" name="bathVO" onchange="change_country(this.value)" class="frm-field required">
                                <option value=null>浴室</option>
                                <option value=null>无限制</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            </select>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="reservation-grids">
                    <div class="reservation-grid-left">
                        <div class="section_room">
                            <span class="glyphicon glyphicon-yen" aria-hidden="true"></span>
                            <select id="country4" name="minPriceVO" onchange="change_country(this.value)" class="frm-field required">
                                <option value=null>最低价格</option>
                                <option value=null>无限制</option>
                                <option value="500">500元</option>
                                <option value="1000">1000元</option>
                                <option value="2000">2000元</option>
                            </select>
                        </div>
                    </div>
                    <div class="reservation-grid-right">
                        <div class="section_room">
                            <span class="glyphicon glyphicon-yen" aria-hidden="true"></span>
                            <select  id="country5" name="maxPriceVO" onchange="change_country(this.value)" class="frm-field required">
                                <option value=null>最高价格</option>
                                <option value=null>无限制</option>
                                <option value="1000">1000元</option>
                                <option value="1500">1500元</option>
                                <option value="2000">2000元</option>
                            <option value="3000">3000元</option>
                            <option value="4000">4000元</option>
                            <option value="5000">5000元</option>
                            </select>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="keywords">
                    <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                    <input type="text" name="keyword" placeholder="其他想要搜索内容如：地址,小区名称，房屋关键字等">
                    <input type="submit" value="搜索">
                </div>
             </form>
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
            <c:forEach items="${salehouse }" var="s">
            <div class="col-md-4 events-grid">
                <div class="events-grid1 hvr-sweep-to-top">
                    <a href="${pageContext.request.contextPath }/house/Web_select?id=${s.id}"><img src="${pageContext.request.contextPath }/static/picture/${s.bedroomImg1}" alt=" " class="img-responsive" /></a>
                    <h4><a href="${pageContext.request.contextPath }/house/Web_select?id=${s.id}">${s.name}</a></h4>
                    <ul>
                        <li><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>赞：${s.praise}</a></li>
                        <li><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>发布于：<fmt:formatDate value="${s.createDate}" pattern="yyyy年MM月dd日" /></li>
                        <li><span class="glyphicon glyphicon-yen" aria-hidden="true"></span>价格：${s.price}元/月</li>
                        <li><span class="glyphicon glyphicon-yen" aria-hidden="true"></span>优惠价格：${s.sale}元/月</li>
                    </ul>
                    <p>${s.desp}</p>
                </div>
            </div>
            </c:forEach>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //events -->
<!-- special-services -->
<div class="special-services">
    <div class="container">
        <h3><span>推荐房源</span></h3>
        <p class="autem">免中介费，付款灵活，月付/季付/年付，随心选择。专属服务，贴心服务，保洁/维修/管家，即可拥有。
        温馨小窝，拎包入住，家具/家电/WIFI，标准配置。</p>
        <div class="special-services-grids">
            <c:forEach items="${commandhouse }" var="c">
            <div class="col-md-3 special-services-grid">
                <div class="special-services-grid1">
                    <img src="${pageContext.request.contextPath }/static/picture/${c.bedroomImg1}" alt=" " class="img-responsive" />
                </div>
                <h4><a href="${pageContext.request.contextPath }/house/Web_select?id=${c.id}">${c.name}</a></h4>
                <p>${c.desp}</p>
                <div class="m2">
                    <a href="${pageContext.request.contextPath }/house/Web_select?id=${c.id}" class="more-sub hvr-bounce-to-bottom hvr-bounce-to-bottom1">查看详情..</a>
                </div>
            </div>
            </c:forEach>
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
<%--        <p><i>前往定制</i></p>--%>
        <div class="m2">
            <a href="${pageContext.request.contextPath }/service/Web_aftersale" class="hvr-bounce-to-bottom hvr-bounce-to-bottom1">前往定制</a>
        </div>
    </div>
</div>
<!-- //about-bottom -->
<!-- gallery -->
<div class="gallery">
    <div class="container">
        <h3><span>VR看房</span></h3>
        <p class="autem">本平台提供VR实景看房，让您身临其境感受真实环境。</p>
        <div class="gallery-grids carouselGallery-grid hidden-xs">
            <div id="panorama">
                <div id="controls">
                    <div class="ctrl" id="pan-up">&#9650;</div>
                    <div class="ctrl" id="pan-down">&#9660;</div>
                    <div class="ctrl" id="pan-left">&#9664;</div>
                    <div class="ctrl" id="pan-right">&#9654;</div>
                    <div class="ctrl" id="zoom-in">&plus;</div>
                    <div class="ctrl" id="zoom-out">&minus;</div>
                    <div class="ctrl" id="fullscreen">&#x2922;</div>
                </div>
            </div>
<%--            <div class="col-md-4 gallery-grid">--%>
<%--                <div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="0" data-username=" " data-imagetext="At vero eos et accusamus et iusto odio--%>
<%--						 dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores--%>
<%--						 et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui--%>
<%--						 officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio."--%>
<%--                     data-location="Temporibus" data-imagepath="/static/web/images/7.jpg" data-posturl="#"--%>
<%--                     style="background-image:url(/static/web/images/7.jpg);">--%>
<%--                    <div class="carouselGallery-item">--%>
<%--                        <div class="carouselGallery-item-meta">--%>
<%--								<span class="carouselGallery-item-meta-user">--%>
<%--									Temporibus--%>
<%--								</span>--%>
<%--                            <span class="carouselGallery-item-meta-likes">--%>
<%--									<span class="glyphicon glyphicon-heart heart" aria-hidden="true"></span>4535--%>
<%--								</span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
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
<!-- here stars vr frame -->
<script>
    window.addEventListener('load', bodyLoad);
    // let vrimg1 = document.getElementById('vrimg1').value;
    // let vrimg2 = document.getElementById('vrimg2').value;
    // let vrimg3 = document.getElementById('vrimg3').value;
    let vrimg1 = "vrimg1.jpg";
    let vrimg2 = "vrimg2.jpg";
    let vrimg3 = "vrimg3.jpg";
    function bodyLoad(){
        // 多场景配置
        viewer = pannellum.viewer('panorama', {
            "default": {
                "firstScene": "living",//首次加载那个图片
                "author": "snailrenting",//作者
                "sceneFadeDuration": 1000,//全景图场景切换时的持续时间
                "autoLoad": true,//自动加载
                "orientationOnByDefault": true,//是否开启重力感应查看全景图，默认false
                "showControls": false,//是否显示控制按钮，默认true；
                "autoRotate": -2,//是否自动旋转，在加载之后，全景图会水平旋转显示，负数为往右边旋转，整数为往左边旋转，值为数字类型；
                "autoRotateInactivityDelay": 2000//在autoRotate设定的情况下，用户停止操作多长时间后继续自动旋转，单位为毫秒；
            },
//场景，值为对象，其属性名代表着场景的id（sceneId），属性值为viewer的配置参数，其参数会覆盖默认（上述中的default对象）设置的参数；
            "scenes": {
                "living": {
                    "title": "客厅全景展示",
                    "hfov": 110,
                    "pitch": -3,
                    "yaw": 117,
                    "type": "equirectangular",
                    "panorama":  "/static/picture/"+vrimg1,//图片路径
                    "hotSpots": [  //热点，以全景为坐标系的固定点，可以设置链接跳转和点击事件，也可以跳转到不同的场景，该属性的值为对象
                        {
                            "pitch": -13.1,//定位参数， 单位：角度
                            "yaw": -8.9,//定位参数， 单位：角度 y轴，空间中的纵轴
                            "type": "scene", //热点类型，scene 场景切换热点； info 信息展示；URL 以热点为链接，跳转到其他页面的`url
                            "text": "前往卧室",
                            // "cssClass":" pnlm-hotspot pnlm-sprite pnlm-scene1",//自定义样式
                            "sceneId": "house"//sceneId 需要切换的场景id，当 type 为 scene使用；
                        },{
                            "pitch": -0.9,
                            "yaw": 6.9,
                            "type": "scene",
                            "text": "前往卧室",
                            "sceneId": "bedroom",
                            "targetYaw": -23,
                            "targetPitch": 2
                        }
                    ]
                },

                "house": {
                    "title": "卧室全景展示",
                    "hfov": 110,
                    "yaw": 5,
                    "type": "equirectangular",
                    "panorama": "/static/picture/"+vrimg3,//图片路径
                    "hotSpots": [
                        {
                            "pitch": -2.1,//定位参数， 单位：角度
                            "yaw": 248,//定位参数， 单位：角度 y轴，空间中的纵轴
                            "type": "scene", //热点类型，scene 场景切换热点； info 信息展示；URL 以热点为链接，跳转到其他页面的`url
                            "text": "查看客厅",
                            "sceneId": "living"//sceneId 需要切换的场景id，当 type 为 scene使用；
                        },{
                            "pitch": -0.9,
                            "yaw": 6.9,
                            "type": "scene",
                            "text": "前往另一卧室",
                            "sceneId": "bedroom",
                            "targetYaw": -23,
                            "targetPitch": 2
                        }
                    ]
                },

                "bedroom": {
                    "title": "全景照片",
                    "hfov": 110,
                    "yaw": 5,
                    "type": "equirectangular",
                    "panorama":  "/static/picture/"+vrimg2,//图片路径
                    "hotSpots": [
                        {
                            "pitch": -2.1,//定位参数， 单位：角度
                            "yaw": 218.9,//定位参数， 单位：角度 y轴，空间中的纵轴
                            "type": "scene", //热点类型，scene 场景切换热点； info 信息展示；URL 以热点为链接，跳转到其他页面的`url
                            "text": "查看客厅",
                            "sceneId": "living"//sceneId 需要切换的场景id，当 type 为 scene使用；
                        },{
                            "pitch": -0.9,
                            "yaw": 6.9,
                            "type": "scene",
                            "text": "前往另一卧室",
                            "sceneId": "house",
                            "targetYaw": -23,
                            "targetPitch": 2
                        }
                    ]
                }
            }
        });
    }

    document.getElementById('pan-up').addEventListener('click', function(e) {
        viewer.setPitch(viewer.getPitch() + 10);
    });
    document.getElementById('pan-down').addEventListener('click', function(e) {
        viewer.setPitch(viewer.getPitch() - 10);
    });
    document.getElementById('pan-left').addEventListener('click', function(e) {
        viewer.setYaw(viewer.getYaw() - 10);
    });
    document.getElementById('pan-right').addEventListener('click', function(e) {
        viewer.setYaw(viewer.getYaw() + 10);
    });
    document.getElementById('zoom-in').addEventListener('click', function(e) {
        viewer.setHfov(viewer.getHfov() - 10);
    });
    document.getElementById('zoom-out').addEventListener('click', function(e) {
        viewer.setHfov(viewer.getHfov() + 10);
    });
    document.getElementById('fullscreen').addEventListener('click', function(e) {
        viewer.toggleFullscreen();
    });
</script>
<!-- //here ends vr frame -->
</body>
</html>