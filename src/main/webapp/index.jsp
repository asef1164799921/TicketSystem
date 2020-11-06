<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="_Error.jsp"%>

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>航空管理系统</title>
<link href="style/Index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Script/Index.js"></script>
	<%--<style>
	*{
	margin: 0;
	padding: 0
	}
	.div{
	width: 100%;
	height:600px;
	background-repeat: no-repeat;
	background-image: url("image/aabb.jpg");
	animation:frams 7s infinite;
	}
	img{vertical-align: bottom}
	@keyframes frams {
	0%{
	background-image: url("image/aacc.jpg");background-size: 70% 70%;background-repeat: no-repeat
	}
	25%{
	background-image: url("image/aadd.jpg");background-size: 70% 70%;background-repeat: no-repeat
	}
	50%{
	background-image: url("image/aahhh.jpg");background-size: 70% 70%;background-repeat: no-repeat
	}
	75%{
	background-image: url("image/aaff.jpg");background-size: 70% 70%;background-repeat: no-repeat
	}
	100%{
	background-image: url("image/aawww.jpg");background-size: 70% 70%;background-repeat: no-repeat
	}
	}
	</style>--%>
</head>
<body>
	
	 <%-- 判断uName是否存在，如何不存在则证明非登录操作，跳转至登录页面 --%>
	

	<!--header-->
 	<div class="header">
	        <div class="header_logo">
				<img src="image/aaxxx.jpg" >
	        </div>
	        <%-- 
	        <div class="func">
	        	<ul>
	            	<li class="li_func1"><a href="<%=path %>/Common/ChagePwd.jsp" target="mainFrame">修改密码</a></li>
	                <li class="li_func2"><a href="<%=path %>/Common/UserInfo.jsp" target="mainFrame">用户信息</a></li>
	                <li class="li_func3"><a href="<%=path %>/Common/Logout.jsp">退出系统</a></li>
	            </ul>
	        </div>
	       --%>
    	</div>

    
    <div class="wrap">

        <ul class="siderbar">
        	
        	<%
        		
        	%>
        	<li><span>用户信息管理</span>
	        	<ul>
	               <li><a href="user.jsp" target="mainFrame">用户信息管理</a></li>
	        	</ul>
	        </li>
	        <li><span>订单信息管理</span>
	            <ul>
	               <li><a href="order.jsp" target="mainFrame">订单信息管理</a></li>
	            </ul>
	        </li>
	        <li><span>航班信息管理</span>
	            <ul>
	                <li><a href="flight.jsp" target="mainFrame">航班信息管理</a></li>
	            </ul>
	        </li>

	        <%
	        
	        %>  	        	    	        
	        <li><span>系统功能操作</span>
	        <div>
	                <a href="/Common/ChagePwd.jsp" target="mainFrame">修改密码</a>
	                <a href="/Common/UserInfo.jsp" target="mainFrame">个人信息</a>
	                <a href="/Common/Logout.jsp">退出系统</a>
	        </div>

	        <%
	        	
	         %>
	       	 
        </ul>
        
       	<div class="content" >
              	<iframe style="display:block;" width="999px" height="100%" name="mainFrame" frameborder="0" >
                  
                </iframe>
        </div>
   </div>
   <div class="footer"></div>

</body>
</html>
