<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%--  利用jsp三大指令之一 taglib导入jstl --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
  <head> 
    <title>管理员的首页</title> 
    <style>
      *{margin:0;padding:0}
  #left{
     float:left; 
     width:50px; 
     height:80%; 
     background:red
  }
#main{  
     background-color:navajowhite; 
     height:100%;
  } 
/*为了使菜单居中*/
    body {
       /* padding-top:100px;*/
        text-align:center; 
    }
    
    
    /* -------------菜单css代码----------begin---------- */
    .menuDiv { 
        border: 2px solid #aac; 
        overflow: hidden;        
        width:100%;
        display:inline-block;
    }
    
    /* 去掉a标签的下划线 */
    .menuDiv a {
        text-decoration: none;
    }
    
    /* 设置ul和li的样式 */
    .menuDiv ul , .menuDiv li {
        list-style: none;
        margin: 0;
        padding: 0;
        float: left;
    } 
    
    /* 设置二级菜单绝对定位，并隐藏 */
    .menuDiv > ul > li > ul {
        position: absolute;
        display: none;
    }

    /* 设置二级菜单的li的样式 */
    .menuDiv > ul > li > ul > li {
        float: none;
    }
  
    /* 鼠标放在一级菜单上，显示二级菜单 */
    .menuDiv > ul > li:hover ul {
        display: block;
    }

    /* 一级菜单 */
    .menuDiv > ul > li > a {
        width: 272px;
        line-height: 40px;
        color: black;
        background-color: beige;
        text-align: center;
        border-left: 1px solid #bbf;
        display: block;
    }
    
    /* 在一级菜单中，第一个不设置左边框 */
    .menuDiv > ul > li:first-child > a {
        border-left: none;
    }

    /* 在一级菜单中，鼠标放上去的样式 */
    .menuDiv > ul > li > a:hover {
        color: #f0f;
        background-color: #bcf;
    }

    /* 二级菜单 */
    .menuDiv > ul > li > ul > li > a {
        width: 272px;
        line-height: 36px;
        color: #456;
        background-color: #eff;
        text-align: center;
        border: 1px solid #ccc;
        border-top: none;
        display: block;
    }
    
    /* 在二级菜单中，第一个设置顶边框 */
    .menuDiv > ul > li > ul > li:first-child > a {
        border-top: 1px solid #ccc;
    }
    
    /* 在二级菜单中，鼠标放上去的样式 */
    .menuDiv > ul > li > ul > li > a:hover {
        color: #a4f;
        background-color: #cdf;
    }
    /* -------------菜单css代码----------end---------- */
    </style>
  </head> <body>  
   <div id="main"> 
 
 <!-- -------菜单html代码---------begin------- -->
    <div class="menuDiv">
        <ul>
            <li>
                <a title="点我进入注册管理员" href="#" 
                onclick="document.getElementById('admin').style.display='block'">用户管理</a>
                <ul>
                    <li><a href="searchuser.action">查询指定用户</a></li>
                    <li><a href="${pageContext.request.contextPath}/userPagination.action?pageIndex=1">分页查询全部用户</a></li>
    <li id="admin" style="display: none"><a href="${pageContext.request.contextPath}/registerAdmin.jsp">注册管理员</a></li>
    <li><a href="${pageContext.request.contextPath}/registerUser.jsp">注册用户</a></li>
                </ul>
            </li> 
           
            <li>
                <a href="#">题库管理</a>
                <ul>
                    <li><a href="enqu.action">添加题目</a></li>
                    <li><a href="dequ.action">删除题目</a></li>
                    <li><a href="searchquestion.action">查询指定题目</a></li>
                    <li><a href="questionsall.action">查询全部题目</a></li> 
                </ul>
            </li> 
            
            <li>
                <a href="#">其它管理</a>
                <ul>
                    <li><a href="#">.</a></li>
                    <li><a href="#">..</a></li>
                    <li><a href="#">...</a></li>
                </ul>
            </li> 
        </ul>
    </div>
    <!-- -------菜单html代码---------end------- -->
</div>  
  <c:if test="${not empty users}">
  <table align="center" border="1" width="1276" height="91">
       <tr> <th>用户名</th> <th>真实姓名</th> <th>电话</th>
         <th>管理用户</th>
       </tr>
        <c:forEach items="${users}" var="user">
         <tr>
          <td>${user.name }</td>
          <td>${user.realname }</td>
          <td>${user.phone }</td>
                 <td>
             <a href="${pageContext.request.contextPath}/remove.action?id=${user.uid }" 
             onclick="return confirm('您确定删除吗,谢谢！')">删除当前行</a>
         
          <a href="${pageContext.request.contextPath}/queryUserById.action?id=${user.uid }">修改</a>
          </td>
         </tr>      
        </c:forEach>       
     </table>  
     <hr color="peru" size="5px"/>
     <center>
        第${pageIndex }页/共${totalPages}页
        <c:if test="${pageIndex>1 }">
        <a href="${pageContext.request.contextPath}/userPagination.action?pageIndex=1">首页</a>
        <a href="${pageContext.request.contextPath}/userPagination.action?pageIndex=${pageIndex-1 }">上一页</a>
        </c:if>
        <c:if test="${pageIndex<totalPages }">
        <a href="${pageContext.request.contextPath}/userPagination.action?pageIndex=${pageIndex+1 }">下一页</a>
        <a href="${pageContext.request.contextPath}/userPagination.action?pageIndex=${totalPages}">末页</a>
        </c:if>
     </center>
     </c:if>
  </body>
</html>
