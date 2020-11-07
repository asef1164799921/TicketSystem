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
        function editUser(userId) {
            window.location.href="${pageContext.request.contextPath}/EditUserServlet?id="+userId;//url地址传参用？
        }
        /*删除按钮的函数*/
        function deleteById(userId) {

            if (!confirm("确认删除吗？")) {
                window.event.returnValue = false;

            } else {
                window.location.href = "${pageContext.request.contextPath}/DeleteByIdServlet?id=" + userId;
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

    <title>管理系统</title>
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
    <form method="post" action="adminSelectUser">
        身份证号码: <input type="text" name="uid" size="25" />
        电话号码：<input type="text" name="phone" size="25" />
        <%--<input type="submit" name="sub" value="查询">--%>
        <button href="SelectServlet">查询</button>
    </form>
    <br/>

    <table style="border: solid" border="1px" width="80%" id="tab" class="table table-bordered">
        <tr>
            <td>No</td>
            <td>姓名</td>
            <td>密码</td>
            <td>性别</td>
            <td>电话</td>
            <td>身份证号</td>
            <td>邮箱</td>
            <td>生日</td>
            <td>操作</td>
        </tr>

        <c:forEach items="${userList}" var="users" varStatus="s">
            <%--一条记录--%>
            <tr>
                <td>${s.index+1}</td>
                <td>${users.username}</td>
                <td>${users.password}</td>
                <td>${users.sex}</td>
                <td>${users.phone}</td>
                <td>${users.uid}</td>
                <td>${users.email}</td>
                <td>${users.birth}</td>
                <td>
                    <button class="btn btn-info" onclick="editUser(${users.userId})">编辑</button>
                    <button class="btn btn-danger" onclick="deleteById(${users.userId})">删除</button>
                </td>
            </tr>
        </c:forEach>
        <c:if test="${users.size()<=0}">
            <tr><td colspan="9" style="color: red;text-align: center">没有查询到相关信息<td></tr>
        </c:if>
    </table>
    <br/>

</div>
</body>
</html>