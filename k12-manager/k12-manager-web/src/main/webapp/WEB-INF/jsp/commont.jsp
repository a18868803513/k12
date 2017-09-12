<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>K12教育网</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function(){
        var p = $.getElementById("mokuai");
        var a = $.createElement("a");
        a.setAttribute("class","list-group-item active");
        a.setAttribute("href","#");
        a.innerHTML="${user.username}";
    })
</script>

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-2 column">
        </div>
        <div class="col-md-8 column">
            <h1 class="text-center">
                k12教育论坛
            </h1>
            <button type="button" class="btn" id="question">我要提问</button>
            <div class="list-group" id="mokuai">
                <a href="#" class="list-group-item active" >${user.username}</a>
                <div class="list-group-item">
                    <a href="#" class="list-group-item-heading">
                    </a>
                </div>
                <a class="list-group-item active"><span class="badge">14</span> Help</a>

            </div>
        </div>
        <div class="col-md-2 column">
        </div>
    </div>
</div>

</body>
</html>