<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/2/002
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<table id="dg"></table>

<input id="cc" name="grade" value="-年级-">
<input id="dd" name="course" value="-课程-">
<button id="bg">查询</button>
<script>
  $("#bg").click(function(){
    var gidNum=$('#cc').combobox("getValue");
    var cidNum=$('#dd').combobox("getValue");
    var url="qbList?gid="+gidNum+"&cid="+cidNum;
    $('#dg').datagrid({
      url:url,
      pagination: true,
      fit:true,
      columns:[[
        {field:'question',title:'问题',width:100},
        {field:'answer',title:'答案',width:100,align:'right'}
      ]]
    });

  })

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
