<%--
  Created by IntelliJ IDEA.
  User: LB
  Date: 2017/9/2
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>最新视频</title>
    <%--<meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />--%>
    <link href="css/css.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="../../js/jquery.form.js"></script>
    <script src="../../js/jquery-3.2.1.min.js" type="text/javascript"
            charset="utf-8"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            /** 表单提交的校验 */
            $("#btn").click(function () {
                var name = $("#name").val();
                var file = $("#file").val();

                if ($.trim(title).length <= 2) {
                    alert("请输入两个字符以上的标题");
                    return;
                } else if (!file) {
                    alert("请上传视频！");
                    return;
                }
                $("#documentForm").submit();
            })
        });
    </script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td height="10"></td>
    </tr>
    <tr>
        <td width="15" height="32"><img src="images/main_locleft.gif" width="15" height="32"></td>
        <td class="main_locbg font2"><img src="images/pointer.gif">&nbsp;&nbsp;&nbsp;当前位置：视频管理 &gt;&gt; 上传视频
        </td>
        <td width="15" height="32"><img src="images/main_locright.gif" width="15" height="32"></td>
    </tr>
</table>

<table width="100%" height="90%" border="0" cellpadding="10" cellspacing="0" class="main_tabbor">
    <tr valign="top">
        <td>

            <form id="documentForm" name="documentForm" action="addvideo"
                  enctype="multipart/form-data" method="post">
                <table width="100%" border="0" cellpadding="0" cellspacing="10" class="main_tab">
                    <tr>
                        <td class="font3 fftd">
                            标题：<input type="text" name="name" size="30" id="title"/></td>
                    </tr>
                    <tr>
                        <td class="main_tdbor"></td>
                    </tr>

                    <tr>
                        <td class="font3 fftd">年&nbsp;&nbsp;&nbsp;级：
                            <input id="cc" name="grade1" value="-年级-"><br/>
                        </td>
                    </tr>
                    <tr>
                        <td class="main_tdbor"></td>
                    </tr>

                    <tr>
                        <td class="font3 fftd">课&nbsp;&nbsp;&nbsp;程：
                            <input id="dd" name="course1" value="-课程-"><br/>
                        </td>
                    </tr>
                    <tr>
                        <td class="main_tdbor"></td>
                    </tr>

                    <%-- <tr>
                         <td class="font3 fftd">主要描述：<br/>
                             <textarea name="introduction" cols="88" rows="11" id="content"></textarea>
                         </td>
                     </tr>--%>
                    <tr>
                        <td colspan="2">
                            <!-- 加载编辑器的容器 -->
                            <script id="container" name="introduction" type="text/plain">视频描述</script>
                        </td>
                    </tr>
                    <tr>
                        <td class="main_tdbor"></td>
                    </tr>
                    <tr>
                        <td class="font3 fftd">视频：　
                            <input type="file" name="file" id="file" size="30"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="main_tdbor"></td>
                    </tr>
                    <tr>
                        <td class="font3 fftd" align="left">
                            <input type="submit" id="btn" value="上传">
                            <input type="reset" value="重置">
                        </td>
                    </tr>
                    <tr>
                        <td class="main_tdbor"></td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>
<div style="height:10px;"></div>
</div>
<script>
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

    //实例化编辑器
    var ue = UE.getEditor('container', {
        initialFrameWidth: '80%',
        initialFrameHeight: '200'
    });
</script>
</body>
</html>