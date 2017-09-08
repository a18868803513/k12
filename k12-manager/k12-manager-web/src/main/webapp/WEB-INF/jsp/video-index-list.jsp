<%--
  Created by IntelliJ IDEA.
  User: LB
  Date: 2017/9/2
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</head>
<body>

<div class="container">
    <div class="row clearfix">
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
                <li class="dropdown pull-right">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">登陆</a>
                        </li>
                        <li>
                            <a href="#">注册</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-3 column">
            <video id="example_video_1" class="video-js vjs-default-skin" controls preload="none" width="640" height="264"
                   poster="http://video-js.zencoder.com/oceans-clip.png"
                   data-setup="{}">
               <source src="video/1.MP4" type='video/mp4' />

            </video>
            第一个视频
        </div>
        <div class="col-md-3 column">
            第一个视频
        </div>
        <div class="col-md-3 column">
            第一个视频
        </div>
        <div class="col-md-3 column">
            第一个视频

            <video src="video/1.MP4"></video>
            <video src="http://www.w3cschool.cc/try/demo_source/mov_bbb.mp4"></video>
        </div>

    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="pagination">
                <li>
                    <a href="#">Prev</a>
                </li>
                <li>
                    <a href="#">1</a>
                </li>
                <li>
                    <a href="#">2</a>
                </li>
                <li>
                    <a href="#">3</a>
                </li>
                <li>
                    <a href="#">4</a>
                </li>
                <li>
                    <a href="#">5</a>
                </li>
                <li>
                    <a href="#">Next</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<%--
<table width="80%" align="center">
    <c:forEach items="${pages.list}" var="p" varStatus="vs">
        <c:if test="${(vs.count-1)%3==0 }">
            <tr>
        </c:if>
        <td>
            <div class="dv1" onclick="downImg('${p.path}')">
                <img alt="来自片库的问候" src="../pk_images/${p.path}" width="200px"
                     height="200px" /><br />
                视频描述:${p.distruction }<br />
            </div>
        </td>
        <c:if test="${(vs.count-1)%3==2 }">
            </tr>
        </c:if>
    </c:forEach>
    <tfoot>
    <tr>
        <td colspan="3" align="center">
            <div class="zxf_pagediv"></div>
            <input type="hidden" id="pt" value="${pages.pageTotal }" /> <input
                type="hidden" id="pg" value="${pages.page }" />
        </td>
    </tr>
    </tfoot>
</table>
--%>

</body>
</html>