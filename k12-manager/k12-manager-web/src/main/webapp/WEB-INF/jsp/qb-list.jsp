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
    <label>商品标题：</label>
    <input class="easyui-textbox" type="text" id="title">
    <label>商品状态：</label>
    <select id="status" class="easyui-combobox" >
      <option value="0">全部</option>
      <option value="1">正常</option>
      <option value="2">下架</option>
    </select>
    <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
    <!--注意：要加上type="button",默认行为是submit-->
    <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
  </div>
  <div>
    <button onclick="add()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</button>
    <button onclick="edit()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>
    <button onclick="remove()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
    <button onclick="down()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">下架</button>
    <button onclick="up()" class="easyui-linkbutton" data-options="iconCls:'icon-up',plain:true">上架</button>
  </div>
</div>
<input id="cc" name="grade" value="年级">
<input id="dd" name="course" value="课程">
<table id="dg"></table>


<button id="bg">查询</button>
<script>
  var toolbar = [{
    iconCls: 'icon-add',
    text: '新增',
    handler: function () {
      console.log('add');
    }
  },{
    iconCls: 'icon-remove',
    text: '删除',
    handler: function () {
      var rows = $('#dg').datagrid('getSelections');
      console.log(rows);
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
          /*window.location="removeQb?ids="+ids;*/
        }
      });
    }
  },{
    iconCls: 'icon-edit',
    text: '编辑',
    handler: function () {
      console.log('edit');
    }
  },{
    iconCls: 'icon-up',
    text: '上架',
    handler: function () {
      var rows = $('#dg').datagrid('getSelections');
      console.log(rows);
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
            url: "upQb?ids="+ids,

            success: function() {
              $('#dg').datagrid('reload');
            }

          });
          /*window.location="removeQb?ids="+ids;*/
        }
      });
    }
  },{
    iconCls: 'icon-down',
    text: '下架',
    handler: function () {
      var rows = $('#dg').datagrid('getSelections');
      console.log(rows);
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
            url: "downQb?ids="+ids,

            success: function() {
              $('#dg').datagrid('reload');
            }







          });
          /*window.location="removeQb?ids="+ids;*/
        }
      });
    }
  }];

  $("#bg").click(function(){
    var gidNum=$('#cc').combobox("getValue");
    if (gidNum=="年级"){
      gidNum="";
    }

    var cidNum=$('#dd').combobox("getValue");
    if(cidNum=="课程"){
      cidNum="";
    }
    var url="qbList?gid="+gidNum+"&cid="+cidNum;

    $('#dg').datagrid({
      toolbar: '#toolbar',
      url: url,
      pagination: true,
      fit: true,
      multiSort:true,
      columns: [[
        {field: 'ck', checkbox:true },
        {field: 'id', title: 'ID', width: 100,sortable:true},
        {field: 'question', title: '问题', width: 100,sortable:true},
        {field: 'answer', title: '答案', width: 100,sortable:true},
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

     /* toolbar: [
        {
          text: '删除', iconCls: 'icon-remove', handler: function () {
          var row = $('#dg').datagrid('getSelected');
          alert('Item ID:'+row.id);

        }
        }, '-', {
          text: '修改', iconCls: 'icon-edit', handler: function () {

          }

        }]*/
    })

  });


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
