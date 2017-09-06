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
      <input id="cc" name="gid" value="年级">
      <input id="dd" name="cid" value="课程">
      <select id="testSize" name="testSize" class="easyui-combobox" >
        <option value="5">5道题目</option>
        <option value="10">10道题目</option>
        <option value="20">20道题目</option>
      </select>
      <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
      <!--注意：要加上type="button",默认行为是submit-->
      <button id="bg" type="button" class="easyui-linkbutton">生成题目</button>
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
  $("#bg").click(function() {
    var gid=$('#cc').combobox("getValue");
    var cid=$('#dd').combobox("getValue");
    var testSize=$('#testSize').combobox('getValue');
    var url="textPaper?gid="+gid+"&cid="+cid+"&testSize="+testSize;
   /* $('#table').datagrid('load',{
      gid: $('#cc').combobox('getValue'),
      cid:  $('#dd').combobox('getValue'),
      testSize:$('#testSize').combobox('getValue')
    });*/

    $('#dg').datagrid({
      toolbar: '#toolbar',
      url: url,
      pagination: true,
      fit: true,
      columns: [[
        {field: 'ck', checkbox: true},
        {field: 'id', title: 'ID', width: 100},
        {field: 'question', title: '问题', width: 100},
        {field: 'a', title: '答案', width: 100, editor:'text'}
      ]]
    })


  });



/*  $(function () {*/
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
  $('#dg').datagrid({
    onClickRow: function(index,field,value){
      $(this).datagrid('beginEdit', index);
      /*var ed = $(this).datagrid('getEditor', {index:index,field:field});
      $(ed.target).focus();*/
    }
  });


  /*  });*/



</script>
</body>


</body>
</html>
