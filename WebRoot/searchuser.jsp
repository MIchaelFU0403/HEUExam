<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
  <head> 
    <title>指定用户信息查询页面</title>
    <style>
   
    </style>
  </head> 
  <body style="background:#F0FFFF;">
  <div align="center"><br /></div><br><div class="header" id="head">
  <div class="title" style="color:#191970; font-size:52px; text-align:center;">用户查询</div>
  <br/> <br/>  <hr color="black" size="3px"/><br/> <br/> <br/> <br/><br/> <br/> <br/><br/> <br/>
   <form action="users.action"  method="post" style="text-align:center;">
     <div><p style="text-align:center;">请选择查询用户名:
           <select name="name">
              <c:forEach items="${searchuser}" var="su">
              <option value="${su.name}">${su.uid }${su.name}</option>
              </c:forEach>
            </select>
            <input type="submit"  value="查询" style="text-align:center; height:25px; width:50px; font-size:17px;" />   </p>
     
     </div>
     </form>
  <br/> <br/> <br/><br/> <br/> <br/> <br/> <br/> <br/><br/>
	<h4 style="text-align:right;"><a href="admin.action">返回首页</a></h4>
  </body>
</html>

