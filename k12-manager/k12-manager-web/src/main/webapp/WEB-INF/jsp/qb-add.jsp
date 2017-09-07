<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/4/004
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form method="post" action="addQb" >
<input id="cc" name="grade" value="-年级-">
<input id="dd" name="course" value="-课程-">
问题<input type="text" name="question"/>
答案<input type="text" name="answer"/>
  <input type="submit"/>
</form>
<script>

  $(function() {
    $('#cc').combobox({
      url:'gradeList',
      valueField:'id',
      textField:'grade'
    });

    $('#dd').combobox({
      url:'courseList',
      valueField:'id',
      textField:'course'
    });
  });
</script>

</body>
</html>
