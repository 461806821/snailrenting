<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>蜗牛房屋网站</title>
    <link rel="stylesheet" href="/static/web/css/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/static/web/css/login-style.css">
</head>
<body>
<div class="materialContainer">
    <div class="box">
        <div class="title">登录
            <c:if test="${!empty msg }">
                <label id="msg">-${msg }</label>
            </c:if>
        </div>
        <div class="input">
            <label for="lusername">用户名</label>
            <input type="text" name="username" id="lusername">
            <span class="spin"></span>
        </div>
        <div class="input">
            <label for="lpassword">密码</label>
            <input type="password" name="password" id="lpassword">
            <span class="spin"></span>
        </div>
        <div  id="login" class="button login">
            <button>
                <span>登录</span>
                <i class="fa fa-check"></i>
            </button>
        </div>
        <a href="javascript:" class="pass-forgot">忘记密码？</a>
    </div>

    <div class="overbox">
        <div class="material-button alt-2">
            <span class="shape"></span>
        </div>
        <div class="title">注册</div>
        <div class="input">
            <label for="rusername">用户名</label>
            <input type="text" name="username" id="rusername">
            <span class="spin"></span>
        </div>
        <div class="input">
            <label for="rpassword">密码</label>
            <input type="password" required="required" name="password" id="rpassword">
            <span class="spin"></span>
        </div>
        <div class="input">
            <label for="rpassword1">确认密码</label>
            <input type="password" name="password1" id="rpassword1">
            <span class="spin"></span>
        </div>
         <div class="button" id="register">
            <button>
                <span>注册</span>
            </button>
        </div>
    </div>
</div>

<script src="/static/web/js/jquery.min.js"></script>
<script src="/static/web/js/login.js"></script>
<script type="text/javascript">
        $("#login").click(function() {
            $.ajax({
                type: 'POST',
                url: "${pageContext.request.contextPath }/user/login?username="+$("#lusername").val()+"&password="+$("#lpassword").val(),
                data: {
                    // "username": $("#lusername").val(),
                    // "password": $("#lpassword").val()
                },
                dataType:"html",
                success: function(data) {
                    document.open()
                    document.write(data);
                    document.close()
                },
                error:function(data){
                   alert("error");
                }
            });
        });

        $("#register").click(function() {
            $.ajax({
                type: 'POST',
                url: "${pageContext.request.contextPath }/user/register",
                data: {
                    "username": $("#rusername").val(),
                    "password": $("#rpassword").val(),
                    "password1": $("#rpassword1").val()
                },
                dataType:"html",
                success: function(data) {
                    document.open()
                    document.write(data);
                    document.close()
                },
                error:function(data){
                    alert("error");
                }
            });
        });
</script>

</body>
</html>