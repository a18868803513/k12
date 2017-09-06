<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/6/006
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线题库</title>
  <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/bootstrap/easyui.css">
  <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/icon.css">
  <link rel="stylesheet" href="css/common.css">
</head>
<body>
<body class="easyui-layout">
<div data-options="region:'north',title:'在线题库',split:true" style="height:100px;"></div>
<div data-options="region:'south',title:'South Title',split:true" style="height:100px;"></div>
<div data-options="region:'east',iconCls:'icon-reload',title:'联系我们',split:true" style="width:100px;"></div>
<div data-options="region:'west',title:'联系我们',split:true" style="width:100px;"></div>
<div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
  <div id="toolbar">
    <div style="padding: 5px; background-color: #fff;">
      <label>题目：</label>
      <input class="easyui-textbox" type="text" id="question">
      <label>商品状态：</label>
      <input id="cc" name="grade" value="年级">
      <input id="dd" name="course" value="课程">
      <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
      <!--注意：要加上type="button",默认行为是submit-->
      <button id="bg" type="button" class="easyui-linkbutton">搜索</button>
    </div>

  </div>
  <table id="dg"></table>
</div>

<script src="js/jquery-easyui-1.5/jquery.min.js"></script>
<!-- jquery easyui -->
<script src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script src="js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<!-- 自定义脚本 -->
<script src="js/common.js"></script>
<script src="js/moment/moment-with-locales.js"></script>
<script>
  moment.locale('zh-cn');
</script>
<script>
  $("#bg").click(function(){
    alert('aaa');
    var question=$('#question').textbox("getValue");
    var gidNum=$('#cc').combobox("getValue");
    alert(gidNum)
    if (gidNum=="年级"){
      gidNum="";
    }
    var cidNum=$('#dd').combobox("getValue");
    if(cidNum=="课程"){
      cidNum="";
    }
    var url="qbList?gid="+gidNum+"&cid="+cidNum+"&question="+question;

    $('#dg').datagrid({
      toolbar: '#toolbar',
      url: url,
      pagination: true,
      fit: true,
      columns: [[
        {field: 'ck', checkbox:true },
        {field: 'id', title: 'ID', width: 100},
        {field: 'question', title: '问题', width: 100}
      ]]
    })

  });
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


</body>
</html>
