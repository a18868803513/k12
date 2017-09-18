<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/12/012
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
  function out(){
    var msg = "您真的确定要退出吗？\n\n请确认！";
    if (confirm(msg)==true){
      return true;
    }else{
      return false;
    }
  }
</script>
<nav class="navbar navbar-default" role="navigation">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">网站首页</a>
  </div>

  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
      <li>
        <a href="#">联系电话:110</a>
      </li>
    </ul>

    <ul class="nav navbar-nav navbar-right">
      <c:choose>
        <c:when test="${user!=null}">
          <li>
            <a href="useredit">用户：<font color="#a63d56">${user.username}</font></a>
          </li>
          <li>
          <a href="userinfo" style="color:#a63d56;text-decoration: underline">个人信息</a>
        </li>
          <li>
            <a href="cart" style="color: #a63d56;text-decoration: underline" >购物车</a>
          </li>
         <%-- <li>
            <a onclick="javascript:return out()" href="signout" style="color: red;text-decoration: underline" >注销</a>
          </li>--%>


        </c:when>
        <c:otherwise>
          <li>
            <a href="register">注册</a>
          </li>
          <li>
            <a href="login">登录</a>
          </li>
        </c:otherwise>
      </c:choose>



    </ul>
  </div>

</nav>
