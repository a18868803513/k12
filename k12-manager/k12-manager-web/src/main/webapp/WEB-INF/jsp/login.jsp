<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>login</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.5/themes/bootstrap/easyui.css">
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.5/themes/icon.css">
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
    <style type="text/css">
        .main_form {
            margin: 200px auto;
            width: 100%;
        }

        .input_container {
            margin-bottom: 32px;
        }
        #d0{
           background-color: #F4F4F4;
            width: 40%;
        }
    </style>
</head>
<body style="background: url(images/timg.jpg)">
<div>
<form class="main_form">
    <div align="center" >
        <p class="easyui-panel">

        <h1 style="font-style: italic;font-weight: bold">欢迎登录</h1></p>

        <p class="input_container">

        <p class="input_container">
            <font style="font-weight:bold;font-style:italic;" size="4px">用户名:</font><input class="easyui-textbox"
                                                                                           label="用户名："
                                                                                           labelPosition="top">
        </p>

        <p class="input_container">
            <font style="font-weight:bold;font-style:italic;" size="4px">密&nbsp&nbsp&nbsp&nbsp码:</font><input
                class="easyui-textbox" label="密码：" labelPosition="top">
        </p>
    </div>
</form>
</div>
</body>
</html>
