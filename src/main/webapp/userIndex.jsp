<%--
  Created by IntelliJ IDEA.
  User: zhaohuaqi
  Date: 2020/11/9
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link rel="stylesheet" type="text/css" href="style/css/index.css">

    <link rel="stylesheet" type="text/css" href="style/css/usermanage.css">
    <script src="style/js/jquery-1.8.2.min.js"> </script>



</head>

<div id="header">
    <a href="index.jsp"><img alt="brand" src="style/img/sky.png"></a>
</div>

<div id="menubar">
    <div class="dropdown">
        <a href="index.jsp"><button class="dropbt">首页</button></a>
    </div>
    <div class="dropdown">
        <button class="dropbt">预定管理 </button>
        <div class="content">
            <a href="https://b2c.csair.com/B2C40/newTrips/static/main/page/search/index.html">机票预定</a>

        </div>
    </div>
    <div class="dropdown">
        <button class="dropbt">南航会员</button>
        <div class="content">
            <a href="#">我的账户</a>

        </div>
    </div>
    <div class="dropdown">
        <button class="dropbt">出行帮助</button>
        <div class="content">
            <a href="rules.jsp">购票服务</a>

        </div>
    </div>
    <div class="dropdown">
        <button class="dropbt">优惠信息</button>
        <div class="content">
            <a href="https://www.csair.com/cn/favourable/discount_tickets_domestic/">优惠机票</a>

        </div>
    </div>
    <div class="dropdown">
        <button class="dropbt">NDC合作</button>
        <div class="content">
            <a href="#">NDC简介</a>

        </div>
    </div>
    <div class="dropdown">
        <button class="dropbt">明珠俱乐部</button>
        <div class="content">
            <a href="#">账户管理</a>

        </div>
    </div>

    <div class="rightlogin">
        <span><a href="userIndex.jsp">${sessionScope.user.username}</a></span>
        <span><button class="logindropbt" onclick="cancellationBtn()">注销</button></span>
    </div>
    <hr>
</div>


<div class="second-main">
    <div class="my-csair">
        我的南航
    </div>

    <div class="left-nav">
        <div class="right">
            <ul>
                <li>
                    <span>订单管理</span>
                    <div class="div2">

                        <table>
                            <thead>
                            <tr>
                                <th>订单编号</th>
                                <th>行程</th>
                                <th>乘机人</th>
                                <th>出发时间</th>
                                <th>订单金额</th>
                                <th>订单状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
<c:forEach items="${userOrderList}" var="uol" varStatus="s">
                            <tbody align="center">
                            <tr>
    <td>${uol.orderId}</td>
    <td>${uol.origin}-${uol.destination}</td>
    <td>${uol.password}</td>
    <td>${uol.sex}</td>
    <td>${uol.phone}</td>
    <td>${uol.uid}</td>
    <td>${uol.email}</td>
    <td>${uol.birth}</td>
    <td>
    <button class="btn btn-info" onclick="editUser(${uol.userId})">编辑</button>
    <button class="btn btn-danger" onclick="deleteById(${uol.userId})">删除</button>
    </td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                </li>
                <li>
                    <span>南航账户</span>
                    <div class="div2">


                    </div>
                </li>
                <li>
                    <span>里程管理</span>
                    <div class="div2">


                    </div>
                </li>
                <li>
                    <span>会员服务</span>
                    <div class="div2">


                    </div>
                </li>
                <li>
                    <span>个人信息</span>
                    <div class="div2">
                        <object style="border:0px;" type="text/x-scriptlet" data="userUpdate.jsp" width="100%" height="100%"></object>
                    </div>
                </li>
                <li onclick="cancellationBtn()">
                    <span>退出</span>
                    <div class="div2">

                    </div>
                </li>
            </ul>
        </div>
    </div>

</div>








<body>
<script>

    function cancellationBtn() {
        window.location.href="remove"
    }
    //鼠标移入区域时
    $('.left-nav .right ul li').click(function(){
        $(this).css({'background':'#477A8D'});
        $(this).find('div').css({'background':'#fff'}).show();//显示div
        $('.div2').not($(this).find('div')).hide();
        $('.left-nav .right ul li').not($(this)).css({'background':'#008acd'});
    });
    //鼠标移除区域时

</script>
</body>
</html>