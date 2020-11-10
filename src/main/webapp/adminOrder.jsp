<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <script>
        /*编辑按钮的函数*/
        function editOrder(orderId) {
            window.location.href="${pageContext.request.contextPath}/EditOrder1?orderId="+orderId;//url地址传参用？
        }
        /*删除按钮的函数*/
        function deleteById(orderId) {

            if (!confirm("确认删除吗？")) {
                window.event.returnValue = false;

            } else {
                window.location.href = "${pageContext.request.contextPath}/deleteOrder?orderId=" + orderId;
            }

        }

        /*        window.onload(function requestData() {
                    $.ajax({
                        url:"http://localhost:8080/TicketSystem/selectFlightInformation",
                        type:"POST",
                        dataType:'json',
                        success:function (data) {
                            showData(data)
                        },
                        error:function (msg) {
                            alert("ajax连接异常"+msg)
                        }
                    })
                })

                function showData(data) {
                    var str = "";
                    for(var i=0;i<data.length;i++){
                        str=""
                    }
                }*/
    </script>
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
    <h2 style="background: #008acd">订单查询</h2>
    <form method="post" action="adminSelectOrder">
        身份证号码: <input type="text" name="uid" size="20" />
        订单编号: <input type="text" name="orderId" size="20" />
        电话号码：<input type="text" name="phone" size="20" />
        <input type="submit" name="sub" value="查询">
    </form>
    <br />
        <%--<tr>
            <td>订单号</td><td>用户号</td><td>航班号</td>
            <td>出发时间</td><td>到达时间</td><td>价格</td><td>支付状态</td>
            <td>删除</td><td>更新</td>
        </tr>--%>
    <table style="border: solid" border="1px" width="80%" id="tab" class="table table-bordered">
        <tr>
            <td>订单号</td>
            <td>航班号</td>
            <td>姓名</td>
            <td>证件号码</td>
            <td>始发地</td>
            <td>目的地</td>
            <td>出发时间</td>
            <td>到达时间</td>
            <td>状态</td>
            <td>操作</td>
        </tr>

        <c:forEach items="${orderList}" var="orders" varStatus="s">
            <%--一条记录--%>
            <tr>
                <td>${orders.orderId}</td>
                <td>${orders.airId}</td>
                <td>${orders.username}</td>
                <td>${orders.uid}</td>
                <td>${orders.origin}</td>
                <td>${orders.destination}</td>
                <td>${orders.originTime}</td>
                <td>${orders.destinationTime}</td>
                <td>${orders.state}</td>
                <td>
                    <button class="btn btn-info" onclick="editOrder(${orders.orderId})">编辑</button>
                    <button class="btn btn-danger" onclick="deleteById(${orders.orderId})">删除</button>
                </td>
            </tr>
        </c:forEach>
        <c:if test="${orderList.size()<=0}">
            <tr><td colspan="9" style="color: red;text-align: center">没有查询到相关信息<td></tr>
        </c:if>
    </table>
    <br/>

</div>
</body>
</html>