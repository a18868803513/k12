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
        #d1{
            margin-top: 40px;
            margin-left:70px;
            position: absolute;
        }
        #d2{
            margin-left: 470px;
            margin-top: 200px;
            background-color: #c4c4c4;
            width: 30%;
            height: 300px;
            opacity: 0.7;
        }
    </style>
    <script type="text/javascript">{
        function register(){
            window.location.href="register";
        }
    }
    </script>
</head>
<body style="background:url(images/login.jpg) no-repeat;background-size: cover;">
<div id="d2">
<form class="main_form" action="login">
    <div id="d1">
        <p class="easyui-panel">

        <h1 style="font-style: italic;font-weight: bold">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp欢迎登录</h1></p>

        <p class="input_container">

        <p class="input_container">
            <font style="font-weight:bold;font-style:italic;" size="4px">用户名:</font><input type="text" name="username"
                                                                                           label="用户名："
                                                                                           labelPosition="top">
        </p>

        <p class="input_container">
            <font style="font-weight:bold;font-style:italic;" size="4px">密&nbsp&nbsp&nbsp&nbsp码:</font><input
                type="text" name="password" label="密码：" labelPosition="top">
        </p>
        <p class="input_container">
            <table width="100%">
                <tr align="center" >
                    <td width="40%" >
                        <input type="submit" value="登录" />
                    </td>
                    <td width="40%">
                        <input type="button" onclick='register();' value="注册"/>
                    </td>
                </tr>
            </table>
        </p>
    </div>
</form>
</div>
</body>
</html>
