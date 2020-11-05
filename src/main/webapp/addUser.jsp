<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>中国南不南航空公司</title>
	<link rel="shortcut icon" href="style/img/favicon.ico" type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="style/css/addUser.css">
</head>
<body>
<h1 align="center">中国南方航空</h1>
<div id="div1">
	<img src="style/img/1.jpg">
</div>
<div class="center">
	<h3>快速入会</h3>
	<hr>
	<form action="addUser" method="post">
		<table style="margin-left: 7px;margin-top: 20px">
			<tr>
				<td><span style="color:red">*</span>中文姓名</td><td><input id="username" type="text" name="username" required="required"></td>
				<td><span style="color:red">*</span>手机号码</td><td><input type="text" name="tel" required="required" pattern="\d{11}" title="手机号码格式不正确"></td>
			</tr>
			<tr>
				<td><span style="color:red">*</span>证件类型</td>
				<td>
					<select style="width:160px; height:23px" >
						<option>身份证</option>
						<option>护照</option>
						<option>其他</option>
					</select>
				</td>
				<td><span style="color:red">*</span>证件号码</td>
				<td><input type="text" name="userIDCard" required="required" pattern="\d{15}|(\d{17}(\d|X))" title="证件号码格式不正确"></td>
			</tr>
			<tr>
				<td><span style="color:red">*</span>密码</td><td><input id="pd" type="password" name="password" required="required" pattern="\w{6,16}" title="密码只能是6-16位数字和英文字母"></td>
				<td><span style="color:red">*</span>确认密码</td><td><input id="pdc" type="password" name="password2" required="required" onchange="confirm()"></td>
			</tr>
			<tr>
				<%--<td><span style="color:red">*</span>生日</td><td><input type="date" name="birthday" style="width:155px"></td>--%>
				<td><span style="color:red">*</span>性别</td>
				<td>
					<input type="radio" name="sex" value="男" checked="checked">男&nbsp;
					<input type="radio" name="sex" value="女">女
				</td>
					<td><span style="color:red">*</span>邮箱</td><td><input type="email" name="email" required="required" pattern="\S+@\S+\.\S+" title="邮箱格式不正确"></td>
				<%--<td>${msg}</td>--%>
			</tr>
		</table>
		<input style="left: 145px" id="treaty" type="checkbox" name="deal" onclick="agree()"><label style="left: 150px">已阅读并同意<a href="#">会员条款和隐私政策</a></label><br>
		<input id="bt" type="submit" value="注册" disabled="disabled" style="left: 230px;width: 140px;height: 40px;margin-top: 20px">
	</form>
</div>
</body>
<script type="text/javascript">
	function confirm(){
		var pd1 = document.getElementById("pd").value;
		var pd2 = document.getElementById("pdc").value;
		if(pd1!=pd2){
			alert("两次密码不一致")
		}
	}
	function agree(){
		if(document.getElementById("treaty").checked){
			document.getElementById("bt").disabled=false;
		}else{
			document.getElementById("bt").disabled=true;
		}
	}
</script>
<%
	String f = String.valueOf(request.getAttribute("flag"));
	if(f.equals("no")){%>
<script type="text/javascript">
	alert("该账号已注册");
</script>
<%}
%>
</html>