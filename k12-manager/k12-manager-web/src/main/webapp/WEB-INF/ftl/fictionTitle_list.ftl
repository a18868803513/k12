<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>小说网</title>
    <style type="text/css">
        #first {
            list-style-type: none;

        }
        #second {
            text-decoration:none;
        }
    </style>
</head>
<body>
<div>
    <h2>今日之说</h2>
    <ul id="first">
    <#list fictionlist as n>
        <li id="second"><a href="xxxx${n.id}"><span>${ n.title}</span></a></li>
    </#list>
    </ul>
</div>
</body>
</html>