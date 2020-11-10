<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhaohuaqi
  Date: 2020/11/10
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>国内航班单程选择</title>
    <link rel="stylesheet" type="text/css" href="style/css/queryResult2.css">
    <link rel="stylesheet" type="text/css"
          href="style/bootstrap3/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style/css/cityselector.css">
</head>

<body>

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
            <a href="https://www.csair.com/cn/bookings/value_add_service/hotel/">旅游预定</a>
            <a href="https://b2c.csair.com/B2C40/modules/bookingGroup/manage/ticket_booking.html?lang=cn">团队商旅</a>
            <a href="https://b2c.csair.com/B2C40/modules/bookingnew/mileage/search.html">机票兑换</a>
            <a href="https://www.csair.com/cn/bookings/enterprise/corporate_travel/index.shtml">企业商旅</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbt">南航会员</button>
        <div class="content">
            <a href="#">我的账户</a>
            <a href="#">我的订单</a>
            <a href="#">积分累计</a>
            <a href="#">积分兑换</a>
            <a href="#">会员权益</a>
            <a href="#">优惠专区</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbt">出行帮助</button>
        <div class="content">
            <a href="rules.jsp">购票服务</a>
            <a href="https://www.csair.com/cn/tourguide/booking/orders/order/lvkexuzhi/guonei/index.shtml">预订须知</a>
            <a href="#">出行准备</a>
            <a href="#">地面服务</a>
            <a href="#">客舱服务</a>
            <a href="#">运输规定</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbt">优惠信息</button>
        <div class="content">
            <a href="https://www.csair.com/cn/favourable/discount_tickets_domestic/">优惠机票</a>
            <a href="https://www.csair.com/cn/favourable/mileage_promotion/">机票促销</a>
            <a href="https://www.csair.com/cn/favourable/joint_promotion/">精彩活动</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbt">NDC合作</button>
        <div class="content">
            <a href="#">NDC简介</a>
            <a href="#">api接口</a>
            <a href="#">申请合作</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbt">明珠俱乐部</button>
        <div class="content">
            <a href="#">账户管理</a>
            <a href="#">里程兑换</a>
            <a href="#">里程累计</a>
        </div>
    </div>

    <div class="rightlogin">
        <span><button class="logindropbt" onclick = "window.location.href = 'userLogin.jsp'">登录</button></span>
        <span><button class="logindropbt" onclick = "window.location.href = 'addUser.jsp'">注册</button></span>
    </div>
    <hr>
</div>



<div class="dancheng">
    <div class="dancheng2">
        <header>
            <ul>
                <li><a href="#">单程</a></li>
                <li><a href="#">往返</a></li>
                <li><a href="#">多程</a></li>

            </ul>
        </header>
        <hr style="background-color: white;height: 1px;margin-top: 0px;">
    </div>


    <div class="dancheng3">
        <div class="list">
    <form action="selectFlightInformation">
            <ul>
                <li><span>出发城市</span><input id="form2_citySelect1" type="text" name="origin" required="required"></li>
                <li><span>到达城市</span><input id="form2_citySelect2" type="text" name="destination" required="required"></li>
                <li><span>出发日期</span><input type="date" name="originTime"></li>
                <li>
                    <div class="btn">
                        <input type="submit" name="sub" value="查询">
                    </div>
                </li>
            </ul>
    </form>
        </div>

    </div>
</div>


<div class="wrap">
    <header>
            <span>
                旅客人数：成人 1 儿童 x 0 婴儿 x 0
            </span>
    </header>



    <table class="table table-bordered">

        <tr>
            <th>航班信息</th>
            <th>起飞时间</th>
            <th>到达时间</th>
            <th>价格</th>
            <th>预订</th>
        </tr>
        <c:forEach items="${flight}" var="flight" varStatus="s">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${flight.airId}<br>&nbsp;&nbsp;&nbsp;&nbsp;${flight.origin}→${flight.destination}</td>
                <td><br>${flight.originTime}</td>
                <td><br>${flight.destinationTime}</td>
                <td><br>${flight.price}</td>
                <td><button class="btn btn-info" onclick="submitFlight(${flight.flightId})">提交</button></td>
            </tr>
        </c:forEach>
        <c:if test="${flight.size()==0}">
            <tr><td colspan="9" style="color:#ff0000;text-align:center;" >没有查询到相关信息</td></tr>
        </c:if>
    </table>
</div>




</body>
<script type="text/javascript" src="style/js/cityselect.js"></script>
<script type="text/javascript">
    var test=new Vcity.CitySelector({input:'form2_citySelect1'});
    var test=new Vcity.CitySelector({input:'form2_citySelect2'});
</script>
</html>
