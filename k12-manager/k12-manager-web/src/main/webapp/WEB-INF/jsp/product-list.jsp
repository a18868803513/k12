<%--
  Created by IntelliJ IDEA.
  User: dwy
  Date: 2017/9/4
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>
<div id="toolbar">
    <div style="padding: 5px; background-color: #fff;">
        <label>商品查询：</label>
        <input class="easyui-textbox" type="text" id="name">
        <label>商品状态：</label>
        <select id="status" class="easyui-combobox">
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
        <button onclick="add()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</button>
        <button id="edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>
        <button id="remove" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
        <button id="down" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">下架</button>
        <button id="up" class="easyui-linkbutton" data-options="iconCls:'icon-up',plain:true">上架</button>
        <button id="save" class="easyui-linkbutton">保存</button>
    </div>
</div>
<table id="dg"></table>

<script>
    $("#remove").click(function () {
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
                    url: "removeProduct?ids=" + ids,
                    success: function () {
                        $("#dg").datagrid('reload');
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
    $('#save').click(function () {
        $('#dg').datagrid("endEdit", rowIndex);
        $.ajax({
            type: "post",
            url: "updateProduct?name=" + row.name + "&price=" + row.price + "&instrudction=" + row.instrudction + "&id=" + row.id,
            success: function () {
                $('#dg').datagrid('reload');
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
                    url: "downProduct?ids=" + ids,

                    success: function () {
                        $('#dg').datagrid('reload');
                    }
                });
            }
        });
    });
    $("#up").click(function () {
        var rows = $('#dg').datagrid('getSelections');
        //未选中任何记录时
        if (rows.length == 0) {
            $.messager.alert('消息', '未选中任何记录', 'info');
            return;
        }
        //选中记录的时候
        $.messager.confirm('确认', '您确认想要上架记录吗？', function (r) {
            if (r) {
                var ids = [];
                for (var i = 0; i < rows.length; i++) {
                    ids.push(rows[i].id);
                }
                $.ajax({
                    type: "post",
                    url: "upProduct?ids=" + ids,

                    success: function () {
                        $('#dg').datagrid('reload');
                    }

                });
            }
        });
    })
    $("#bg").click(function () {
        var name = $('#name').val();
        var statusId = $('#status').combobox("getValue");
        var gidNum = $('#cc').combobox("getValue");
        if (gidNum == "年级") {
            gidNum = "";
        }
        var cidNum = $('#dd').combobox("getValue");
        if (cidNum == "课程") {
            cidNum = "";
        }
        var url = "productList?gid=" + gidNum + "&cid=" + cidNum + "&statusId=" + statusId + "&name=" + name;
        $('#dg').datagrid({

            url: url,
            //默认是post类型的请求
            //method:"get",
            toolbar: "#toolbar",
            pagination: true,
            fit: true,
            columns: [[
                {field: 'ck', checkbox: true},
                {field: 'id', title: '商品ID', width: 100, sortable: true},
                {field: 'name', title: '商品名称', width: 100, sortable: true,editor:"text"},
                {field: 'price', title: '商品价格', width: 100, sortable: true,editor:"text"},
                {field: 'statusName', title: '商品状态'}, /*, formatter: function (value, row, index) {
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
                 }*/
                {
                    field: 'updateTime', title: '修改时间', width: 100, sortable: true, formatter: function (value) {
                    if (value != null) {
                        return moment(value).format("dddd, MMMM Do YYYY, h:mm:ss a");
                    }
                }
                },
                {
                    field: 'createTime', title: '创建时间', width: 100, sortable: true, formatter: function (value) {
                    if (value != null) {
                        return moment(value).format("dddd, MMMM Do YYYY, h:mm:ss a");
                    }
                }
                },
                {field: 'grade', title: '年级', width: 100, sortable: true},
                {field: 'instrudction', title: '简介', width: 100, sortable: true,editor:"text"},
                {field: 'course', title: '学科', width: 100, align: 'right', sortable: true}

            ]]
        })
    });
    function add() {
        ttshop.addTab('新增商品', 'product-add');
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

</body>
</html>
