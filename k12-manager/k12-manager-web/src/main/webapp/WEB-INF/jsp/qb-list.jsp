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
<div id="toolbar">
  <div style="padding: 5px; background-color: #fff;">
    <label>问题：</label>
    <input class="easyui-textbox" type="text" id="question">
    <label>商品状态：</label>
    <select id="status" class="easyui-combobox" >
      <option value="0">全部</option>
      <option value="1">正常</option>
      <option value="2">下架</option>
    </select>
    <input id="cc" name="grade" value="年级">
    <input id="dd" name="course" value="课程">
    <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
    <!--注意：要加上type="button",默认行为是submit-->
    <button id="bg" type="button" class="easyui-linkbutton">搜索</button>
  </div>
  <div>
    <button id="add" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</button>
    <button id="edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>
    <button id="remove" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
    <button id="down" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">下架</button>
    <button id="up" class="easyui-linkbutton" data-options="iconCls:'icon-up',plain:true">上架</button>
    <button id="save" class="easyui-linkbutton">保存</button>
  </div>
</div>

<table id="dg"></table>


<%--<button id="bg">查询</button>--%>

<script>

  $("#remove").click(function () {
    var rows = $('#dg').datagrid('getSelections');
    //未选中任何记录时
    if(rows.length == 0){
      $.messager.alert('消息','未选中任何记录','info');
      return;
    }
    //选中记录的时候
    $.messager.confirm('确认','您确认想要删除记录吗？',function(r){
      if (r){
        var ids = [];
        for(var i=0;i<rows.length;i++){
          ids.push(rows[i].id);
        }
        $.ajax({
          type: "post",
          url: "removeQb?ids="+ids,

          success: function() {
            $('#dg').datagrid('reload');
          }

        });
      }
    });
  })
  $("#down").click(function () {
    var rows = $('#dg').datagrid('getSelections');
    //未选中任何记录时
    if (rows.length == 0) {
      $.messager.alert('消息', '未选中任何记录', 'info');
      return;
    }
    //选中记录的时候
    $.messager.confirm('确认', '您确认想要下架记录吗？', function (r) {
      if (r) {
        var ids = [];
        for (var i = 0; i < rows.length; i++) {
          ids.push(rows[i].id);
        }
        $.ajax({
          type: "post",
          url: "downQb?ids=" + ids,

          success: function () {
            $('#dg').datagrid('reload');
          }
        });
      }
    });
  });
    $("#up").click( function () {
      var rows = $('#dg').datagrid('getSelections');
      //未选中任何记录时
      if(rows.length == 0){
        $.messager.alert('消息','未选中任何记录','info');
        return;
      }
      //选中记录的时候
      $.messager.confirm('确认','您确认想要上架记录吗？',function(r){
        if (r){
          var ids = [];
          for(var i=0;i<rows.length;i++){
            ids.push(rows[i].id);
          }
          $.ajax({
            type: "post",
            url: "upQb?ids="+ids,

            success: function() {
              $('#dg').datagrid('reload');
            }
          });
        }
      });
    })
  var row;
  var rowIndex;
  $('#edit').click(function () {
     row = $('#dg').datagrid('getSelected');
     rowIndex = $('#dg').datagrid('getRowIndex', row);

      $('#dg').datagrid("beginEdit", rowIndex);
  })
  $('#save').click(function(){
      //保存时结束当前编辑的行，自动触发onAfterEdit事件如果要与后台交互可将数据通过Ajax提交后台
    $('#dg').datagrid("endEdit", rowIndex);
    $.ajax({
      type: "post",
      url: "updateQb?question="+row.question+"&answer="+row.answer+"&id="+row.id,

      success: function() {
        $('#dg').datagrid('reload');
      }

    });

  })
  $('#add').click(function(){
    k12.addTab("新增题目","qb-add");
  })
  $("#bg").click(function(){
    var question=$('#question').textbox("getValue");
    var statusId=$('#status').combobox("getValue");
    var gidNum=$('#cc').combobox("getValue");
    if (gidNum=="年级"){
      gidNum="";
    }
    var cidNum=$('#dd').combobox("getValue");
    if(cidNum=="课程"){
      cidNum="";
    }
    var url="qbList?gid="+gidNum+"&cid="+cidNum+"&statusId="+statusId+"&question="+question;

    $('#dg').datagrid({
      toolbar: '#toolbar',
      url: url,
      pagination: true,
      fit: true,
      multiSort:true,
      columns: [[
        {field: 'ck', checkbox:true },
        {field: 'id', title: 'ID', width: 100,sortable:true},
        {field: 'question', title: '问题', width: 100,sortable:true,editor:"text"},
        {field: 'answer', title: '答案', width: 100,sortable:true,editor:"text"},
        {field: 'tb_grade', title: '年级', width: 100,sortable:true,formatter:function(value){

          return value.grade;
        }},
        {field: 'tb_course', title: '课程', width: 100,sortable:true,formatter:function(value){
          return value.course;
        }},
        {field:'updateTime',title:'修改时间',width:100,sortable:true,formatter:function(value){
          if(value!=null) {
            return moment(value).format("dddd, MMMM Do YYYY, h:mm:ss a");
          }
        }},
        {field:'createTime',title:'创建时间',width:100,sortable:true,formatter:function(value){
          if(value!=null) {
            return moment(value).format("dddd, MMMM Do YYYY, h:mm:ss a");
          }
        }},
        {field: 'statusName', title: '状态', width: 100, align: 'right',sortable:true}
      ]]
    })

  });



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
<<<<<<< HEAD
   /* $('#dg').datagrid({
      onDblClickCell: function(index,field,value){
        $(this).datagrid('beginEdit', index);
        /!*var ed = $(this).datagrid('getEditor', {index:index,field:field});
        $(ed.target).focus();*!/
      }
    });*/




=======
>>>>>>> github/master
</script>

</body>

</html>
