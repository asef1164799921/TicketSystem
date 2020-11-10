<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <title>用户更新</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style type="text/css">
        .form-group{
            padding-left: 350px;
            box-sizing: border-box;
        }
        .form-groups{
            margin-top: 100px;
            padding-left: 0px;
            box-sizing: border-box;
        }
        .pop{
            position: relative;
        }
        .tijiao{

        }
        .titletable{
            background: url(image/bgtitle.gif); height:24px; line-height:24px; overflow:hidden}
        .xingbie{
            position: absolute;
            left: 410px;
            top: 370px;
        }
        .xingbies{
            position: absolute;
            left: 470px;
            top: 370px;
        }
        .input{
            display: inline-block;
            width: 200px;
        }


        .login-button { /* 按钮美化 */
            width: 70px; /* 宽度 */
            height: 40px; /* 高度 */
            border-width: 0px; /* 边框宽度 */
            border-radius: 3px; /* 边框半径 */
            background: #008acd; /* 背景颜色 */
            cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
            outline: none; /* 不显示轮廓线 */
            font-family: Microsoft YaHei; /* 设置字体 */
            color: white; /* 字体颜色 */
            font-size: 17px; /* 字体大小 */
        }
        .login-button:hover { /* 鼠标移入按钮范围时改变颜色 */
            background: #5599FF;
        }
    </style>
</head>

<body>
<p class="titletable">&nbsp;&nbsp;您所在的位置：系统管理 &gt;用户修改管理</p>
<div align="center" class="pop">
    <hr width="100%" color="#008acd" size="3" />
    <h2 style="background: #008acd">用户信息更新</h2>

    <span style="color: red" >${msg}</span>
    <form class="form-horizontal center" action="${pageContext.request.contextPath}/EditUser2" method="post">

        <%--隐藏域--%>
        <%--<input name="userId" type="hidden" value="${user==null?'':user.id}">--%>
        <input name="userId" type="hidden" value="${user.userId}" >
        <div class="form-group">
            <label class="col-sm-2 control-label">用户名</label>
            <div class="col-sm-2" style="padding-top: 5px">
                <input readonly  class="form-control" name="username"
                       style="display: inline-block;width: 150px"
                       value="${user.username}" >
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="col-sm-2 control-label">密码</label>
            <div class="col-sm-2">
                <input required="required" type="password" class="form-control" id="inputPassword"
                       style="display: inline-block;width: 150px"
                       name="password" placeholder="密码" value="${user.password}">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="col-sm-2 control-label">确认密码</label>
            <div class="col-sm-2">
                <input required="required" type="password"  style="display: inline-block;width: 150px" class="form-control" id="inputPassword2" name="password2" placeholder="确认密码" value="${user.password}">
            </div>
        </div>
        <div class="form-group">
            <label for="inputRealName" class="col-sm-2 control-label">证件号码</label>
            <div class="col-sm-2">
                <input required="required" type="text"  style="display: inline-block;width: 150px"  class="form-control" id="inputRealName" name="uid" placeholder="证件号码" value="${user.uid}">
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail" class="col-sm-2 control-label">邮箱</label>
            <div class="col-sm-2">
                <input required="required"  style="display: inline-block;width: 150px"  type="email" class="form-control" id="inputEmail" name="email" placeholder="邮箱" value="${user.email}">
            </div>
        </div>
        <div class="form-group">
            <label for="inputMobile" class="col-sm-2 control-label">电话</label>
            <div class="col-sm-2">
                <input required="required"  style="display: inline-block;width: 150px" type="tel" class="form-control" id="inputMobile" name="phone" placeholder="电话" value="${user.phone}">
            </div>
        </div>
        <div class="form-groups"  >
            <label class="xingbie">性别</label>
            <div class="xingbies" style="padding-top: 5px">
                <input id="man" type="radio" checked="checked" name="sex" value="男" ${user.sex eq "男"?"checked='checked'":""}/>男
                <input id="woman" type="radio"  name="sex" value="女"${user.sex eq "女"?"checked='checked'":""}/>女
            </div>
        </div>
            <div class="tijiao" >
                <button type="submit" class="btn btn-default"  style="position: absolute;top: 430px;left: 400px">提交 </button>
                <button type="reset" class="btn btn-warning" style="position: absolute;top: 430px;left: 475px"> 重置</button>
            </div>
    </form>

</div>
</body>
</html>