<%--
  Created by IntelliJ IDEA.
  User: dwy
  Date: 2017/9/14
  Time: 12:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>订单列表</title>
  <%--<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

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
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
</head>
<body>
<jsp:include page="head.jsp" />
<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
      <table class="table">
        <thead>
        <tr>
          <th>
            编号
          </th>
          <th>
            收件人
          </th>
          <th>
            订单时间
          </th>
          <th>
            状态
          </th>
          <th>
            查看订单
          </th>
          <th>
            删除订单
          </th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td>
            1
          </td>
          <td>
            TB - Monthly
          </td>
          <td>
            01/04/2012
          </td>
          <td>
            Default
          </td>
          <td>
            <a href="order">查看</a>
          </td>
          <td>
            删除
          </td>
        </tr>
        <tr class="success">
          <td>
            1
          </td>
          <td>
            TB - Monthly
          </td>
          <td>
            01/04/2012
          </td>
          <td>
            Approved
          </td>
          <td>
            查看
          </td>
          <td>
            删除
          </td>
        </tr>

        <tr class="error">
          <td>
            2
          </td>
          <td>
            TB - Monthly
          </td>
          <td>
            02/04/2012
          </td>
          <td>
            Declined
          </td>
          <td>
            查看
          </td>
          <td>
            删除
          </td>
        </tr>
        <tr class="warning">
          <td>
            3
          </td>
          <td>
            TB - Monthly
          </td>
          <td>
            03/04/2012
          </td>
          <td>
            Pending
          </td>
          <td>
            查看
          </td>
          <td>
            删除
          </td>
        </tr>
        <tr class="info">
          <td>
            4
          </td>
          <td>
            TB - Monthly
          </td>
          <td>
            04/04/2012
          </td>
          <td>
            Call in to confirm
          </td>
          <td>
            查看
          </td>
          <td>
            删除
          </td>
        </tr>
        </tbody>
      </table>
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
</body>
</html>
