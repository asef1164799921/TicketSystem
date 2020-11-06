<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>火车票管理系统</title>
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
    </style>
</head>
<body >
<p class="titletable">&nbsp;&nbsp;您所在的位置：系统管理 &gt;订单管理</p>
<div align="center">
    <hr width="100%" color="#008acd" size="3" />
    <h2 style="background: #008acd">用户查询</h2>

    <br /><br />

    <table   style="border: solid" border="1px" width="80%">
        <tr>
            <td>用户号</td><td>姓名</td><td>密码</td>
            <td>性别</td><td>电话</td><td>用户号</td><td>邮箱</td><td>生日</td>
            <td>删除</td><td>更新</td>
        </tr>

        <tr align="center">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><a href="#">删除</a></td>
            <td><a href="userupdate.jsp">更新</a></td>
        </tr>
    </table>
    <br />

</div>
</body>
</html>