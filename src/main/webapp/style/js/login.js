function checkUser(){

    //获取用户名
    var username = document.getElementById("userId").value;
    var password = document.getElementById("pwdId").value;
    if (username==undefined || username==null || username==""){
        alert("用户名不能为空");
        return;
    }
    if (password==undefined || password==null || password==""){
        alert("密码不能为空");
        return;
    }
    /*提交文本框的数据*/
    document.forms[0].submit();
}