<%--
  Created by IntelliJ IDEA.
  User: LB
  Date: 2017/9/8
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>视频主页面</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .container{
            width: 100%;
            margin-top: 8px;
             margin-bottom: 50px;
            background-color: #75D2D9;
        }
        #tab{

            width: 100%;
            margin-left: 80px;
        }
        .fvideo{
            margin-top: -100px;
        }

         #tid{
             margin-top: 20px;
             width: 500px;
             height: 400px;
             color: red;
         }
        .divlisttitle{
            padding-top: 12px;
        }


    </style>

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column" >
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#">首页</a>
                </li>
                <li>
                    <a href="#">简介</a>
                </li>

                <li class="dropdown pull-left">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">一年级<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">语文</a>
                        </li>
                        <li>
                            <a href="#">数学</a>
                        </li>
                        <li>
                            <a href="#">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                </li>
                <li class="dropdown pull-left">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">一年级<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">语文</a>
                        </li>
                        <li>
                            <a href="#">数学</a>
                        </li>
                        <li>
                            <a href="#">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                </li>

                <li class="dropdown pull-left">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">一年级<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">语文</a>
                        </li>
                        <li>
                            <a href="#">数学</a>
                        </li>
                        <li>
                            <a href="#">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                </li>

                <li class="dropdown pull-left">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">二年级<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">语文</a>
                        </li>
                        <li>
                            <a href="#">数学</a>
                        </li>
                        <li>
                            <a href="#">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                </li>

                <li class="dropdown pull-left">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">三年级<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">语文</a>
                        </li>
                        <li>
                            <a href="#">数学</a>
                        </li>
                        <li>
                            <a href="#">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                </li>

                <li class="dropdown pull-left">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">四年级<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">语文</a>
                        </li>
                        <li>
                            <a href="#">数学</a>
                        </li>
                        <li>
                            <a href="#">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                </li>

                <li class="dropdown pull-left">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">五年级<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">语文</a>
                        </li>
                        <li>
                            <a href="#">数学</a>
                        </li>
                        <li>
                            <a href="#">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                </li>

                <li class="dropdown pull-left">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">六年级<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">语文</a>
                        </li>
                        <li>
                            <a href="#">数学</a>
                        </li>
                        <li>
                            <a href="#">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                </li>

                <li class="dropdown pull-left">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">其他<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">语文</a>
                        </li>
                        <li>
                            <a href="#">数学</a>
                        </li>
                        <li>
                            <a href="#">英语</a>
                        </li>
                        <li class="divider">
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<h3>视频区</h3>
<div class="fvideo">
    <table id="tab" >
        <c:forEach items="${requestScope.list}" var="v" varStatus="vs">
            <c:if test="${(vs.count-1)%4==0 }">
            <tr id="trd">
            </c:if>
                <td id="tid">

                    <div id="divpath">
                        <a href="showVideo?id=${v.id}"><img src="my_video/${v.imgpath}" width="200" height="150"
                                                            border="0"/>
                        </a>
                    </div>
                    <div class="divlisttitle">
                        <a href="showVideo?id=${v.id}">说明：${v.name }<br/>
                            描述：${v.introduction}
                        </a>
                    </div>
                </td>
            <c:if test="${(vs.count-1)%4==3 }">
            </tr>
            </c:if>
        </c:forEach>
    </table>
</div>
</body>
</html>
