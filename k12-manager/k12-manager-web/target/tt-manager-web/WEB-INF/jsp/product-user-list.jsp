<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="description" content="">
  <meta name="author" content="">

  <title>教育商城</title>

  <!-- Bootstrap Core CSS -->
  <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css">

  <!-- Custom CSS -->
  <link rel="stylesheet" href="css/style.css">


  <!-- Custom Fonts -->
  <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"  type="text/css">
  <link rel="stylesheet" href="fonts/font-slider.css" type="text/css">

  <!-- jQuery and Modernizr-->
  <script src="js/jquery-2.1.1.js"></script>

  <!-- Core JavaScript Files -->
  <script src="js/bootstrap.min.js"></script>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>

<body>
<!--Top-->
<jsp:include page="head.jsp" />
<%--<nav id="top">
  <div class="container">
    <div class="row">
      <div class="col-xs-6">
        <select class="language">
          <option value="English" selected>English</option>
          <option value="France">France</option>
          <option value="Germany">Germany</option>
        </select>
        <select class="currency">
          <option value="USD" selected>USD</option>
          <option value="EUR">EUR</option>
          <option value="DDD">DDD</option>
        </select>
      </div>
      <div class="col-xs-6">
        <ul class="top-link">
          <li><a href="account.html"><span class="glyphicon glyphicon-user"></span> My Account</a></li>
          <li><a href="contact.html"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>
        </ul>
      </div>
    </div>
  </div>
</nav>--%>
<!--Header-->
<header class="container">
  <div class="row">
    <div class="col-md-4">
      <div id="logo"><img src="images/k12logo.png" /></div>
    </div>
    <div class="col-md-4">
      <form class="form-search">
        <input type="text" class="input-medium search-query">
        <button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>
      </form>
    </div>
    <div class="col-md-4">
      <div id="cart"><a class="btn btn-1" href="cart"><span class="glyphicon glyphicon-shopping-cart"></span>CART : 0 ITEM</a></div>
    </div>
  </div>
</header>
<!--Navigation-->
<nav id="menu" class="navbar">
  <div class="container">
    <div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <li><a href="index">主页</a></li>
        <li class="dropdown"><a href="allProduct">所有图书</a>
          <%--<div class="dropdown-menu">
            <div class="dropdown-inner">
              <ul class="list-unstyled">
                <li><a href="category">Window</a></li>
                <li><a href="category">MacBook</a></li>
              </ul>
            </div>
          </div>--%>
        </li>
        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Laptops &amp; Notebooks</a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <ul class="list-unstyled">
                <li><a href="category">Dell</a></li>
                <li><a href="category">Asus</a></li>
                <li><a href="category">Samsung</a></li>
                <li><a href="category">Lenovo</a></li>
                <li><a href="category">Acer</a></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Mobiles &amp; Tablet</a>
          <div class="dropdown-menu" style="margin-left: -203.625px;">
            <div class="dropdown-inner">
              <ul class="list-unstyled">
                <li><a href="category">Iphone</a></li>
                <li><a href="category">Samsung</a></li>
                <li><a href="category">Nokia</a></li>
                <li><a href="category">Lenovo</a></li>
                <li><a href="category">Google</a></li>
              </ul>
              <ul class="list-unstyled">
                <li><a href="category">Nexus</a></li>
                <li><a href="category">Dell</a></li>
                <li><a href="category">Oppo</a></li>
                <li><a href="category">Blackberry</a></li>
                <li><a href="category">HTC</a></li>
              </ul>
              <ul class="list-unstyled">
                <li><a href="category">LG</a></li>
                <li><a href="category">Q-Mobiles</a></li>
                <li><a href="category">Sony</a></li>
                <li><a href="category">Wiko</a></li>
                <li><a href="category">T&T</a></li>
              </ul>
            </div>
          </div>
        </li>
        <li><a href="category">Software</a></li>
      </ul>
    </div>
  </div>
</nav>
<!--//////////////////////////////////////////////////-->
<!--///////////////////HomePage///////////////////////-->
<!--//////////////////////////////////////////////////-->

