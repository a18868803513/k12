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
          console.log(ids);
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
      console.log('up');
    }
  },{
    iconCls: 'icon-down',
    text: '下架',
    handler: function () {
      console.log('down');
    }
  }];

  $("#bg").click(function(){
    var gidNum=$('#cc').combobox("getValue");
    var cidNum=$('#dd').combobox("getValue");
    var url="qbList?gid="+gidNum+"&cid="+cidNum;
    $('#dg').datagrid({
      toolbar: toolbar,
      url: url,
      pagination: true,
      fit: true,
      columns: [[
        {field: 'ck', checkbox:true },
        {field: 'id', title: 'ID', width: 100},
        {field: 'question', title: '问题', width: 100},
        {field: 'answer', title: '答案', width: 100, align: 'right'}
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
