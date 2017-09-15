<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta content="text/html;charset=utf-8" http-equiv="Content-Type" />
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
  <meta name="renderer" content="webkit" />
  <meta http-equiv="Cache-Control" content="no-transform" />
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <title>一次问答网-专业问答社区网站</title>
  <meta name="keywords" content="一次问答网,问答网站,知识问答,社交网络,在线问答平台" />
  <meta name="description" content="一次问答专业的互联网问答解决平台，基于互动式知识分享问答网站。让你的提问，得到最专业的回答(答案)。加入一次问答网寻找答案，分享知识吧。"  />
  <base href="http://www.yicix.com/" /><!--[if IE]></base><![endif]-->
  <link href="http://www.yicix.com/static/css/default/img/favicon.ico?v=20160523" rel="shortcut icon" type="image/x-icon" />
  <link rel="stylesheet" type="text/css" href="http://www.yicix.com/static/css/bootstrap.css" />
  <link rel="stylesheet" type="text/css" href="http://www.yicix.com/static/css/icon.css" />
  <link href="http://www.yicix.com/static/css/default/common.css?v=20160523" rel="stylesheet" type="text/css" />
  <link href="http://www.yicix.com/static/css/default/link.css?v=20160523" rel="stylesheet" type="text/css" />
  <link href="http://www.yicix.com/static/js/plug_module/style.css?v=20160523" rel="stylesheet" type="text/css" />
  <script type="text/javascript">
    var _E3E7D26B496A4737B94D8F42897549D0="";
    var G_POST_HASH=_E3E7D26B496A4737B94D8F42897549D0;
    var G_INDEX_SCRIPT = "";
    var G_SITE_NAME = "一次问答网-专业问答社区网站";
    var G_BASE_URL = "http://www.yicix.com";
    var G_STATIC_URL = "http://www.yicix.com/static";
    var G_UPLOAD_URL = "http://www.yicix.com/uploads";
    var G_USER_ID = "";
    var G_USER_NAME = "";
    var G_UPLOAD_ENABLE = "N";
    var G_UNREAD_NOTIFICATION = 0;
    var G_NOTIFICATION_INTERVAL = 100000;
    var G_CAN_CREATE_TOPIC = "";
    var G_ADVANCED_EDITOR_ENABLE = "Y";
    var FILE_TYPES = "jpg,jpeg,png,gif,doc,docx";
  </script>
  <script src="http://www.yicix.com/static/js/jquery.2.js?v=20160523" type="text/javascript"></script>
  <script src="http://www.yicix.com/static/js/jquery.form.js?v=20160523" type="text/javascript"></script>
  <script src="http://www.yicix.com/static/js/plug_module/plug-in_module.js?v=20160523" type="text/javascript"></script>
  <script src="http://www.yicix.com/static/js/aws.js?v=20160523" type="text/javascript"></script>
  <script src="http://www.yicix.com/static/js/aw_template.js?v=20160523" type="text/javascript"></script>
  <script src="http://www.yicix.com/static/js/app.js?v=20160523" type="text/javascript"></script>
  <script type="text/javascript" src="http://www.yicix.com/static/js/compatibility.js"></script>
  <!--[if lte IE 8]>
  <script type="text/javascript" src="http://www.yicix.com/static/js/respond.js"></script>
  <![endif]-->
</head>
<noscript  id="noscript">
  <div class="aw-404 aw-404-wrap container">
    <img src="http://www.yicix.com/static/common/no-js.jpg" alt="你的浏览器禁用了JavaScript">
    <p>你的浏览器禁用了JavaScript, 请开启后刷新浏览器获得更好的体验!</p>
  </div>
</noscript><body>
<div>
<jsp:include page="head.jsp"></jsp:include>
</div>
<div>
  <script type="text/javascript">
    (function(win,doc){
      var s = doc.createElement("script"), h = doc.getElementsByTagName("head")[0];
      if (!win.alimamatk_show) {
        s.charset = "gbk";
        s.async = true;
        s.src = "https://alimama.alicdn.com/tkapi.js";
        h.insertBefore(s, h.firstChild);
      };
      var o = {
        pid: "mm_31338724_22774988_116452290",/*推广单元ID，用于区分不同的推广渠道*/
        appkey: "",/*通过TOP平台申请的appkey，设置后引导成交会关联appkey*/
        unid: "",/*自定义统计字段*/
        type: "click" /* click 组件的入口标志 （使用click组件必设）*/
      };
      win.alimamatk_onload = win.alimamatk_onload || [];
      win.alimamatk_onload.push(o);
    })(window,document);
  </script>

