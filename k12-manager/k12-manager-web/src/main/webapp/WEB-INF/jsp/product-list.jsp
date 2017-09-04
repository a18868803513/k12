<%--
  Created by IntelliJ IDEA.
  User: dwy
  Date: 2017/9/4
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<table id="dg"></table>
<input id="cc" name="grade" value="年级">
<input id="dd" name="course" value="课程">
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
  $("#bg").click(function() {
    var gidNum = $('#cc').combobox("getValue");
    if(gidNum=="年级"){
      gidNum="";
    }
    var cidNum = $('#dd').combobox("getValue");
    if(cidNum=="课程"){
      cidNum="";
    }
    var url = "productList?gid=" + gidNum + "&cid=" + cidNum;
    $('#dg').datagrid({

      url: url,
      //默认是post类型的请求
      //method:"get",
      toolbar: toolbar,
      pagination: true,
      fit: true,
      columns: [[
        {field: 'ck', checkbox: true},
        {field: 'id', title: '商品ID'},
        {field: 'name', title: '商品名称',width:50},
        {field: 'price', title: '商品价格'},
        {field: 'status', title: '商品状态', formatter: function (value, row, index) {
          //value就是当前取到的值，row代表一个行记录，index代表索引号
//                debugger;
//                console.group();
//                console.log(value);
//                console.log(row);
//                console.log(index);
//                console.groupEnd();
          switch (value) {
            case 1:
              return '正常';
              break;
            case 2:
              return '下架';
              break;
            case 3:
              return '删除';
              break;
            default :
              return '未知';
              break;
          }
        }
        },
        {field: 'grade', title: '年级',width:100},
        {field: 'instrudction', title: '简介',width:100},
        {field: 'course', title: '学科',width: 100, align: 'right'}

      ]]
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
