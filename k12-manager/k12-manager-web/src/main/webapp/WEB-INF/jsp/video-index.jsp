<%--
  Created by IntelliJ IDEA.
  User: LB
  Date: 2017/9/10
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>视频展示区</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Forward Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="video/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="video/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <!-- js -->
    <script src="video/js/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- js -->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="video/js/move-top.js"></script>
    <script type="text/javascript" src="video/js/easing.js"></script>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>

    <style>
        #tid {
            margin-top: 20px;
        }

    </style>
    <!-- start-smoth-scrolling -->
</head>
<body>
<!-- header -->
<div class="header">
    <div class="header-top">
        <!-- container -->
        <div class="container">
            <div class="header-top-left">
                <ul>
                    <li><a href="#">不断学习，探索最大资源</a></li>
                    <li><a href="#">活到老，学到老</a></li>
                </ul>
            </div>
            <%--搜索区--%>
            <div class="header-top-right">
                <form>
                    <input type="text" placeholder=" " required="">
                    <input type="submit" value=" ">

                    <div class="clearfix"></div>
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //container -->
    </div>
    <div class="header-middle">
        <!-- container -->
        <div class="container">
            <div class="header-middle-logo">
                <a href="index.html">首页</a>
            </div>
            <div class="header-middle-right">
                <div class="phone">
                    <span> </span>
                    <ul>
                        <li class="gray">联系电话</li>
                        <li>18756933063</li>
                        <li>974049597@qq.com</li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="location">
                    <span> </span>
                    <ul>
                        <li class="gray">所在地</li>
                        <li>浙江杭州</li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //container -->
    </div>
    <div class="top-nav">
        <!-- container -->
        <div class="container">
            <span class="menu">视频辅导</span>
            <ul class="nav1">
                <li class="dropdown pull-left"><a href="#" data-toggle="dropdown" class="dropdown-toggle">一年级<strong
                        class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="lookVideo?gid=1&cid=1">语文</a>
                        </li>
                        <li>
                            <a href="lookVideo?gid=1&cid=3">数学</a>
                        </li>
                        <li>
                            <a href="lookVideo?gid=1&cid=2">英语</a>
                        </li>
                        <li class="divider"></li>
                    </ul>
                <li>

                <li class="dropdown pull-left"><a href="#" data-toggle="dropdown" class="dropdown-toggle">二年级<strong
                        class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="lookVideo?gid=2&cid=1">语文</a>
                        </li>
                        <li>
                            <a href="lookVideo?gid=2&cid=3">数学</a>
                        </li>
                        <li>
                            <a href="lookVideo?gid=2&cid=2">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                <li>

                <li class="dropdown pull-left"><a href="#" data-toggle="dropdown" class="dropdown-toggle">三年级<strong
                        class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="lookVideo?gid=3&cid=1">语文</a>
                        </li>
                        <li>
                            <a href="lookVideo?gid=3&cid=3">数学</a>
                        </li>
                        <li>
                            <a href="lookVideo?gid=3&cid=2">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                <li>

                <li class="dropdown pull-left"><a href="#" data-toggle="dropdown" class="dropdown-toggle">四年级<strong
                        class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="lookVideo?gid=4&cid=1">语文</a>
                        </li>
                        <li>
                            <a href="lookVideo?gid=4&cid=3">数学</a>
                        </li>
                        <li>
                            <a href="lookVideo?gid=4&cid=2">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                <li>
                <li class="dropdown pull-left"><a href="#" data-toggle="dropdown" class="dropdown-toggle">五年级<strong
                        class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="lookVideo?gid=5&cid=1">语文</a>
                        </li>
                        <li>
                            <a href="lookVideo?gid=53&cid=3">数学</a>
                        </li>
                        <li>
                            <a href="lookVideo?gid=5&cid=2">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                <li>
                <li class="dropdown pull-left"><a href="#" data-toggle="dropdown" class="dropdown-toggle">六年级<strong
                        class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="lookVideo?gid=6&cid=1">语文</a>
                        </li>
                        <li>
                            <a href="lookVideo?gid=6&cid=3">数学</a>
                        </li>
                        <li>
                            <a href="lookVideo?gid=6&cid=2">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                <li>
            </ul>
            <!-- script-for-menu -->
            <script>
                $("span.menu").click(function () {
                    $("ul.nav1").slideToggle(300, function () {
                        // Animation complete.
                    });
                });

            </script>
            <!-- /script-for-menu -->
        </div>
        <!-- //container -->
    </div>
    <div class="blue"></div>
</div>
<!-- //header -->
<!-- gallery -->
<div class="gallery">
    <!-- Page Starts Here -->
    <div class="content">
        <div class="container">
            <div class="gallery">
                <h3>Our Home</h3>

                <div class="gallery-top">

                    <table>
                        <c:forEach items="${requestScope.list}" var="v" varStatus="vs">
                            <c:if test="${(vs.count-1)%4==0 }">
                                <tr id="trd">
                            </c:if>
                            <td id="tid" style="padding: 6px ">
                                <div id="divpath">
                                    <a href="showVideo?id=${v.id}"><img src="my_video/${v.imgpath}" width="280"
                                                                        height="180" border="0"/>
                                    </a>
                                </div>
                                <div class="divlisttitle" align="center">
                                    <a href="showVideo?id=${v.id}">${v.name }</br>${v.introduction}
                                    </a>
                                </div>
                            </td>
                            <c:if test="${(vs.count-1)%4==3 }">
                                </tr>
                            </c:if>
                        </c:forEach>
                    </table>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Ends Here -->


</div>
<!-- //gallery -->
<!-- footer -->
<div class="footer">
    <!-- container -->
    <div class="container">
        <div class="footer-top">
            <div class="footer-grids">
                <div class="col-md-3 f-address">
                    <h5>Address</h5>
                    <ul>
                        <li>公司详细地址：</li>
                        <li>浙江杭州江干区九堡王田大酒店A座8楼</li>
                        <li>电话: 18756933063</li>
                        <li>微信: 418590759</li>
                        <li>邮箱: 974049597@qq.com</li>
                    </ul>
                </div>
                <div class="col-md-6 f-address f-contact">
                    <h5>Stay in Touch</h5>

                    <form>
                        <input type="text" placeholder="Email address" required="false">
                        <input type="submit" value="Subscribe">
                    </form>
                </div>
                <div class="col-md-3 footer-logo">
                    <a href="index.html">Forward</a>

                    <div class="footer-left">
                        <ul>
                            <li><a class="facebook" href="#"></a></li>
                            <li><a class="twitter" href="#"></a></li>
                            <li><a class="linked-in" href="#"></a></li>
                            <li><a class="you-tube" href="#"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="footer-bottom">
                <div class="copyright">
                    <p>Copyright &copy; 2017.Company name All rights reserved.</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //footer -->
<script type="text/javascript">
    $(document).ready(function () {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- content-Get-in-touch -->
</body>
</html>