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

    <title>订单更新</title>

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
            left: 385px;
            top: 510px;
        }
        .xingbies{
            position: absolute;
            left: 470px;
            top: 505px;
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
<p class="titletable">&nbsp;&nbsp;您所在的位置：系统管理 &gt;订单修改管理</p>
<div align="center" class="pop">
    <hr width="100%" color="#008acd" size="3" />
    <h2 style="background: #008acd">订单信息更新</h2>

    <span style="color: red" >${msg}</span>
    <form class="form-horizontal center" action="${pageContext.request.contextPath}/EditOrder2" method="post">

        <%--隐藏域--%>
        <%--<input name="userId" type="hidden" value="${order.userId}" >--%>
        <div class="form-group">
            <label class="col-sm-2 control-label">订单编号</label>
            <div class="col-sm-2" style="padding-top: 5px">
                <input readonly  class="form-control" name="orderId"
                       style="display: inline-block;width: 150px"
                       value="${order.orderId}" >
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="col-sm-2 control-label">航班号</label>
            <div class="col-sm-2">
                <input required="required" type="text" class="form-control" id="inputPassword"
                       style="display: inline-block;width: 150px"
                       name="airId" placeholder="航班号" value="${order.airId}">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="col-sm-2 control-label">姓名</label>
            <div class="col-sm-2">
                <input required="required" type="text"  style="display: inline-block;width: 150px" class="form-control" id="inputPassword2" name="username" placeholder="姓名" value="${order.username}">
            </div>
        </div>
        <div class="form-group">
            <label for="inputRealName" class="col-sm-2 control-label">证件号码</label>
            <div class="col-sm-2">
                <input required="required" type="text"  style="display: inline-block;width: 150px"  class="form-control" id="inputRealName" name="uid" placeholder="证件号码" value="${order.uid}">
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail" class="col-sm-2 control-label">始发地</label>
            <div class="col-sm-2">
                <input required="required"  style="display: inline-block;width: 150px"  type="text" class="form-control" id="inputEmail" name="origin" placeholder="始发地" value="${order.origin}">
            </div>
        </div>
        <div class="form-group">
            <label for="inputMobile" class="col-sm-2 control-label">目的地</label>
            <div class="col-sm-2">
                <input required="required"  style="display: inline-block;width: 150px" type="tel" class="form-control" id="inputMobile" name="destination" placeholder="目的地" value="${order.destination}">
            </div>
        </div>
            <div class="form-group">
                <label for="inputstart" class="col-sm-2 control-label">出发时间</label>
                <div class="col-sm-2">
                    <input required="required"  style="display: inline-block;width: 150px" type="tel" class="form-control" id="inputstart" name="originTime" placeholder="出发时间" value="${order.originTime}">
                </div>
            </div>
            <div class="form-group">
                <label for="inputarrive" class="col-sm-2 control-label">到达时间</label>
                <div class="col-sm-2">
                    <input required="required"  style="display: inline-block;width: 150px" type="tel" class="form-control" id="inputarrive" name="destinationTime" placeholder="到达时间" value="${order.destinationTime}">
                </div>
            </div>
            <div class="form-group">
                <label for="inputprice" class="col-sm-2 control-label">价格</label>
                <div class="col-sm-2">
                    <input required="required"  style="display: inline-block;width: 150px" type="tel" class="form-control" id="inputprice" name="price" placeholder="价格" value="${order.price}">
                </div>
            </div>
        <div class="form-groups"  >
            <label class="xingbie">订单状态</label>
            <div class="xingbies" style="padding-top: 5px">
                <input id="man" type="radio" checked="checked" name="state" value="已支付" ${order.state eq "已支付"?"checked='checked'":""}/>已支付
                <input id="woman" type="radio"  name="state" value="未支付"${order.state eq "未支付"?"checked='checked'":""}/>未支付

            </div>
        </div>
        <div class="tijiao" >
            <button type="submit" class="btn btn-default"  style="position: absolute;top: 550px;left: 400px">提交 </button>
            <button type="reset" class="btn btn-warning" style="position: absolute;top: 550px;left: 475px"> 重置</button>
        </div>
    </form>

</div>
</body>
</html>