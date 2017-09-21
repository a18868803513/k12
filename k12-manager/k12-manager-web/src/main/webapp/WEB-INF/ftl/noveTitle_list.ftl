<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>小说列表</title>
    <style type="text/css">
        .div{
            text-align: center;
        }
        #first {
            list-style-type: none;

        }

        #first li a {
            font-size: 0.8cm;
            text-decoration:none;

        }
        .sd a{
            font-size: 1cm;
            float: left;
            padding-top: 10px;
            text-decoration: none;
        }
    </style>
</head>
<body style="background-color:#648C0F ">
<div class="sd"> <a href="index.html" >主页</a></div>
<div class="div">
    <h2>小说区</h2>
    <ul id="first">
    <#list noveTitles as t>
        <li><a href="yyyy${t.id}"><span>${t.novelTitle}</span></a></li>
    </#list>
    </ul>

</div>
</body>
</html>