<div id="page-content" class="home-page">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <!-- Carousel -->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators hidden-xs">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
          </ol>
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="images/hengfu.jpg" alt="First slide">
              <!-- Static Header -->
              <div class="header-text hidden-xs">
                <div class="col-md-12 text-center">
                </div>
              </div><!-- /header-text -->
            </div>
            <div class="item">
              <img src="images/hengfu2.jpg" alt="Second slide">
              <!-- Static Header -->
              <div class="header-text hidden-xs">
                <div class="col-md-12 text-center">
                </div>
              </div><!-- /header-text -->
            </div>
            <div class="item">
              <img src="images/hengfu3.jpg" alt="Third slide">
              <!-- Static Header -->
              <div class="header-text hidden-xs">
                <div class="col-md-12 text-center">
                </div>
              </div><!-- /header-text -->
            </div>
          </div>
          <!-- Controls -->
          <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
          </a>
        </div><!-- /carousel -->
      </div>
    </div>
    <div class="row">
      <div class="banner">
        <div class="col-sm-4">
          <img src="images/huluwa.jpeg" />
        </div>
        <div class="col-sm-4">
          <img src="images/sub-banner3.png" />
        </div>
        <div class="col-sm-4">
          <img src="images/huluwa2.jpg" />
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12">
        <div class="heading"><h2>精品图书</h2></div>
        <div class="products">
          <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="product">

              <div class="image"><a href="oneProduct?id=1"><img src="images/antusheng.jpg" /></a></div>
              <div class="buttons">
                <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
              </div>
              <div class="caption">
                <div class="name"><h3><a href="oneProduct?id=1">安徒生童话</a></h3></div>
                <div class="price">20元<span>28元</span></div>
                <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
              </div>

            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="product">
              <div class="image"><a href="oneProduct?id=12"><img src="images/bainian.jpg" /></a></div>
              <div class="buttons">
                <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
              </div>
              <div class="caption">
                <div class="name"><h3><a href="oneProduct?id=12">百年孤独</a></h3></div>
                <div class="price">20元<span>28元</span></div>
                <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="product">
              <div class="image"><a href="oneProduct?id=18"><img src="images/bingyuhuo.jpg" /></a></div>
              <div class="buttons">
                <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
              </div>
              <div class="caption">
                <div class="name"><h3><a href="oneProduct?id=18">冰与火之歌</a></h3></div>
                <div class="price">23元<span>31元</span></div>
                <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="product">
              <div class="image"><a href="oneProduct?id=13"><img src="images/halibote.jpg" /></a></div>
              <div class="buttons">
                <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
              </div>
              <div class="caption">
                <div class="name"><h3><a href="oneProduct?id=13">哈利波特系列</a></h3></div>
                <div class="price">21元<span>29元</span></div>
                <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="banner">
        <div class="col-sm-6">
          <img src="images/sub-banner4.jpg" />
        </div>
        <div class="col-sm-6">
          <img src="images/halibote1.jpg" />
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12">
        <div class="heading"><h2>世界名著</h2></div>
        <div class="products">
          <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="product">
              <div class="image"><a href="oneProduct?id=7"><img src="images/hongloumeng.jpg" /></a></div>
              <div class="buttons">
                <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
              </div>
              <div class="caption">
                <div class="name"><h3><a href="oneProduct?id=7">红楼梦</a></h3></div>
                <div class="price">20元<span>28元</span></div>
                <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="product">
              <div class="image"><a href="oneProduct?id=8"><img src="images/sanguoyanyi.jpg" /></a></div>
              <div class="buttons">
                <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
              </div>
              <div class="caption">
                <div class="name"><h3><a href="oneProduct?id=8">三国演义1</a></h3></div>
                <div class="price">21元<span>29元</span></div>
                <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="product">
              <div class="image"><a href="oneProduct?id=6"><img src="images/shuihuzhuan.jpg" /></a></div>
              <div class="buttons">
                <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
              </div>
              <div class="caption">
                <div class="name"><h3><a href="oneProduct?id=6">水浒传</a></h3></div>
                <div class="price">19元<span>27元</span></div>
                <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="product">
              <div class="image"><a href="oneProduct?id=3"><img src="images/xiaogushi.jpg" /></a></div>
              <div class="buttons">
                <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
              </div>
              <div class="caption">
                <div class="name"><h3><a href="oneProduct?id=3">小故事大道理</a></h3></div>
                <div class="price">20元<span>28元</span></div>
                <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<footer>
  <div class="container">
    <div class="wrap-footer">
      <div class="row">
        <div class="col-md-3 col-footer footer-1">
          <img src="images/k12logo.png" />
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
        </div>
        <div class="col-md-3 col-footer footer-2">
          <div class="heading"><h4>Customer Service</h4></div>
          <ul>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Delivery Information</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">Terms & Conditions</a></li>
            <li><a href="#">Contact Us</a></li>
          </ul>
        </div>
        <div class="col-md-3 col-footer footer-3">
          <div class="heading"><h4>My Account</h4></div>
          <ul>
            <li><a href="#">My Account</a></li>
            <li><a href="#">Brands</a></li>
            <li><a href="#">Gift Vouchers</a></li>
            <li><a href="#">Specials</a></li>
            <li><a href="#">Site Map</a></li>
          </ul>
        </div>
        <div class="col-md-3 col-footer footer-4">
          <div class="heading"><h4>Contact Us</h4></div>
          <ul>
            <li><span class="glyphicon glyphicon-home"></span>California, United States 3000009</li>
            <li><span class="glyphicon glyphicon-earphone"></span>+91 8866888111</li>
            <li><span class="glyphicon glyphicon-envelope"></span>infor@yoursite.com</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="copyright">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          Copyright &copy; 2017.Company name K12 Education.<%--<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>--%>
        </div>
        <div class="col-md-6">
          <div class="pull-right">
            <ul>
              <li><img src="images/visa-curved-32px.png" /></li>
              <li><img src="images/paypal-curved-32px.png" /></li>
              <li><img src="images/discover-curved-32px.png" /></li>
              <li><img src="images/maestro-curved-32px.png" /></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
</body>
</html>
