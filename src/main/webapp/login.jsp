<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/31
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--引入外部css文件-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/login.css">
    <title>登陆页面</title>
    <script src="${pageContext.request.contextPath}/style/js/login.js"></script>
</head>
<body>
<!--头部div：logo,登陆，注册，帮助文档之类-->
<div class="top">
    <!--设置一个中间容器，一般宽度是1200或1000-->
    <div class="container">
        <!--top左-->
        <div class="topLeft">
            <img src="${pageContext.request.contextPath}/style/images/bg_logo2491a6.png" height="40" width="248"/>
        </div>
        <!--top右-->
        <div class="topRight">
            <span><a href="#">立即注册</a></span>
            | <span><a href="#">需要帮助</a></span>
        </div>
    </div>
</div>
<!--清除浮动-->
<div class="clear"></div>
<!--中间体：主题内容-->
<div class="middle">
    <!--设置一个中间容器，一般宽度是1200或1000-->
    <div class="container">
        <!--登陆div-->
        <div class="login">
            <div class="loginContent">
                <!--from表单才具有提交数据的功能 action是要提交的url地址-->
                <%--jsp--servlet 1:form表单 2：按钮提交事件 3.绑定的name属性--%>
                <form action="userController" method="post">
                    <span style="color: #ff0000;">${msg}</span><%--req.setAttribute("msg","用户名和密码不匹配");--%>
                    <h3>登陆</h3>
                    <!--用户名文本框-->
                    <div class="it">
                        <!--小图标-->
                        <i></i><!--设计师规约：i是icon的缩写，默认设置图片的（0，0）坐标-->
                        <!--文本框-->
                        <input type="text" name="username" placeholder="邮箱/微信号/QQ号" class="inputTxt" id="userId">
                    </div>
                    <!--密码文本框-->
                    <div class="it">
                        <!--小图标-->
                        <i class="pwd"></i>
                        <!--文本框-->
                        <input type="password" name="password" placeholder="密码" class="inputTxt" id="pwdId">
                    </div>
                    <!--记住密码-->
                    <div class="mt10">
                        <input type="checkbox" class="topLeft"><span>记住密码</span>
                        <a href="#" class="topRight">找回账号或密码</a>
                    </div>
                    <div class="clear"></div><!--清浮动-->
                    <!--登录按钮-->
                    <div class="loginButton">
                        <button type="button" class="btn_login" onclick="checkUser()">登录</button>
<%--
                        <input class="btn_login" type="submit" value="提交" onclick="checkUser()">&lt;%&ndash;自动提交表单数据&ndash;%&gt;
--%>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>