<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>小说列表</title>
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
    <h2>小说区</h2>
    <ul id="first">
    <#list noveTitles as t>
        <li><a href="yyyy${t.id}"><span>${t.novelTitle}</span></a></li>
    </#list>
    </ul>
</div>
</body>
</html>