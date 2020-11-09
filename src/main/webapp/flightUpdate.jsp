<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <title>航班更新</title>

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
            left: 410px;
            top: 370px;
        }
        .xingbies{
            position: absolute;
            left: 470px;
            top: 370px;
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
<p class="titletable">&nbsp;&nbsp;您所在的位置：系统管理 &gt;航班更新管理</p>
<div align="center">
    <hr width="90%" color="#008acd" size="3" />
    <h2 style="background: #008acd">航班信息更新</h2>



    <%--<form action="UpdateServlet" method="get">
        <table border="0" width="30%">
            <tr align="left">
                <td>航班序号:</td>
                <td><input type="text" name="upcc" ></td>
            </tr>
            <tr align="left">
                <td>起始点:</td>
                <td><input type="text" name="upstart" ></td>
            </tr>
            <tr align="left">
                <td>目的地:</td>
                <td><input type="text" name="upend" ></td>
            </tr>
            <tr align="left">
                <td>出发时间:</td>
                <td><input type="text" name="uptime" ></td>
            </tr>
            <tr align="left">
                <td>到达时间:</td>
                <td><input type="text" name="upprice" ></td>
            </tr>
            <tr align="left">
                <td>价  格:</td>
                <td><input type="text" name="uptime" ></td>
            </tr>
            <tr align="left">
                <td>航班号:</td>
                <td><input type="text" name="upprice" ></td>
            </tr>
            <tr align="left">
                <td colspan="2"><input type="hidden" name="id"></td>
            </tr>
        </table>
 <br>
        <p align="center">
            <input class="login-button" type="submit" name="upsub" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input class="login-button" type="reset" name="upreset" value="撤销">
        </p>
    </form>

    <hr width="90%" color="#008acd" size="3" />
    ©2019 YXZ 使用订票系统前必读 意见反馈  <br />
    齐鲁师范学院信息科学与工程学院所有 0000000000001号--%>
    <span style="color: red" >${msg}</span>
    <form class="form-horizontal center" action="${pageContext.request.contextPath}/EditUser2" method="post">

        <%--隐藏域--%>
        <%--<input name="userId" type="hidden" value="${user==null?'':user.id}">--%>
        <input name="userId" type="hidden" value="${flights.flightId}" >
        <div class="form-group">
            <label class="col-sm-2 control-label">航班序号</label>
            <div class="col-sm-2" style="padding-top: 5px">
                <input readonly  class="form-control" name="username"
                       style="display: inline-block;width: 150px"
                       value="${flights.flightId}" >
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="col-sm-2 control-label">起飞地</label>
            <div class="col-sm-2">
                <input required="required" type="text" class="form-control" id="inputPassword"
                       style="display: inline-block;width: 150px"
                       name="origin" placeholder="起飞地" value="${flights.origin}">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="col-sm-2 control-label">目的地</label>
            <div class="col-sm-2">
                <input required="required" type="text"  style="display: inline-block;width: 150px" class="form-control" id="inputPassword2" name="destination" placeholder="目的地" value="${flights.destination}">
            </div>
        </div>
        <div class="form-group">
            <label for="inputRealName" class="col-sm-2 control-label">起飞时间</label>
            <div class="col-sm-2">
                <input required="required" type="datetime-local" step="01"  style="display: inline-block;width: 150px"  class="form-control" id="inputRealName" name="originTime" placeholder="起飞时间" value="${flights.originTime}">
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail" class="col-sm-2 control-label">到达时间</label>
            <div class="col-sm-2">
                <input required="required"  style="display: inline-block;width: 150px"  type="datetime-local" step="01" class="form-control" id="inputEmail" name="destinationTime" placeholder="到达时间" value="${flights.destinationTime}">
            </div>
        </div>
        <div class="form-group">
            <label for="inputMobile" class="col-sm-2 control-label">价格</label>
            <div class="col-sm-2">
                <input required="required"  style="display: inline-block;width: 150px" type="text" class="form-control" id="inputMobile" name="price" placeholder="价格" value="${flights.price}">
            </div>
        </div>
            <div class="form-group">
                <label for="inputMobile" class="col-sm-2 control-label">航班号</label>
                <div class="col-sm-2">
                    <input required="required"  style="display: inline-block;width: 150px" type="text" class="form-control" id="inputAirId" name="airId" placeholder="航班号" value="${flights.airId}">
                </div>
            </div>
        <div class="tijiao" >
            <button type="submit" class="btn btn-default"  style="position: absolute;top: 430px;left: 400px">提交 </button>
            <button type="reset" class="btn btn-warning" style="position: absolute;top: 430px;left: 475px"> 重置</button>
        </div>
    </form>
</div>
</body>
</html>