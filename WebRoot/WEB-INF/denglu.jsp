<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>login</title>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}

#wrap {
	height: 719px;
	width: 1700px;
	background-repeat: no-repeat;
	background-position: center center;
	position: relative;
}
#head {
	height: 120px;
	width: 100;
	background-color: #66CCCC;
	text-align: center;
	position: relative;
}
#foot {
	width: 100;
	height: 126px;
	background-color: #CC9933;
	position: relative;
}
#wrap .logGet {
	height: 408px;
	width: 368px;  
	position: absolute;
	
	top: 20%;
	right: 15%;
}
.logC a button {
	width: 100%;
	height: 45px;
	background-color: #ee7700;
	border: none;
	color: white;
	font-size: 18px;
	background-color:rgba(0,0,0,.1);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=red,endColorstr=white); 
}
.logC1 a button {
	width: 100%;
	height: 45px;
	background-color: #ee7700;
	border: none;
	color: white;
	font-size: 18px;
	background-color:rgba(0,0,0,.1);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=red,endColorstr=white); 
}
.logGet .logD.logDtip .p1 {
	display: inline-block;
	font-size: 28px;
	margin-top: 30px;
	width: 86%;
}
#wrap .logGet .logD.logDtip {
	width: 86%;
	border-bottom: 1px solid #ee7700;
	margin-bottom: 60px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}
.logGet .lgD img {
	position: absolute;
	top: 12px;
	left: 8px;
}
.logGet .lgD input {
	width: 100%;
	height: 42px;
	text-indent: 2.5rem;
	border:0;
	border-bottom:1px;
}
#wrap .logGet .lgD {
	width: 86%;
	position: relative;
	margin-bottom: 30px;
	margin-top: 30px;
	margin-right: auto;
	margin-left: auto;
   
}
#wrap .logGet .logC {
	width: 86%;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	
}
#wrap .logGet .logC1 {
	width: 86%;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	
}
 
 
.title {
	font-family: "宋体";
	color: #FFFFFF;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);  /* 使用css3的transform来实现 */
	font-size: 36px;
	height: 40px;
	width: 30%;
}
 
.copyright {
	font-family: "宋体";
	color: #FFFFFF;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);  /* 使用css3的transform来实现 */
	height: 60px;
	width: 40%;
	text-align:center;
}
	
 
#foot .copyright .img {
	width: 100%;
	height: 24px;
	position: relative;
}
.copyright .img .icon {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-image: url(%E7%94%B5%E5%AD%90%E9%82%AE%E4%BB%B6.png);
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}
	
.copyright .img .icon1 {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-image: url(bg.jsp);
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}
.copyright .img .icon2 {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-image: url(%E8%81%94%E7%B3%BB%E6%96%B9%E5%BC%8F.png);
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}
#foot .copyright p {
	height: 24px;
	width: 100%;
}



</style>
</head>
 
<body><br><div class="header" id="head">
  <div class="title" style="text-align: center; top: 35px; left: 552px;">在线答题系统</div>
	
</div>
	
<div class="wrap" id="wrap">
    <img  src="WebRoot/images/bg.jpg" height="719px" width="1700px">
	<div class="logGet" style="top: 170px; left: 316px; width: 563px; height: 363px;">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 登录</p>
			</div>
			<!-- 输入框 -->
			<div class="lgD" align="center">
			
				<input type="text"
					placeholder="输入用户名" style="font-size:32px; background-color:transparent;"/>
			</div>
			<div class="lgD">
			
				<input type="text"
					placeholder="输入用户密码" style="font-size:32px; background-color:transparent"/>
			</div>
			<div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</div> 
			<br><div class="logC">
				<a href="index.html" target="_self"><button>登 录</button></a> <br></div>
				<div class="logC1">
				<a href="index.html" target="_self"><button>注 册</button></a> <br></div>
				<br>
				<p style="text-align:right;"><a href="#">忘记密码？</a> </p><br>
		</div>
</div>
	
<div class="footer" id="foot"><div class="copyright" style="top: 15px; left: 768px; width: 623px; height: 108px;"><div align="center"> 
     
    </div><div class="img"><div align="center"> 
		<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系邮箱：871323646qq@.com</span><br><span></span></div><span>&nbsp;</span>
	</div>
	
	<div class="img"> 
		<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系地址：哈尔滨市红旗大街<br>&nbsp;</span> 
	</div>
	<div class="img"> 
		<span>联系电话：18845726696<br>&nbsp;</span> 
	</div>
 
 
  </div>
	
</div>
	
	
</body>
</html>
