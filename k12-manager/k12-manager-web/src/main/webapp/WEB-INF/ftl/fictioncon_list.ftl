<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${fic.title}</title>
    <style type="text/css">
        .body {
            background-color: #eac78d;
        }

        .div {
            text-align: center;
        }
        .div a{
            color: #150c99;
        }

    </style>
</head>
<body class="body">
${fic.content}
<div class="div">
    <input type="button" onclick="bef();" value="上一章">
    <a href="yyyy${index}.html">目录</a>
    <input type="button" onclick="nex();" value="下一章">
    <input type="hidden" id="page" value="${page}">
    <input type="hidden" id="nowPage" value="${nowPage}">
    <input type="hidden" id="sumNowPage" value="${sumNowPage}">
</div>
<script type="text/javascript">
    var page = document.getElementById("page").value;
    var nowPage = document.getElementById("nowPage").value;
    var sumNowPage = document.getElementById("sumNowPage").value;
    function bef() {
        if (nowPage == 1) {
            alert("已经是第一页了")

        } else {
            var num = Number(sumNowPage) - Number(1);
            location.href = "xxxx" + num;
        }
    }
    function nex() {
        if (nowPage == page) {
            alert("已经最后一页了")
        } else {
            var num = Number(sumNowPage) + Number(1);
            location.href = "xxxx" + num;
        }
    }
</script>
</body>
</html>
