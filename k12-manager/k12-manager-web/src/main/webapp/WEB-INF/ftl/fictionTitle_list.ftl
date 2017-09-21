<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>小说网</title>
    <style type="text/css">
        .div{
            text-align: center;
        }
        #first {
            list-style-type: none;

        }

        #first li a {
            color: #ff1e0f;
            font-size: 0.5cm;
            text-decoration: none;
        }
        .sd a{
              font-size: 0.8cm;
              float: right;
              padding-top: 10px;
              text-decoration: none;
          }
    </style>
</head>
<body style="background: url(images/picture4.jpg)">
<div class="sd"> <a href="ficnoveTitle.html" >主目录</a></div>
<div class="div">
    <h2>章节介绍</h2>
    <ul id="first">
    <#list fictionlist as n>
        <li><a href="xxxx${n.id}"><span>${n.title}</span></a></li>
    </#list>
    </ul>
</div>
</body>
</html>