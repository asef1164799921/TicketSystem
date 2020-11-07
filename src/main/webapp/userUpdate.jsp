<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'Update.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style type="text/css">
        .titletable{
            background: url(image/bgtitle.gif); height:24px; line-height:24px; overflow:hidden}


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
<div align="center">
    <hr width="100%" color="#008acd" size="3" />
    <h2 style="background: #008acd">用户信息更新</h2>



    <form action="UpdateServlet" method="get">
        <table  border="0" width="30%">
            <tr align="left">
                <td>用户号:</td>
                <td><input type="text" name="upcc" ></td>
            </tr>
            <br>
            <tr align="left">
                <td>姓&nbsp;&nbsp;名:</td>
                <td><input type="text" name="upstart" ></td>
            </tr>
            <tr align="left">
                <td>密&nbsp;&nbsp;码:</td>
                <td><input type="text" name="upend" ></td>
            </tr>
            <tr align="left">
                <td>性&nbsp;&nbsp;别:</td>
                <td><input type="text" name="uptime" ></td>
            </tr>
            <tr align="left">
                <td>电&nbsp;&nbsp;话:</td>
                <td><input type="text" name="upprice" ></td>
            </tr>
            <tr align="left">
                <td>u&nbsp;&nbsp;id:</td>
                <td><input type="text" name="uptime" ></td>
            </tr>
            <tr align="left">
                <td>邮&nbsp;&nbsp;件:</td>
                <td><input type="text" name="upprice" ></td>
            </tr>
            <tr align="left">
                <td>生&nbsp;&nbsp;日:</td>
                <td><input type="text" name="upprice" ></td>
            </tr>
            <tr align="left">
                <td colspan="2"><input type="hidden" name="id"></td>
            </tr>

        </table>
        <br>
        <p   align="center">
            <input class="login-button" type="submit" name="upsub" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input class="login-button" type="reset" name="upreset" value="撤销">
        </p>
    </form>

    <hr width="90%" color="#008acd" size="3" />
    ©2019 YXZ 使用订票系统前必读 意见反馈  <br />
    齐鲁师范学院信息科学与工程学院所有 0000000000001号
</div>
</body>
</html>