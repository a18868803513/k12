
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>Bootstrap 实例 - 简单的轮播（Carousel）插件</title>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>
<style>
  #h1{
  padding: 140px 0 50px 0;
  text-align: center;
  margin: 0 auto;
  font-size: 50px;
  font-weight: 900;
    color: #ffffff;
  }
  #h2{

    color: red;
  }

</style>

<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
      <nav class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">网站首页</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li>
              <a href="#">联系电话:110</a>
            </li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li>
              <a href="#">${user.username}</a>
            </li>
            <li>
              <a href="#">购物车</a>
            </li>
            <li>
              <a href="register">注册</a>
            </li>
            <li>
              <a href="login">登录</a>
            </li>
          </ul>
        </div>

      </nav>
      <div id="h1" class="jumbotron" style="background: url(images/cc.jpg)">
        <h1>
          欢迎来到万峰教育中心
        </h1>
        <p>
          表扬用喇叭，教育用电话，请拿起你的电话，联系我们！！！很急！！
        </p>

      </div>
      <div class="carousel slide" id="carousel-908050">
        <%--<ol class="carousel-indicators">
          <li data-slide-to="0" data-target="#carousel-908050">
          </li>
          <li data-slide-to="1" data-target="#carousel-908050">
          </li>
          <li data-slide-to="2" data-target="#carousel-908050">
          </li>
        </ol>--%>
        <div class="carousel-inner">
          <div class="item">
            <img alt="" src="v3/default.jpg" />
            <div class="carousel-caption">
              <h4>
                First Thumbnail label
              </h4>
              <p>
                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
              </p>
            </div>
          </div>
          <div class="item active left">
            <img alt="" src="v3/default1.jpg" />
            <div class="carousel-caption">
              <h4>
                Second Thumbnail label
              </h4>
              <p>
                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
              </p>
            </div>
          </div>
          <div class="item next left">
            <img alt="" src="v3/default2.jpg" />
            <div class="carousel-caption">
              <h4>
                Third Thumbnail label
              </h4>
              <p>
                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
              </p>
            </div>
          </div>
        </div> <a class="left carousel-control" href="#carousel-908050" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-908050" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
      </div>
    </div>
  </div>
  <div class="row clearfix">
    <div class="col-md-12 column">
      <nav class="navbar navbar-default" role="navigation">
        <div id="h2">
        <div  class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <div class="col-md-3 column">
            <ul class="nav navbar-nav navbar-left">
              <li>
                <a href="qb-user-index">在线题库</a>
              </li>
              </ul>
          </div>
          <div class="col-md-3 column">
            <ul class="nav navbar-nav navbar-left">
              <li>
                <a href="#">在线书籍</a>
              </li>
            </ul>
          </div>
          <div class="col-md-3 column">
            <ul class="nav navbar-nav navbar-left">
              <li>
                <a href="video_list">在线视频</a>
              </li>
            </ul>
          </div>
          <div class="col-md-3 column">
            <ul class="nav navbar-nav navbar-left">
              <li>
                <a href="#">教育商城</a>
              </li>
            </ul>

          </div>


        </div>
        </div>
      </nav>
    </div>
  </div>
</div>


</body>
</html>