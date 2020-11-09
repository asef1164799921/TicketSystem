<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <script>
        /*编辑按钮的函数*/
        function editFlight(flightId) {
            window.location.href="${pageContext.request.contextPath}/EditFlight1?flightId="+flightId;//url地址传参用？
        }
        /*删除按钮的函数*/
        function deleteById(flightId) {

            if (!confirm("确认删除吗？")) {
                window.event.returnValue = false;

            } else {
                window.location.href = "${pageContext.request.contextPath}/DeleteByIdServlet?id=" + flightId;
            }

        }
    </script>

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
    <form action="adminSelectFlight">
        <a  href="addFlight.jsp"><input class="login-button" type="button" name="add" value="添加航班"></a>
        起始地: <input type="text" name="origin" size="20" />
        终止地: <input type="text" name="destination" size="20" />
        发车时间：<input type="date" name="originTime" size="20" />
        <input type="submit" name="sub" value="查询">
    </form>
    <br /><br />

    <table border="2" width="80%">
        <tr>
            <th>No.</th>
            <th>ID</th>
            <th>航班号</th>
            <th>出发地</th>
            <th>终点</th>
            <th>起飞时间</th>
            <th>价格</th>
            <th>操作</th>
        </tr>

        <c:forEach items="${flight}" var="flight" varStatus="s">
            <%--一条记录--%>
            <tr>
                <td>${s.index+1}</td>
                <td>${flight.flightId}</td>
                <td>${flight.airId}</td>
                <td>${flight.origin}</td>
                <td>${flight.destination}</td>
                <td>${flight.originTime}</td>
                <td>${flight.price}</td>
                <td>
                    <button class="btn btn-info" onclick="editFlight(${flight.flightId})">编辑</button>
                    <button class="btn btn-danger" onclick="deleteById(${flight.flightId})">删除</button>
                </td>
            </tr>
        </c:forEach>
        <c:if test="${flight.size()<=0}">
            <tr><td colspan="9" style="color: red;text-align: center">没有查询到相关信息<td></tr>
        </c:if>
    </table>
    <br />

</div>
</body>
</html>