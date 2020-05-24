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
<!-- header -->
<%@ include file="Web_header.jsp"%>
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
                    <input type = "hidden" id = "vrimg1" name = "vrimg1" value = "${data.vrImg1}" />
                    <input type = "hidden" id = "vrimg2" name = "vrimg2" value = "${data.vrImg2}" />
                    <input type = "hidden" id = "vrimg3" name = "vrimg3" value = "${data.vrImg3}" />
                    <ul>
                        <c:if test="${!empty data.snailRoom.bedroomImg1}">
                            <li> <img src="${pageContext.request.contextPath }/static/picture/${data.snailRoom.bedroomImg1}" alt="bedroomImg1"> </li>
                        </c:if>
                        <c:if test="${!empty data.snailRoom.bedroomImg2}">
                            <li> <img src="${pageContext.request.contextPath }/static/picture/${data.snailRoom.bedroomImg2}" alt="bedroomImg2"> </li>
                        </c:if>
                        <c:if test="${!empty data.bathImg1}">
                            <li> <img src="${pageContext.request.contextPath }/static/picture/${data.bathImg1}" alt="bathImg1"> </li>
                        </c:if>
                        <c:if test="${!empty data.bathImg2}">
                            <li> <img src="${pageContext.request.contextPath }/static/picture/${data.bathImg2}" alt="bathImg2"> </li>
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
                            <li> <img src="${pageContext.request.contextPath }/static/picture/${data.houseImg}"alt="doloribus asperio rep"> </li>
                        </c:if>
                        <c:if test="${!empty data.kitchenImg1}">
                            <li> <img src="${pageContext.request.contextPath }/static/picture/${data.kitchenImg1}" alt=" "> </li>
                        </c:if>
                        <c:if test="${!empty data.livingImg1}">
                            <li> <img src="${pageContext.request.contextPath }/static/picture/${data.livingImg1}" alt=" "> </li>
                        </c:if>
                        <c:if test="${!empty data.livingImg2}">
                            <li> <img src="${pageContext.request.contextPath }/static/picture/${data.livingImg2}" alt=" "> </li>
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
                    <li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a>当前状态：
                        <c:if test="${data.snailRoom.state == 0}">出租中</c:if>
                        <c:if test="${data.snailRoom.state == 1}">已租</c:if>
                        <c:if test="${data.snailRoom.state == 2}">停用</c:if>
                        <c:if test="${data.snailRoom.state == 3}">审核中</c:if>
                        <c:if test="${data.snailRoom.state == 4}">装修</c:if>
                        <c:if test="${data.snailRoom.state == 5}">准备签约</c:if></a></li>
                    <li><span class="glyphicon glyphicon-heart" aria-hidden="true"></span><a href="${pageContext.request.contextPath }/house/Web_praise?id=${data.snailRoom.id}">点赞：${data.snailRoom.praise} </a></li>
                    <li><span class="glyphicon glyphicon-tag" aria-hidden="true"></span><a href="${pageContext.request.contextPath }/collection/Web_insert?roomId=${data.snailRoom.id}">收藏</a></li>
                </ul>
                <div class="single-left2-sub">
                    <ul>
                        <li>操作选择 </li>
                        <li><a href="${pageContext.request.contextPath }/service/Web_aftersale">预约看房</a></li>
                        <li><a >电话咨询</a></li>
                        <li><a <c:if test="${data.snailRoom.state == 0}">href="${pageContext.request.contextPath }/order/Web_orderinsert?roomId=${data.snailRoom.id}"</c:if>>立刻签约</a></li>
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
            <div class="single-left2-sub">
                <ul>
                    <li>VR全景看房 </li>
                </ul>
            </div>
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
        <div class="col-md-4 single-right">
            <div class="categories">
                <h3>房源信息</h3>
                <c:forEach items="${data.snailRooms}" var="r">
                    <div class="related-post">
                        <div class="related-post-left">
                            <a href="${pageContext.request.contextPath }/house/Web_select?id=${r.id}">
                                <c:if test="${!empty r.bedroomImg1}">
                                    <img src="${pageContext.request.contextPath }/static/picture/${r.bedroomImg1}" alt=" " class="img-responsive" />
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
                        <li><a>女</a></li>
                        <li class="active"><a>创建日期：<fmt:formatDate value="${r.createDate}" pattern="yyyy年MM月dd日" /></a></li>
                    </ol>
                </c:forEach>
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
<!-- here stars vr frame -->
<script>
    let vrimg1 = document.getElementById('vrimg1').value;
    let vrimg2 = document.getElementById('vrimg2').value;
    let vrimg3 = document.getElementById('vrimg3').value;
    // viewer = pannellum.viewer('panorama',﻿{
    //     "panorama" : "/static/picture/"+vrimg1,
    //         "autoLoad" :  true,
    //         "showControls" : false
    // });
    window.addEventListener('load', bodyLoad);
    var viewer;
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
                            "text": "前往另一房间",
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
                            "text": "前往另一房间",
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