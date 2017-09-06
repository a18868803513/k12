<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-09-05
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的注册页面</title>
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/bootstrap/easyui.css">
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" href="css/jquery.idcode.css">
    <script src="js/jquery-easyui-1.5/jquery.min.js"></script>
    <!-- jquery easyui -->
    <script src="js/jquery.idcode.js"></script>
    <script src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
    <script src="js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
    <script>
        $(function () {
            createCode();
          /*  $("input",$("#t4").next("span")).blur(function(){
                alert(2433);
            })*/
            $('#t').textbox({
                iconCls: 'icon-man',
                label: '用户名：',
                labelPosition: 'top',
                prompt: '请输入用户名'
            });
            $('#t1').textbox({
                iconCls: 'icon-lock',
                label: '密 码：',
                labelPosition: 'top',
                prompt: '请输入密码'
            });
            $('#t2').textbox({
                label: '确认密码：',
                labelPosition: 'top',
                prompt: '请重复输入密码'
            });
            $('#t3').textbox({
                label: '手 机：',
                labelPosition: 'top',
                prompt: '请输入手机号码'
            });
            $('#t3').textbox({
                label: '邮 箱：',
                labelPosition: 'top',
                prompt: '请输入邮箱'
            });
            $('#t4').textbox({
                label: '验 证：',
                labelPosition: 'top',
                prompt: '请输入验证码'
            });
            $('#sub').linkbutton({});
            $('#can').linkbutton({});
        });
    </script>
</head>
<body style="background: url(images/registerbk.jpg)no-repeat;background-size: cover">
<div align="center" style="background-color: #cccccc;opacity: 0.7;margin-top:10%;width: 60%;margin-left: 20%">
    <h1 align="center">K12注册</h1>
    <div>
        <input id="t" type="text" style="width:300px">
        <input id="t1" type="password" style="width:300px">
        <input id="t2" type="password" style="width:300px">
        <input id="t3" type="text" style="width:300px">
        <span id="s"></span>
        <input id="t4" type="text" style="width:300px" data-options="events:{blur:validateCode},required:true,validType:'t4'" >
    </div><br>
    <div >
        <div style="margin-left: 200px">
            <div class="code" id="checkCode" onclick="createCode()" style="margin-left: 15%"></div>
            <input type="button" value="看不清楚" onclick="createCode()" style="margin-right: 45%">
        </div><br>
        <div>
                <a id="sub"style="width: 60px"><font style="font-weight: bold">提交</font></a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <a id="can"style="width:60px"><font style="font-weight: bold">取消</font></a>
        </div>
    </div>
</div>
</body>
</html>
