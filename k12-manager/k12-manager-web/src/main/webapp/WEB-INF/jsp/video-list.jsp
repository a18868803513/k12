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

    <button id="add" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</button>
    <button onclick="edit()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>
    <button onclick="remove()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
    <button onclick="down()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">下架</button>
    <button onclick="up()" class="easyui-linkbutton" data-options="iconCls:'icon-up',plain:true">上架</button>
    <button id="save" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true">保存</button>
</div>
</div>
<table id="dg"></table>
<script>


    $("#bg").click(function () {
        var name = $('#name').textbox("getValue");
        var statusId = $('#status').combobox("getValue");
        var gidNum = $('#cc').combobox("getValue");
        if (gidNum == "年级") {
            gidNum = "";
        }
        var cidNum = $('#dd').combobox("getValue");
        if (cidNum == "课程") {
            cidNum = "";
        }
        var url = "queryAllByPage?gid=" + gidNum + "&cid=" + cidNum + "&statusId=" + statusId + "&name=" + name;

        $('#dg').datagrid({
            //这里使用的是RESTful的URL，动态获取使用的是items
            url: url,
            //默认是post类型的请求
            //method:"get",
            toolbar: "#toolbar",
            pagination: true,
            rownumbers: true,
            fit: true,
            multiSort: true,
            pageSize: 10,
            columns: [[
                {field: 'ck', checkbox: true},
                {field: 'id', title: '视频Id', sortable: true},
                {field: 'name', title: '视频名称', editor: "text", sortable: true},
                {field: 'introduction', title: '视频描述', editor: "text"},
                {
                    field: 'statusName', title: '状态', /* formatter: function (value, row, index) {
                 //value就是当前取到的值，row代表一个行记录，index代表索引号 用与前端处理
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
                 }*/
                },
                {field: 'url', title: 'url地址'},
                {
                    field: 'grade', title: '年级',  formatter: function (value) {

                    return value.grade;
                }
                },
                {
                    field: 'course', title: '课程',  formatter: function (value) {

                    return value.course;
                }
                },
                {
                    field: 'createTime', title: '创建时间', formatter: function (value) {
                    if (value != null) {
                        return moment(value).format("dddd, MMMM Do YYYY, h:mm:ss a");
                    }
                }
                }, {
                    field: 'updateTime', title: '修改时间', formatter: function (value) {
                        if (value != null) {
                            return moment(value).format("dddd, MMMM Do YYYY, h:mm:ss a");
                        }
                    }
                }
            ]]
        });
    });
    $('#add').click(function () {
        k12.addTab("新增视频", "add-video");
    });
    var row;
    var rowIndex;
    function edit() {
        row = $('#dg').datagrid('getSelected');
        rowIndex = $('#dg').datagrid('getRowIndex', row);

        $('#dg').datagrid("beginEdit", rowIndex);
    }
    $('#save').click(function () {
        //保存时结束当前编辑的行，自动触发onAfterEdit事件如果要与后台交互可将数据通过Ajax提交后台
        $('#dg').datagrid("endEdit", rowIndex);
        $.ajax({
            type: "post",
            url: "Uvideo?id=" + row.id + "&name=" + row.name  + "&introduction=" + row.introduction,

            success: function () {
                $('#dg').datagrid('reload');
            }

        });
    });
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
