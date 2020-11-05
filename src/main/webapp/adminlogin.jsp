<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/11/3
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员登录</title>

    <link rel="stylesheet" type="text/css" href="style/css/adminlogin.css">
</head>
<body >
<div id="login">
    <h1>管理员登录</h1>
    <form method="post">
        <input type="text" required="required" placeholder="用户名" name="u"></input>
        <input type="password" required="required" placeholder="密码" name="p"></input>
        <button class="but" type="submit">登录</button>
    </form>
</div>
</body>
</html>
