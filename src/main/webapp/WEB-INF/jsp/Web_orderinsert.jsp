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
                <li>签约房源</li>
            </ul>
        </div>
        <div class="services-top-breadcrumbs-left">
            <h3>签约房源</h3>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- services -->
<div class="services">
    <div class="container">
        <h3><span>签约房源</span></h3>
        <p class="autem">请保证填写信息真实正确，提交后不能自行更改，请联系管理员更改。</p>
        <c:if test="${!empty msg }">
            <c:if test="${success == true }">
                <div class="alert alert-success" role="alert">
                    <strong>${msg}</strong>
                </div>
            </c:if>
            <c:if test="${success == false }">
                <div class="alert alert-danger" role="alert">
                    <strong>${msg}</strong>
                </div>
            </c:if>
        </c:if>
        <form form="country1 country2" action="${pageContext.request.contextPath }/order/Web_insert" method="post">
            <input type="hidden" name="houseId" value="${data.houseId}">
            <input type="hidden" name="roomId" value="${data.roomId}">
            <input type="hidden" name="contract" value="${data.contract}">
            <input type="hidden" name="payTime" value="${data.payTime}">
            <input type="hidden" name="payMoney" value="${data.payMoney}">
            <input type="hidden" name="discountMoney" value="${data.discountMoney}">
            <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                <span class="input-group-addon">房源：房源编码#${data.houseId}，房屋编码#${data.roomId} </span>
            </div>
            <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                <span class="input-group-addon">合同号： ${data.contract} </span>
            </div>
            <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                <span class="input-group-addon">签约日： <fmt:formatDate value="${data.payTime}" pattern="yyyy年MM月dd日" /> </span>
            </div>
            <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                <span class="input-group-addon">原租金（/月）：￥${data.payMoney}.00元</span>
            </div>
            <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                <span class="input-group-addon">优惠后租金（/月）：￥${data.discountMoney}.00元</span>
            </div>
<%--            <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">--%>
<%--                <span class="input-group-addon" id="basic-addon1">结算方式：</span>--%>
<%--                <select id="country1" name="checkType" onchange="change_country(this.value)" class="frm-field required">--%>
<%--                    <option value="null">请选择</option>--%>
<%--                    <option value="1">月付</option>--%>
<%--                    <option value="2">季付</option>--%>
<%--                    <option value="3">年付</option>--%>
<%--                </select>--%>
<%--            </div>--%>
            <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                <span class="input-group-addon" id="basic-addon2">支付方式：</span>
                <select id="country2" name="payType" onchange="change_country(this.value)" class="frm-field required">
                    <option value="null">请选择</option>
                    <option value="1">银行卡</option>
                    <option value="2">支付宝</option>
                    <option value="3">微信</option>
                </select>
            </div>
            <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                <span class="input-group-addon" id="sizing-addon1">入住日期：</span>
                <input type="date" name="liveTime1" class="form-control" aria-describedby="sizing-addon2">
            </div>
            <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                <span class="input-group-addon" id="sizing-addon2">截止时间：</span>
                <input type="date" name="validTime1" class="form-control" aria-describedby="sizing-addon2">
            </div>
<%--            <div class="input-group animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">--%>
<%--                <span class="input-group-addon" id="basic-addon">@</span>--%>
<%--                <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">--%>
<%--            </div>--%>
            <div class="row animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                <div class="col-lg-6 in-gp-tl">
                        <div class="keywords">
                            <input type="submit" value="确认签约">
                        </div>
                </div><!-- /.col-lg-6 -->
                <div class="col-lg-6 in-gp-tl">
                        <div class="keywords">
                            <input type="button" onclick="location.href='${pageContext.request.contextPath }/service/Web_service'" class="form-control" value="取消">
                        </div>
                </div><!-- /.col-lg-6 -->
            </div><!-- /.row -->
        </form>
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