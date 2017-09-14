<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/8/008
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="js/jquery-easyui-1.5/themes/bootstrap/easyui.css">
<link rel="stylesheet" href="js/jquery-easyui-1.5/themes/icon.css">
<link rel="stylesheet" href="css/common.css">
<script src="js/jquery-easyui-1.5/jquery.min.js"></script>
<!-- jquery easyui -->
<script src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script src="js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<script src="js/countDown.js"></script>
<html>
<head>
    <title></title>
</head>
<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">

    <%--  <%@include file="head.jsp"%>--%>
      <div class="page-header">
        <h1>
          在线题库 <small>Subtext for header</small>
        </h1>
      </div>

      <div class="row clearfix">
        <div class="col-md-3 column">
          <input id="cc" name="gid" value="年级">
        </div>
        <div class="col-md-3 column">
          <input id="dd" name="cid" value="课程">
        </div>
        <div class="col-md-3 column">
          <select id="testSize" name="testSize" class="easyui-combobox" >
            <option value="5">5道题目</option>
            <option value="10">10道题目</option>
            <option value="20">20道题目</option>
          </select>
        </div>
        <div class="col-md-3 column">
          <button id="bg"  class="easyui-linkbutton">生成题目</button>
        </div>
        <div id="paper"></div>
        <div class="container">
          <div class="row clearfix">
            <div class="col-md-12 column">
              <table class="table">
               <div id="text"></div>


              </table>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>

<script>
  var qArr=new Array();
  var anArr=new Array();
  var staArr=new Array();
  $('#bg').click(function(){

    var gid=$('#cc').combobox("getValue");
    var cid=$('#dd').combobox("getValue");
    var testSize=$('#testSize').combobox('getValue');
    var url="textPaper?gid="+gid+"&cid="+cid+"&testSize="+testSize;
    $.ajax({
      url:url,
      type:"post",
      success:function(data){
        var e=eval(data);
        var length= e.length;
        var html1="<table class='table'><tr><th>题目</th><th>答案</th></tr>";
        var html2="";

        for(var i=0;i< length;i++){
          html2=html2+"<tr><th>"+ e[i].question+"</th><th><input id='a"+i+"'  type='text'/></th><th><div id=d"+i+"><div></th><th><input type='hidden' class='rk' id=rk"+i+" value="+e[i].answer+"></th></tr>"
          qArr.push(e[i].id)
        }
        html3="</table><tr><button onclick='submit("+length+")'>提交</button><div id='lookrk'></div>"
        html2=html1+html2+html3;
        document.getElementById("text").innerHTML=html2;


      }

    })

  })
  $(".count_down").countDown({
    startTimeStr: '2017/01/11 00:00:00',//开始时间
    endTimeStr: '2017/01/17 23:59:59',//结束时间
    daySelector: ".day_num",
    hourSelector: ".hour_num",
    minSelector: ".min_num",
    secSelector: ".sec_num"
  });
  function submit(length){
    for(var i=0;i<length;i++){
      anArr.push($("#a"+i).val());

        if($("#a"+i).val()==$("#rk"+i).val()){
          document.getElementById("d"+i).innerHTML="正确";
          staArr.push(1);
        }else{
          document.getElementById("d"+i).innerHTML="错误";
          staArr.push(0);
        }
    }

    var html="<button id='bb' onclick='bb()'>查看正确答案</button>";
    document.getElementById("lookrk").innerHTML=html;
    /*var qArr=new Array();
    var aArr=new Array();
    var statusArr=new Array();
    for(var i=0;i<length;i++){
      qArr.add()
    }*/
    $.ajax({
      url:'addTestPaper?qArr='+qArr+"&anArr="+anArr+"&staArr="+staArr,
      type:"post"
    })
  }
  $('#cc').combobox({
    url:'gradeList',
    valueField:'id',
    textField:'grade'
  });

  $('#dd').combobox({
    url:'courseList',
    valueField:'id',
    textField:'course'
  });


  function bb(){
    alert('请充值');
    $('.rk').attr('type','text');
  }

</script>
</body>
</html>
