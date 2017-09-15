<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>小说网</title>
    <style type="text/css">
        #first {
            list-style-type: none;

        }

        #first li {
            text-decoration: none;
        }
    </style>
</head>
<body>
<div>
    <h2>章节介绍</h2>
    <ul id="first">
    <#list fictionlist as n>
        <li><a href="xxxx${n.id}"><span>${n.title}</span></a></li>
    </#list>
    </ul>
</div>
</body>
</html>