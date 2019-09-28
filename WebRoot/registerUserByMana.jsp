<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<!DOCTYPE HTML>
<html>
  <head>
<meta charset="utf-8">
<title>管理员注册用户信息页面</title>
<script>
function tz(){
window.location.href="/HEUExam/login.jsp";
}
</script>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}
#wrap {
	height: 719px;
	width: 100;
	background-image: url(4.jpg);
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
	position: center;
	background-color: #FFFFFF;
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
}
.logC1 a button {
	width: 100%;
	height: 45px;
	background-color: #ee7700;
	border: none;
	color: white;
	font-size: 18px;
}
.logGet .logD.logDtip .p1 {
	display: inline-block;
	font-size: 40px;
	margin-top: 40px;
	width:96%;
}
#wrap .logGet .logD.logDtip {
	width: %;
	border-bottom: 1px solid #ee7700;
	margin-bottom: 20px;
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
}
#wrap .logGet .lgD {
	width: 100%;
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
	background-image: url(%E5%9C%B0%E5%9D%80.png);
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
  <div class="title">欢迎新用户</div>
	
</div>
<div class="wrap" id="wrap">
  
	<div class="logGet">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1" align="justify" dir="ltr" style=''>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; REGISTER<br></p>
			</div>
			<!-- 输入框 -->
     <form action="${pageContext.request.contextPath}/register.action" method="post">
       <input type="hidden" name="role" value="1">
       <table bgcolor="AliceBlue" align="center" border="0" width="386" height="563">
          
          <tr>
            <th width="30%">用户:</th><td><div class="lgD"><input type="text"
            class="solid"
             placeholder="请输入用户名" style="font-size:32px;"
             name="name" id="name" /></div></td>
          </tr>
          <tr>
            <th width="20%">密码:</th><td><div class="lgD"><input type="password" class="solid" placeholder="请输入密码"
             name="pwd" id="pwd"  style="font-size:32px;"/></div></td>
          </tr>
          <tr>
            <th width="20%">重复密码:</th><td>
            <div class="lgD"><input type="password" class="solid" id="pwd2"  style="font-size:32px;"/></td>
          </tr>
          <tr>
            <th width="20%">真实姓名:</th><td>
            <div class="lgD"><input  name="realname"  style="font-size:32px;"/></div></td>
          </tr>
          <tr>
            <th width="20%">手机号码:</th><td>
            <div class="lgD"><input  name="phone"  style="font-size:32px;"/></div></td>
          </tr>
          
           <tr align="center"> 
             <td colspan="2"> 
            <input type="submit"  value="注册" "width:60px; height:30px;"/>
            <input type="reset"  value="重置" "width:60px; height:30px;"/>
            &nbsp;<h2><a href="admin.action">返回首页</a></h2>
          </tr>
       </table>     
     </form>
     </div>
     </div>
    
    
     <div class="footer" id="foot"><div class="copyright" style="top: 15px; left: 768px; width: 623px; height: 108px;">
    
    <div class="img">
		<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系邮箱：871323646@qq.com<br>&nbsp;</span>
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
