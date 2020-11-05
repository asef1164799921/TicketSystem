function checkUser(){
	//获取用户的值
	var userName=document.getElementById("userId").value;
	if(userName==undefined || userName==null||userName==""){
		alert("用户名不能为空");
		return;
		}
		//获取密码
		var pwd=document.getElementById("pwdId").value;
	    if(pwd==undefined || pwd==null||pwd==""){
		alert("密码不能为空");
		return;
		}
		document.forms[0].sumit();//提交form表单数据
		}