</div><div class="aw-container-wrap">
  <div class="container">
    <div class="row">
      <div class="aw-content-wrap clearfix">
        <div class="col-sm-12 col-md-9 aw-main-content">
          <!-- 新消息通知 -->
          <div class="aw-mod aw-notification-box collapse" id="index_notification">
            <div class="mod-head common-head">
              <h2>
                <span class="pull-right"><a href="http://www.yicix.com/setting/privacy/#notifications" class="text-color-999"><i class="icon icon-setting"></i> 通知设置</a></span>
                <i class="icon icon-bell"></i>新通知<em class="badge badge-important" name="notification_unread_num"></em>
              </h2>
            </div>
            <div class="mod-body">
              <ul id="notification_list"></ul>
            </div>
            <div class="mod-footer clearfix">
              <a href="javascript:;" onclick="AWS.Message.read_notification(false, 0, false);" class="pull-left btn btn-mini btn-gray">我知道了</a>
              <a href="http://www.yicix.com/notifications/" class="pull-right btn btn-mini btn-success">查看所有</a>
            </div>
          </div>
          <!-- end 新消息通知 -->
          <!-- tab切换 -->
          <h1>万峰问答</h1>
          <%--<ul class="nav nav-tabs aw-nav-tabs active hidden-xs">
           <li><h1>万峰问答</h1></li>
         </ul>--%>
          <!-- end tab切换 -->
          <div class="aw-mod aw-explore-list">

            <div class="mod-body">
              <c:forEach items="${note}" var="n">
              <div class="aw-common-list">
                <div class="aw-item active" data-topic-id="133,2,">
                  <a class="aw-user-name hidden-xs" data-id="106" href="http://www.yicix.com/people/q123456" rel="nofollow"><img src="http://www.yicix.com/static/common/avatar-max-img.png" alt="" /></a>	<div class="aw-question-content">
                  <h4>
                    <a onclick='a(${n.noteID})'>${n.title}</a>
                  </h4>
                  <a href="http://www.yicix.com/question/236#!answer_form" class="pull-right text-color-999">回复</a>

                  <p>
                    <a href="http://www.yicix.com/people/q123456" class="aw-user-name">q123456</a>				<span class="text-color-999">发起了问题 • 1 人关注 • 0 个回复 • 9 次浏览
				</span>
                    <span class="text-color-999 related-topic collapse"> • 来自相关话题</span>
                  </p>

                </div>
                </div>

              </div>
              </c:forEach>
              <input id="title" type="text" value="标题" style="width: 690px"/>
                              <textarea id="content" rows="5" cols="95" >
内容
</textarea>
              <button id="ft">发帖</button>
            </div>
            <div class="mod-footer">
              <div class="page-control"><ul class="pagination pull-right"><li class="active"><a href="javascript:;">1</a></li><li><a href="http://www.yicix.com/sort_type-new__day-0__is_recommend-0__page-2">2</a></li><li><a href="http://www.yicix.com/sort_type-new__day-0__is_recommend-0__page-3">3</a></li><li><a href="http://www.yicix.com/sort_type-new__day-0__is_recommend-0__page-4">4</a></li><li><a href="http://www.yicix.com/sort_type-new__day-0__is_recommend-0__page-2">&gt;</a></li><li><a href="http://www.yicix.com/sort_type-new__day-0__is_recommend-0__page-14">&gt;&gt;</a></li></ul></div>						</div>
          </div>
        </div>
        <!-- 侧边栏 -->
        <div class="col-sm-12 col-md-3 aw-side-bar hidden-xs hidden-sm">




        <!-- end 侧边栏 -->
      </div>
    </div>
  </div>
</div>
<div class="aw-footer-wrap">
  <div class="aw-footer">
    Copyright © 2017<span class="hidden-xs"> - 蜀ICP备15015279号, All Rights Reserved</span>
    <span class="hidden-xs"><a href="/" title="社交网络,问答网站">一次问答网</a></span>
    <span>社区问答网站</span>
    <span class="hidden-xs"><a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=347188601@qq.com" target="_blank" title="联系我们">联系我们</a></span>
  </div>
</div>
<a class="aw-back-top hidden-xs" href="javascript:;" onclick="$.scrollTo(1, 600, {queue:true});"><i class="icon icon-up"></i></a>
<script>
  (function(){var bp = document.createElement('script');var curProtocol = window.location.protocol.split(':')[0];if (curProtocol === 'https') {bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';        }else {bp.src = 'http://push.zhanzhang.baidu.com/push.js';}var s = document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp, s);})();
  var _hmt = _hmt || [];(function() {var hm = document.createElement("script");hm.src = "//hm.baidu.com/hm.js?836eb244a18a8e6b213db6744bb321b6";var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(hm, s);})();
  (function(){var src = (document.location.protocol == "http:") ? "http://js.passport.qihucdn.com/11.0.1.js?8b98dbf79df568bef46676a1e8a7b313":"https://jspassport.ssl.qhimg.com/11.0.1.js?8b98dbf79df568bef46676a1e8a7b313";document.write('<script src="' + src + '" id="sozz"><\/script>');})();
</script><!-- DO NOT REMOVE -->
<div id="aw-ajax-box" class="aw-ajax-box"></div>
<div style="display:none;" id="__crond">
  <script>
    $('#ft').click(function(){
      var title=$('#title').val();
      var content=$('#content').val();
      location.href="http://localhost:8080/k12/addNote?title="+title+"&content="+content;
    })
  </script>
  <script type="text/javascript">
    $(document).ready(function () {
      $('#__crond').html(unescape('%3Cimg%20src%3D%22' + G_BASE_URL + '/crond/run/1505265101%22%20width%3D%221%22%20height%3D%221%22%20/%3E'));
    });
  </script>
  <script>
    function a(data){
      location.href="http://localhost:8080/k12/queryNoteById?noteID="+data;
    }
  </script>
</div>
<!-- Escape time: 0.13193798065186 --><!-- / DO NOT REMOVE -->


</body>
</html>