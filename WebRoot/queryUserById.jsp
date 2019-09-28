<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<!DOCTYPE HTML>
<html>
  <head> 
    <title>用户信息修改页</title> 
    <script>
    function forcheck()
        {
           if(form1.uid.value=="")
          {
          alert("密钥不能为空");
          return false;
          }
          else if(form1.name.value=="")
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
  </head> 
  <body>
     <form name="form1" action="${pageContext.request.contextPath}/modify.action" method="post" onsubmit="return forcheck()">
       <table bgcolor="beige" align="center" border="0" width="30%">
         <tr>
           <th>编号</th>
           <td><input name="uid" id="uid"/></td>
         </tr>
          <tr>
            <th>用户:</th><td><input type="text" 
             name="name" id="name"  /></td>
          </tr>
          <tr>
            <th>密码:</th><td><input type="password" class="solid" placeholder="请输入密码"
             name="pwd" id="pwd" /></td>
          </tr>
          <tr>
            <th>重复密码:</th><td>
            <input type="password" class="solid" id="pwd2" /></td>
          </tr>
          
          <tr>
            <th>邮箱:</th><td>
            <input  name="email" id="email" /></td>
          </tr>
          
           <tr align="center"> 
             <td colspan="2"> 
            <input type="submit"  value="修改"/>
            <input type="reset"  value="取消"/></td>
          </tr>
       </table>     
     </form>
  </body>
</html>
