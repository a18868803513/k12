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
            <a href="useredit">${user.username}</a>
          </li>
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

      <li>
        <a href="cart">购物车</a>
      </li>

    </ul>
  </div>

</nav>
