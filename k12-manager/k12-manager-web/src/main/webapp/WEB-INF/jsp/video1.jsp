<%--
  Created by IntelliJ IDEA.
  User: LB
  Date: 2017/9/4
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<table id="table"></table>
<script>
    var toolbar = [{
        iconCls: 'icon-add',
        text: '新增',
        handler: function () {
            console.log('add');
        }
    }, {
        iconCls: 'icon-remove',
        text: '删除',
        handler: function () {
            var rows = $('#table').datagrid('getSelections');
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
                    console.log(ids);
                }
            });
        }
    }, {
        iconCls: 'icon-edit',
        text: '编辑',
        handler: function () {
            console.log('edit');
        }
    }, {
        iconCls: 'icon-up',
        text: '上架',
        handler: function () {
            console.log('up');
        }
    }, {
        iconCls: 'icon-down',
        text: '下架',
        handler: function () {
            console.log('down');
        }
    }];

    $('#table').datagrid({
        //这里使用的是RESTful的URL，动态获取使用的是items
        url: 'queryAll',
        //默认是post类型的请求
        //method:"get",
        toolbar: toolbar,
        pagination: true,
        rownumbers: true,
        fit: true,
        pageSize: 2,
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
                    default :
                        return '未知';
                        break;
                }
            }
            },
            {field: 'url', title: 'url地址'},

        ]]
    });
</script>
