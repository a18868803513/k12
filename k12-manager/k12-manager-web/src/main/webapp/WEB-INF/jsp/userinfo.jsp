<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-09-13
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- 重置文件 -->
  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/editstyle.css">
  <title>编辑</title>
</head>
<body>
<form method="post" action="userInfo"  onsubmit="return subt()">
<div class="reg_div">
  <p>个人信息编辑</p>
  <ul class="reg_ul">
    <li>
      <span>${message}</span>
    </li>
    <li>
      <span>昵称：</span>
      <input type="text" name="nickname"  placeholder="0-8位昵称" class="reg_user" id="nickname">
      <span class="tip user_hint"></span>
    </li>
    <li>
      <span>性别:</span>
      男<input type="radio" name="sex" value="1" id="sex"/>
    </li>
      <%--女<input type="radio" name="sex" value="女"/>
      其他<input type="radio" name="sex" value="其他"/>
    </li>--%>
    <li>
      <span>年龄：</span>
      <input type="number" name="age" placeholder="请输入合法年龄" class="reg_password">
      <span class="tip password_hint"></span>
    </li>
    <li>
      <span>出生年月日:</span>
      <input type="text" class="sang_Calender" name="birthday"/>
    </li>
    <li>
      <span>学校:</span>
      <input type="text" class="school" id="school" name="school"/>
    </li>
    <li>
      <span>年级:</span>
      <select  id="s" name="grade" >
        <option value="1">一年级</option>
        <option value="2">二年级</option>
        <option value="3">三年级</option>
        <option value="4">四年级</option>
        <option value="5">五年级</option>
        <option value="6">六年级</option>
      </select>
    </li>
    <li>
      <input type="submit" id="sub" value="提交信息"/>
      <input type="button" onclick="bac();" id="ba" value="返回主页"/>
    </li>
  </ul>
</div>
</form>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/datetime.js"></script>
<div style="text-align:center;">
  <p><h4>k12教育</h4></p>
</div>
<%--
<script>
  $('.red_button').click(function(){
    $.ajax({
      url: "userInfo?",
      type: "POST",
      success:function(data){
        alert(data);
      },

    });
    /*$.post("editInfo",function(date){
     alert(date);
     setTimeout("tiao",3000);
     });*/
  });
</script>
--%>
</body>
</html>
