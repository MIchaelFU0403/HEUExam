<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<!DOCTYPE HTML>
<html>
  <head>
<meta charset="utf-8">
<title>用户注册页面</title>
<script>
function tz(){
window.location.href="/HEUExam/login.jsp";
}
function forcheck()
        {
          if(form1.name.value=="")
          {
          alert("用户名不能为空");
          return false;
          }
         else if(form1.pwd.value=="")
         {
          alert("密码不能为空");
          return false;
          }
           else if(form1.pwd2.value=="")
         {
          alert("密码校验不能为空");
          return false;
          }
         
           else if(form1.email.value=="")
         {
          alert("邮箱不能为空");
          return false;
          }
          else if(form1.pwd.value!=form1.pwd2.value)
         {
          alert("密码与重复输入的密码不符");
          return false;
          }
          else if(form1.pwd.value.length<6)
         {
          alert("密码长度需控制在六位到十六位");
          return false;
          } 
          else if(!/(\S)+[@]{1}(\S)+[.]{1}(\w)+/.test(form1.email.value))
          {
          alert("请输入正确的邮箱格式！");
          return false;
           }
          return true;
        }

</script>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}
span{
color:red;
font-size:15px;
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
  <div class="title">欢迎新用户</div>
	
</div>
<div class="wrap" id="wrap">
    <img  src="img/1.gif" height="719px" width="1700px">
	<div class="logGet" style="top: 17px; left: 502px; width: 563px; height: 363px;">
			<div style="text-align:center; color:#F8F8FF; size:280px;">
			REGISTER
			</div><br/>
           <form name="form1" action="${pageContext.request.contextPath}/register.action" method="post" onsubmit="return forcheck()">
       <table bgcolor="AliceBlue" align="center" border="0" width="386" height="450" style="filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#000000,endColorstr=#483D8B); ">
          
          <tr>
            <th width="30%" style="color:white;">用户:</th><td><div class="lgD"><input type="text"
            class="solid"
             placeholder="请输入用户名" style="font-size:32px;"
             name="name" id="name" /></div></td>
          </tr>
          <tr>
            <th width="20%" style="color:white;">密码:</th><td><div class="lgD"><input type="password" class="solid" placeholder="请输入密码" maxlength="16" 
             name="pwd" id="pwd"  style="font-size:32px;"/></div></td>
          </tr>
          <tr>
            <th width="20%" style="color:white;">重复密码:</th><td>
            <div class="lgD"><input type="password" maxlength="16"  class="solid" id="pwd2"  style="font-size:32px;"/></td>
          </tr>
          
          <tr>
            <th width="20%" style="color:white;">邮箱:</th><td>
            <div class="lgD"><input type="email" name="email" id="email" style="font-size:32px;"/></div></td>
          </tr>
          
           <tr align="center"> 
             <td colspan="2"> 
             <input type="text" name="message" value="${message }" style="height:20px; width:200px; color:red;"><br/><br/>
            <button type="submit"  value="注册" style="filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#E6E6FA,endColorstr=#B0C4DE); "/>注 册</button>&nbsp;
            <button type="reset"  value="重置" style="filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#E6E6FA,endColorstr=#D8BFD8); "/>重 置</button>
            &nbsp;<button  onclick="tz()">返回登录</button></td>
          </tr>
       </table>     
     </form>
		</div>
</div>
    
     <div class="footer" id="foot"><div class="copyright" style="top: 15px; left: 768px; width: 623px; height: 108px;">
    
    <div class="img">
		<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系邮箱：871323646 &nbsp;</span>
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
