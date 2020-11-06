<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhaohuaqi
  Date: 2020/9/1
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        /*编辑按钮的函数*/
        function editUser(flightId) {
            window.location.href="${pageContext.request.contextPath}/EditUserServlet?id="+flightId;//url地址传参用？
        }
        /*删除按钮的函数*/
        function deleteById(flightId) {

            if (!confirm("确认删除吗？")) {
                window.event.returnValue = false;

            } else {
                window.location.href = "${pageContext.request.contextPath}/DeleteByIdServlet?id=" + flightId;
            }

        }

        window.onload(function requestData() {
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
        }


    </script>
</head>
<body>
<h1>用户列表</h1>
<button class="btn btn-success"
        onclick="javascript:window:location.href='${pageContext.request.contextPath}/#'">新增</button>
<table class="table table-bordered" id="tab">
    <%--列头--%>
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
                    <button class="btn btn-info" onclick="editUser(${flight.flightId})">编辑</button>
                    <button class="btn btn-danger" onclick="deleteById(${flight.flightId})">删除</button>
                </td>
            </tr>
        </c:forEach>
        <c:if test="${flight.size()<=0}">
            <tr><td colspan="9" style="color: red;text-align: center">没有查询到相关信息<td></tr>
        </c:if>

</table>
</body>
</html>
