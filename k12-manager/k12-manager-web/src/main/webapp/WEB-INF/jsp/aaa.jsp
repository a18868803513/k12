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


<script src="js/countDown.js"></script>
<script type="text/javascript">
  $(function(){
    $(".count_down").countDown({
      startTimeStr:'2017/01/11 00:00:00',//开始时间
      endTimeStr:'2028/01/17 23:59:59',//结束时间
      daySelector:".day_num",
      hourSelector:".hour_num",
      minSelector:".min_num",
      secSelector:".sec_num"
    });
  })
</script>
<div class="count_down"></div>
</body>
</html>
