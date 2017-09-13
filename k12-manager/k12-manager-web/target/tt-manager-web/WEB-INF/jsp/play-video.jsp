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
    <meta name="viewport"
          content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
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
        <%--<video poster="https://r1.ykimg.com/05420408584A363C6A0A47047DD24931" data-config='{"mediaTitle": "测试视频--视频"}'>
            <source src="http://www.w3cschool.cc/try/demo_source/mov_bbb.mp4" type="video/mp4">
            您的浏览器不支持HTML5视频
        </video>--%>
        <video src="my_video/${tb_video.url}#t=" controls height="400px" onclick="a()" id="aa" data-config='{"mediaTitle": "测试视频--视频"}'></video>
    </div>
    <div id="modelView">&nbsp;</div>
</div>

<script src="zy.media.min.js"></script>
<script>
    //document.documentElement.style.overflow='hidden';
    document.body.style.overflow = 'hidden';
    zymedia('video', {autoplay: true});
    var screenheight = window.screen.height / 2;
    $("#modelView").width(window.screen.width);
    $("#modelView").height(window.screen.height);
    var videoheight = $(".zy_media").height() / 2;
    var padding_top = screenheight - videoheight;
    $(".playvideo").css({"top": padding_top});
    $("#modelView").css({"margin-top": -1 * (padding_top + $(".zy_media").height())});
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<%--    <p>适用浏览器：360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗. 不支持IE8及以下浏览器。</p>--%>

    <p>来源：<a href="http://sc.chinaz.com/" target="_blank">站长素材</a></p>
</div>
</body>
</html>