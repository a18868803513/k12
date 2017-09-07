<%--
  Created by IntelliJ IDEA.
  User: LB
  Date: 2017/9/4
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div id="toolbar">
    <div style="padding: 5px; background-color: #fff;">
        <label>标题：</label>
        <input class="easyui-textbox" type="text" id="name">

        <input id="cc" name="grade" value="年级">
        <input id="dd" name="course" value="课程">
        <label>商品状态：</label>
        <select id="status" class="easyui-combobox">
            <option value="0">全部</option>
            <option value="1">正常</option>
            <option value="2">下架</option>
        </select>
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
<script>

    $('#dg').datagrid({
        //这里使用的是RESTful的URL，动态获取使用的是items
        url: 'queryAllByPage',
        //默认是post类型的请求
        //method:"get",
        toolbar: "#toolbar",
        pagination: true,
        rownumbers: true,
        fit: true,
        pageSize: 10,
        columns: [[
            {field: 'ck', checkbox: true},
            {field: 'id', title: '视频Id'},
            {field: 'name', title: '视频名称'},
            {field: 'introduction', title: '视频描述'},
            {
                field: 'status', title: '状态', formatter: function (value, row, index) {
                //value就是当前取到的值，row代表一个行记录，index代表索引号
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
                    case 4:
                        return '上架';
                        break;
                    default :
                        return '未知';
                        break;
                }
            }
            },
            {field: 'url', title: 'url地址'},
            {
                field: 'grade', title: '年级', formatter: function (value) {

                return value.grade;
            }
            },
            {
                field: 'course', title: '课程', formatter: function (value) {

                return value.course;
            }
            },
        ]]
    });

    $('#add').click(function(){
        k12.addTab("新增视频","addvideo");
    })
    function edit() {
        console.log('edit');
    }
    function save() {
        console.log('save');
    }

    function remove() {
        var rows = $('#dg').datagrid('getSelections');
        console.log(rows);
        //未选中任何记录时
        if (rows.length == 0) {
            $.messager.alert('消息', '未选中任何记录', 'info');
            return;
        }
        //选中记录的时候
        $.messager.confirm('确认', '您确认想要删除记录吗？', function (r) {
            if (r) {
                var ids = [];
                for (var i = 0; i < rows.length; i++) {
                    ids.push(rows[i].id);
                }
                $.ajax({
                    type: "post",
                    url: "removeVideo?ids=" + ids,
                    success: function () {
                        $('#dg').datagrid('reload');
                    }
                });
            }
        });
    }
    function down() {
        var rows = $('#dg').datagrid('getSelections');
        console.log(rows);
        //未选中任何记录时
        if (rows.length == 0) {
            $.messager.alert('消息', '未选中任何记录', 'info');
            return;
        }
        //选中记录的时候
        $.messager.confirm('确认', '您确认要下架吗？', function (r) {
            if (r) {
                var ids = [];
                for (var i = 0; i < rows.length; i++) {
                    ids.push(rows[i].id);
                }
                $.ajax({
                    type: "post",
                    url: "downVideo?ids=" + ids,
                    success: function () {
                        $('#dg').datagrid('reload');
                    }
                });
            }
        });
    }
    function up() {
        var rows = $('#dg').datagrid('getSelections');
        console.log(rows);
        //未选中任何记录时
        if (rows.length == 0) {
            $.messager.alert('消息', '未选中任何记录', 'info');
            return;
        }
        //选中记录的时候
        $.messager.confirm('确认', '您确认想要上架吗？', function (r) {
            if (r) {
                var ids = [];
                for (var i = 0; i < rows.length; i++) {
                    ids.push(rows[i].id);
                }
                $.ajax({
                    type: "post",
                    url: "upVideo?ids=" + ids,
                    success: function () {
                        $('#dg').datagrid('reload');
                    }
                });
            }
        });
    }

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
