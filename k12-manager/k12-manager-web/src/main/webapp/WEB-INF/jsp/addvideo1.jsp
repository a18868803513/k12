<%--
  Created by IntelliJ IDEA.
  User: LB
  Date: 2017/9/4
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<form method="post" action="addvideo1" enctype="multipart/form-data">
    年级：<input id="cc" name="grade1" value="-年级-"><br/>
    课程：<input id="dd" name="course1" value="-课程-"><br/>
    标题：<input type="text" name="name" size="20" id="title"/><br/>
    主要描述: <textarea name="introduction" cols="40" rows="8" id="content"></textarea><br/>
    视频：<input type="file" name="file" id="file" size="30" /><br/>
     <input type="submit" id="btn" value="上传">
     <input type="reset" value="重置">
</form>
<script>
    $(function () {
        $('#cc').combobox({
            url: 'gradeList',
            valueField: 'id',
            textField: 'grade'
        });

        $('#dd').combobox({
            url: 'courseList',
            valueField: 'id',
            textField: 'course'
        });
    });
</script>
</body>
</html>
