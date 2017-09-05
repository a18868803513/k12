<%--
  Created by IntelliJ IDEA.
  User: LB
  Date: 2017/9/3
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<html>
<head>
    <title>后台展示视频</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
    <meta http-equiv="description" content="This is my page"/>
    <link href="css/css.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/ligerui-dialog.css"/>
    <link href="css/ligerui-icons.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="js/jquery-migrate-1.2.1.js"></script>
    <script src="js/base.js" type="text/javascript"></script>
    <script src="js/ligerDrag.js" type="text/javascript"></script>
    <script src="js/ligerDialog.js" type="text/javascript"></script>
    <script src="js/ligerResizable.jss" type="text/javascript"></script>
    <script src="js/jquery-3.2.1.min.js" type="text/javascript"
            charset="utf-8"></script>
    <link href="css/pager.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<script type="text/javascript">
    $(function () {
        /** 获取上一次选中的部门数据 */
        var boxs = $("input[type='checkbox'][id^='box_']");

        /** 给全选按钮绑定点击事件  */
        $("#checkAll").click(function () {
            // this是checkAll  this.checked是true
            // 所有数据行的选中状态与全选的状态一致
            boxs.attr("checked", this.checked);
        })

        /** 给数据行绑定鼠标覆盖以及鼠标移开事件  */
        $("tr[id^='data_']").hover(function () {
            $(this).css("backgroundColor", "#eeccff");
        }, function () {
            $(this).css("backgroundColor", "#ffffff");
        })


        /** 删除员工绑定点击事件 */
        $("#delete").click(function () {
            /** 获取到用户选中的复选框  */
            var checkedBoxs = boxs.filter(":checked");
            if (checkedBoxs.length < 1) {
                $.ligerDialog.error("请选择一个需要删除的员工！");
            } else {
                /** 得到用户选中的所有的需要删除的ids */
                var ids = checkedBoxs.map(function () {
                    return this.value;
                })

                $.ligerDialog.confirm("确认要删除吗?", "删除视频", function (r) {
                    if (r) {
                        // alert("删除："+ids.get());
                        // 发送请求
                        window.location = "employee/removeEmployee?ids=" + ids.get();
                    }
                });
            }
        })
    })
</script>
<!-- 数据展示区 -->
<tr valign="top">
    <td height="20">
        <table width="100%" border="1" cellpadding="5" cellspacing="0"
               style="border:#c2c6cc 1px solid; border-collapse:collapse;">
            <tr class="main_trbg_tit" align="center">
                <td><input type="checkbox" name="checkAll" id="checkAll"></td>
                <td>标题</td>
                <td>视频地址</td>
                <td>课程</td>
                <td>年级</td>
                <td>描述</td>
                <td align="center">操作</td>
            </tr>
            <c:forEach items="${requestScope.videos}" var="video" varStatus="stat">
                <tr id="data_${stat.index}" class="main_trbg" align="center">
                    <td><input type="checkbox" id="box_${stat.index}" value="${video.id}"></td>
                    <td>${video.name }</td>
                    <td>${video.url }</td>
                    <td>${video.course.name }</td>
                    <td>${video.grade.name }</td>
                    <td>${video.introduction }</td>
                    <td align="center" width="40px;"><a href="employee/updateEmployee?flag=1&id=${video.id}">
                        <img title="修改" src="images/video_update.gif"/></a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </td>
</tr>
</body>
</html>
