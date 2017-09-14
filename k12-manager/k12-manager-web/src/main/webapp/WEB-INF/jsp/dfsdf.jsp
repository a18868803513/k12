<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/13/013
  Time: 23:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
<script src="js/distpicker.data.js"></script>
<script src="js/distpicker.js"></script>
<script src="js/main.js"></script>

<script>
  $('#target').distpicker();
  $('#target').distpicker({
    province: '---- 所在省 ----',
    city: '---- 所在市 ----',
    district: '---- 所在区 ----'
  });

</script>
<div id="target" data-toggle="distpicker"><!-- container -->
  <select></select><!-- 省 -->
  <select></select><!-- 市 -->
  <select></select><!-- 区 -->
</div>
</body>
</html>
