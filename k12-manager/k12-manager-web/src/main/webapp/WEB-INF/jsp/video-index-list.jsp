<%--
  Created by IntelliJ IDEA.
  User: LB
  Date: 2017/9/2
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="js/video.min.js"></script>
<script type="text/javascript" src="js/videojs-ie8.min.js"></script>
<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap 实例 - 简单的轮播（Carousel）插件</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="css/video-js.css" rel="stylesheet" type="text/css">
    <script src="js/video.min.js"></script>
    <script src="js/videojs-ie8.min.js"></script>
    <script>
        videojs.options.flash.swf = "video/video-js.swf";
    </script>
    <style>
        .row {
            margin-left: 20%;
            margin-top: 80px;
            border-bottom-color: #0030ce;
            width: 700px;
            position: fixed;

        }

    </style>
</head>
<body>
<div class="container">
    <div class="row_clearfix">
        <div class="col-md-12 column">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#">首页</a>
                </li>
                <li>
                    <a href="#">一年级</a>
                </li>
                <li>
                    <a href="#">二年级</a>
                </li>
                <li>
                    <a href="#">三年级</a>
                </li>
                <li>
                    <a href="#">四年级</a>
                </li>
                <li>
                    <a href="#">五年级</a>
                </li>
                <li>
                    <a href="#">六年级</a>
                </li>
                <li class="disabled">
                    <a href="#">其他</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-3 column">
            <video src="my_video/${tb_video.url}#t=02:29" controls height="400px" onclick="a()" id="aa"></video>
        </div>
    </div>
</div>
<script>
    function a() {
        document.getElementById("aa").pause();
        //document.getElementById("aa").palyer();
    }
</script>
</body>
</html>