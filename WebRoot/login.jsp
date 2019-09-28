<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<!DOCTYPE HTML>
<html>
  <head> 
    <title>登录页</title> 
    <script type="text/javascript">
        function $(id){return document.getElementById(id);}
        function check()
        {
           var username=$('name');
           var password=$('pwd');
           if(username.value=="")
           {
              alert('用户名不能为空，谢谢');
              username.focus();
              return false;
           }
           if(password.value=="")
           {
              alert('密码不能为空，谢谢');
              password.focus();
              return false;
           }
           return true;
        }
        function sh()
        { 
            var pwd=$('pwd');
            var pic=$('pic');
            if(pwd.type=="text")
            {
               pwd.type="password";
               pic.src="img/eye-off.jpg";
            }else{
               pwd.type="text";
               pic.src="img/eye-on.jpg";
            }
            
        }
        function tz(){
window.location.href="${pageContext.request.contextPath}/registerUser.jsp";
}
        function forget(){
window.location.href="${pageContext.request.contextPath}/queryUserById.jsp";
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
	background-image: url(1.png);
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
	width: 80%;
	height: 42px;
	text-indent: 2.5rem;
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
  <body>
  <br><div class="header" id="head">
  <div class="title">哈工程论坛</div>
	
</div>
<div class="wrap" id="wrap">
<div class="logGet" style="top: 111px; left: 740px; width: 598px; height: 492px;">
    <!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1">登录</p>
			</div>
			
     <form action="login.action" method="post" onsubmit="return check()">
       <div class="lgD">
				
          <tr>
            <th class="p1">用户:</th>&nbsp;&nbsp;&nbsp;
            <td><input type="text" placeholder="请输入用户名"
             name="name" id="name" style="font-size:32px;"/>
            	
             </td>
          </tr>
          </div>
          
			<div class="lgD">
				
          <tr>
            <th class="p1">密码:</th>&nbsp;&nbsp;&nbsp;&nbsp;<td><input type="password" placeholder="请输入密码"
             name="pwd" id="pwd"  style="font-size:32px;"><img id="pic" style="border: 5px double blue; vertical-align: middle; top: 12px; left: 440px;" title="显示或隐藏密码" onclick="sh()" src="img/eye-off.jpg">
             
          </td>
          </tr>
          </div>
            <div>
           
          <br><div class="logC">
				<a ><button type="submit"  value="登录"/>登 录</button></a> <br></div>
				<div class="logC1">
				<a ><button  onclick="tz()">注 册</button></a> <br></div>
<p style="text-align:right;"><a href="#" onclick="forget()" style="color:blue;">忘记密码？</a> </p><br>		</div> 
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
