<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/3 0003
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <!-- 引入外部css文件 -->
    <link rel="stylesheet" type="text/css" href="style/css/userlogin.css"></link>
    <title>登录页面</title>
    <script src="style/js/userlogin.js">
    </script>
</head>

<body>
<!-- 头部div logo 登录注册，-->
<div class="top">
    <!-- 设置一个中间容器：一般是宽度1200，1000 -->
    <div class="container">
        <div class="topLeft">
            <img src="style/img/sky.png">
        </div>
        <div class="topRight">
            <span><a href="addUser.jsp">立即注册</a></span>|<span><a href="#">需要帮助</a></span>
        </div>
    </div>
</div>
<!-- 清除浮动样式 -->
<div class="clean"></div>

<!-- 中间体:主题内容 -->
<div class="middle">
    <!-- 设置一个中间容器：一般是宽度1200，1000 -->
    <div class="container">
        <div class="login">
            <div class="loginContent">
                <h3>登录</h3>
                <form action="userLogin" method="post">
                    <div class="it">
                        <!-- 小图标-->
                        <i></i><!-- 设计规范，icon缩写，默认值0，0-->
                        <!-- 文本框-->
                        <input type="text" placeholder="  用户名或邮箱" class="inputTxt" id="userId" name="username">
                    </div>
                    <div style="margin-top: 10px" class="it">
                        <!-- 小图标-->
                        <i  class="pwd"></i>
                        <!-- 文本框-->
                        <input type="password" placeholder="  请输入密码" class="inputTxt" id="pwdId" name="password">
                    </div>
                    <div style="margin-top: 13px">
                        <input style="width: 200px;height: 38px" type="text" name="validationCode" id="validationCode" placeholder="  请输入验证码"/>
                        <!--<img id="validationCode_img"  src="validate.jsp"><br>-->
                        <img src="validate.jsp" id="picture" onClick="change()" id="picture"><!--点击验证码可以进行动态刷新  -->
                        <!--刷新验证码的src-->
                        <script>
                            function change(){
                                var pic=document.getElementById("picture");
                                var i=Math.random();//目的是使页面不一样
                                pic.src="validate.jsp?id="+i;
                            }
                        </script>
                    </div>
                    <div class="mt20">
                            <input type="checkbox" class="topLeft"><span class="topLeft">记住密码</span>
                            <a href="#" class="topRight">找回密码或者账户</a>
                    </div>
                    <div class="clean"></div>
                    <!-- 登录按钮-->
                    <div class="mt20">
                        <input type="button" value="登录" class="btn" onClick="checkUser()">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- 底部信息 ：版权号，协议，公司联系方式-->
<div class="footer">
    <!-- 设置一个中间容器：一般是宽度1200，1000 -->
    <div class="container2">
        <div class="footfont" >关于南航 | 投资者关系 | 预订须知 | 常见问题 | 联系我们 | “十分”关爱基金会</div>
        <hr size="1" color="gray">
        <div class="footfont"><span>Copyright&copy; 2012-2020 Tencent All Rights Reserves</span></div>
    </div>
</div>
</div>
</body>
</html>
