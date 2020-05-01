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
    <!-- //start-smoth-scrolling -->
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
<!-- header Area Start-->
<%@ include file="Web_header.jsp"%>
<!-- header Area End-->
<!-- breadcrumbs -->
<div class="services-top-breadcrumbs">
    <div class="container">
        <div class="services-top-breadcrumbs-right">
            <ul>
                <li><a href="${pageContext.request.contextPath }/index/Web_index">主页</a> <i>/</i></li>
                <li>VR看房</li>
            </ul>
        </div>
        <div class="services-top-breadcrumbs-left">
            <h3>VR看房</h3>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //breadcrumbs -->
<div class="single">
    <div class="container">
        <div class="col-md-8 single-left">
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
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //single -->
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