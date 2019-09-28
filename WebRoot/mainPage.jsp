<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
  <head> 
    <title>主页</title> 
    <script type="text/javascript">
   function tz(){
window.location.href="/HEUExam/index.html";
}
    </script>
  </head> 
   登陆成功！！
   欢迎您，             <input type="text" name="name" value="${usernames}" style="height:20px; width:200px; color:red;"><br/><br/>

   <button onclick="tz()">进入论坛主页</button>
</html>