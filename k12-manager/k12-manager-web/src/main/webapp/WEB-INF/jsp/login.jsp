<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login</title>
    <link rel="stylesheet" type="text/css" href="css/normalizel.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <!--[if IE]>
    <script src="js/html5.js"></script>
    <![endif]-->
    <script>
        //Register
        function b(){
            location.href="register";
        };
       /* function valida(){
            if($("#un").val==""){
                alert("请输入账号!");
                return false;
            }else if($("#pw").val==""){
                alert("请输入密码!");
                return false;
            }else{
                return true;
            }
        }*/

    </script>
</head>
<body>
<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">
            <canvas id="demo-canvas"></canvas>
            <div class="logo_box">
                <h3>欢迎登录</h3>
                <form action="login" name="f" method="post" onsubmit="return valida();">
                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="username" class="text" style="color: #FFFFFF !important" id="un" type="text" placeholder="请输入账户">
                    </div>
                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input name="password" class="text"id="pw" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
                    </div>
                    <div class="mb2">
                        <input class="act-but submit" type="submit" value="登录" id="s" style="width:100%;" />
                        <input class="act-but submit" type="button" value="注册" onclick="b();" style="width:100%;"/>
                    </div>
                    <%--<div class="mb2"><a class="act-but submit" href="index" style="color: #FFFFFF">登录</a></div>--%>
                    <%--<div class="mb2"><a class="act-but submit" href="register" style="color:white">注册</a></div>--%>
                </form>
            </div>
        </div>
    </div>
</div><!-- /container -->
<script src="js/TweenLite.min.js"></script>
<script src="js/EasePack.min.js"></script>
<script src="js/rAF.js"></script>
<script src="js/demo-1.js"></script>
<div style="text-align:center;">
    <p>更多学习模板：<a href="index" target="_blank">k12教育之家</a></p>
</div>
</body>
</html>
