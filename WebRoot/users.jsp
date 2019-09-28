<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
  <head> 
    <title>指定用户信息查询页面</title>
  </head> 
  <body style="background:#F0FFFF;">    
   <div align="center"><br /></div><br><div class="header" id="head">
  <div class="title" style="color:#191970; font-size:42px; text-align:center;">${realname}个人信息</div>
   
     
     <hr color="black" size="3px"/>
     <br/> <br/> <br/><br/> <br/> <br/>
    <table border="1" width="100%" height="250px"  background="images/exam-bg.jpg"
      bordercolorlight="black" bordercolordark="black">
      <tr style="height:20% text-align:center;"><th >序号</th><th>用户名</th><th>真实姓名</th><th>联系方式</th><th>角色</th></tr>
      <c:forEach items="${users}" var="u"><tr style="height:80%; text-align:center;">
           <td style="color:blue">${u.uid }</td>
         <td>${u.name }</td>
         <td>${u.realname }</td>
         <td>${u.phone }</td>
         <td>${u.role }
         <c:if test="${u.role eq 0 }"><p style="color:green">管理员</p> </c:if>
         <c:if test="${u.role eq 1 }"><p style="color:black">学生</p> </c:if></td>
       </tr> 
     </c:forEach>
    
     </table>
     <br/> <br/>
     <form style="text-align:center;" action="searchuser.action" method="post">
      <input type="submit" value="继续查询" />
      </form><form style="text-align:center;" action="admin.action" method="post">
      <input type="submit" value="返回首页" />
     </form>
  </body>
</html>

