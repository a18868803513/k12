<%--
  Created by IntelliJ IDEA.
  User: LB
  Date: 2017/9/11
  Time: 12:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>html5移动端单视频播放代码 - 站长素材</title>
    <meta name="viewport"content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <script src="video/js/jquery-1.8.3.min.js"></script>

    <link rel="stylesheet" href="video/css/zy.media.min.css">
    <link href="" rel="stylesheet">
    <style type="text/css">
        #modelView {
            background-color: #DDDDDD;
            z-index: 0;
            opacity: 0.7;
            height: 150px;
            width: 300px;
            position: relative;
            display: none;
        }

        .playvideo {
            padding-top: auto;
            z-index: 9999;
            position: relative;
        }

        .zy_media {
            z-index: 999999999
        }
    </style>

</head>
<body onmousewheel="return false;">

<div class="playvideo">
    <div class="zy_media">
            <video onclick="a()" id="aa"  width="120%" height="500" data-config='{"mediaTitle": "测试视频--视频"}' src="my_video/${tb_video.url}#t=" controls>
            </video>
    </div>
    <div id="modelView">&nbsp;</div>
</div>

<script src="zy.media.min.js"></script>
<script>
    document.body.style.overflow = 'hidden';
    zymedia('video', {autoplay: true});
    var screenheight = window.screen.height /4;
    $("#modelView").width(window.screen.width);
    $("#modelView").height(window.screen.height);
    var videoheight = $(".zy_media").height() / 4;
    var padding_top = screenheight - videoheight;
    $(".playvideo").css({"top": padding_top});
    $("#modelView").css({"margin-top": -1 * (padding_top + $(".zy_media").height())});


    function a() {
        document.getElementById("aa").pause();
        //document.getElementById("aa").palyer();
    }
</script>




</body>
</html>