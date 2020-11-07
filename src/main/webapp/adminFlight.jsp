<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>航班管理系统</title>
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
        width: 100px; /* 宽度 */
        height: 30px; /* 高度 */
        border-width: 0px; /* 边框宽度 */
        border-radius: 3px; /* 边框半径 */
        background: #008acd; /* 背景颜色 */
        cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
        outline: none; /* 不显示轮廓线 */
        font-family: Microsoft YaHei; /* 设置字体 */
        color: white; /* 字体颜色 */
        font-size: 13px; /* 字体大小 */
        margin-right: 70px;
    }
    .login-button:hover { /* 鼠标移入按钮范围时改变颜色 */
        background: #5599FF;
    }
</style>

</head>

<body >

<p class="titletable">&nbsp;&nbsp;您所在的位置：系统管理 &gt;航班管理</p>
<div align="center">
    <hr width="100%" color="#008acd" size="3" />
    <h2 style="background: #008acd">飞机票查询</h2>
    <br>
    <form method="post" action="adminFlight.jsp">
        <a  href="addFlight.jsp"><input class="login-button" type="button" name="add" value="添加航班"></a>
        起始地: <input type="text" name="start" size="20" />
        终止地: <input type="text" name="start" size="20" />
        发车时间：<input type="date" name="sj" size="20" />
        <input type="submit" name="sub" value="查询">
    </form>
    <br /><br />

    <table border="2" width="80%">
        <tr>
            <td>序号</td><td>起始地</td><td>目的地</td>
            <td>车次</td><td>时间</td><td>价格</td>
            <td>删除</td><td>更新</td>
        </tr>

        <tr align="center">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><a href="#">删除</a></td>
            <td><a href="flightUpdate.jsp">更新</a></td>
        </tr>
    </table>
    <br />

</div>
</body>
</html>