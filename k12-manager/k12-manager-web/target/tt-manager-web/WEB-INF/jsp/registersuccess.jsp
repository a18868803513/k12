<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/2/002
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>3秒后跳转登录</title>
  <script>
    var count = 3;
    var t;
    function writeTip(){
      document.getElementById("d").innerHTML = "<a href='login.jsp'>页面将在"+(count--)+"秒内跳转到index.html页面</a>";
      if(count==0){
        window.clearInterval(t);
        window.location = "login.jsp";
      }
    }


    t = window.setInterval("writeTip()",1000);
  </script>
</head>
<body>
<div id="d">
  <%--<a href='login.jsp'>3秒后跳转到登录页面</a>--%>
</div>
</body>
</html>
