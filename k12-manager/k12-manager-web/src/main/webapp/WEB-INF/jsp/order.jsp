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

  <title>购物车</title>

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
      <div id="cart"><a class="btn btn-1" href="addOrder"><span class="glyphicon glyphicon-shopping-cart"></span>ITEM</a></div>
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
                <li><a href="category.html">Window</a></li>
                <li><a href="category.html">MacBook</a></li>
              </ul>
            </div>
          </div>--%>
        </li>
        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Laptops &amp; Notebooks</a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <ul class="list-unstyled">
                <li><a href="category.html">Dell</a></li>
                <li><a href="category.html">Asus</a></li>
                <li><a href="category.html">Samsung</a></li>
                <li><a href="category.html">Lenovo</a></li>
                <li><a href="category.html">Acer</a></li>
              </ul>
            </div>
          </div>
        </li>
        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Mobiles &amp; Tablet</a>
          <div class="dropdown-menu" style="margin-left: -203.625px;">
            <div class="dropdown-inner">
              <ul class="list-unstyled">
                <li><a href="category.html">Iphone</a></li>
                <li><a href="category.html">Samsung</a></li>
                <li><a href="category.html">Nokia</a></li>
                <li><a href="category.html">Lenovo</a></li>
                <li><a href="category.html">Google</a></li>
              </ul>
              <ul class="list-unstyled">
                <li><a href="category.html">Nexus</a></li>
                <li><a href="category.html">Dell</a></li>
                <li><a href="category.html">Oppo</a></li>
                <li><a href="category.html">Blackberry</a></li>
                <li><a href="category.html">HTC</a></li>
              </ul>
              <ul class="list-unstyled">
                <li><a href="category.html">LG</a></li>
                <li><a href="category.html">Q-Mobiles</a></li>
                <li><a href="category.html">Sony</a></li>
                <li><a href="category.html">Wiko</a></li>
                <li><a href="category.html">T&T</a></li>
              </ul>
            </div>
          </div>
        </li>
        <li><a href="category.html">Software</a></li>
      </ul>
    </div>
  </div>
</nav>
<!--//////////////////////////////////////////////////-->
<!--///////////////////Cart Page//////////////////////-->
<!--//////////////////////////////////////////////////-->
<div id="page-content" class="single-page">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <ul class="breadcrumb">
          <li><a href="product-user-list">商城主页</a></li>
          <li><a href="cart">购物车</a></li>
          <li><a href="order">订单详情</a></li>
        </ul>
      </div>
    </div>
    <div class="row">
      <div class="product well">
        <c:forEach items="${allItem}" var="v" varStatus="vs">

        <div class="col-md-3">
          <div class="image">
            <img src="images/${v.tb_product.img}" />
          </div>
        </div>
        <div class="col-md-9">
          <div class="caption">
            <div class="name"><h3><a href="oneProduct?id=${v.tb_product.id}">${v.tb_product.name}</a></h3></div>
            <div class="info">
              <ul>
                <li>Brand: K12</li>
                <li>ID: ${v.tb_product.id}</li>
              </ul>
            </div>
            <div class="price">${v.tb_product.price}元</div>
            <label>数量: </label> <input class="form-inline quantity" type="text" id="${vs.count}" value="${v.counts}"><a onclick="b(${vs.count},${v.tb_product.id})" class="btn btn-2 ">更新数量</a>
            <hr>
            <a href="removeOrderItem?id=${v.tb_product.id}" class="btn btn-default pull-right">移除</a>
          </div>
        </div>
        <div class="clear"></div>
          <br/>
        </c:forEach>
      </div>
    </div>
    <%--<div class="row">
      <div class="product well">
        <div class="col-md-3">
          <div class="image">
            <img src="images/Z1.png" />
          </div>
        </div>
        <div class="col-md-9">
          <div class="caption">
            <div class="name"><h3><a href="product.html">Aliquam erat volutpat</a></h3></div>
            <div class="info">
              <ul>
                <li>Brand: text</li>
                <li>ID: 0122222</li>
              </ul>
            </div>
            <div class="price">$122<span>$98</span></div>
            <label>Qty: </label> <input class="form-inline quantity" type="text" value="1"><a href="#" class="btn btn-2 ">Update</a>
            <hr>
            <a href="#" class="btn btn-default pull-right">REMOVE</a>
          </div>
        </div>
        <div class="clear"></div>
      </div>
    </div>--%>

   <%-- <div class="row">
      <div class="col-md-4 col-md-offset-8 ">
        <center><a href="product-user-list" class="btn btn-1">继续购物</a></center>
      </div>
    </div>--%>
    <div class="row">
      <div class="pricedetails">
        <div class="col-md-4 col-md-offset-8">

          <table>
            <h6>Price Details</h6>
            <tr>
              <td >Total</td>
              <td id="total"></td>
            </tr>

            <tr style="border-top: 1px solid #333">
              <td><h5>TOTAL</h5></td>
              <td id="div"></td>
            </tr>
          </table>
        <form method="post" action="payOrder?id=${oneItem.id}">
          <c:if test="${oneItem.status==1}">
          <input type="submit" class="btn btn-1" value="付款"/>
         </c:if>
          <c:if test="${oneItem.status==2}">
            订单完成！
          </c:if>
            </form>
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
          Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
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
<input type="hidden" id="user" value="${user.username}">
<script>
function b(count,pid){
  var counts=$("#"+count).val();
  $.ajax({
    url:'updateShppingItem?id='+pid+"&counts="+counts,
    type:"post",

  })
  setTimeout(c(),500);
}
$(function () {
  c();

});
  function c(){
    var username=$('#user').val();
    $.ajax({
      url:'showShoppingItemsAjax?username='+username,
      type:'post',
      success:function(data){
        var e=eval(data);
        var total=0;
        for(var i=0;i< e.length;i++){
          total=Number(e[i].tb_product.price)*Number(e[i].counts)+total;
        }
        $('#total').val(total);
        document.getElementById("total").innerHTML=total+"元";
        document.getElementById("div").innerHTML=total+"元";
      }
    })
  }

</script>

</body>
</html>
