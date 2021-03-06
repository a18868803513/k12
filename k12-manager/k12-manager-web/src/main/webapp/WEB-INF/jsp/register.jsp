<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-09-05
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>我的注册页面</title>
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/bootstrap/easyui.css">
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" href="css/jquery.idcode.css">
    <script src="js/jquery-easyui-1.5/jquery.min.js"></script>
    <!-- jquery easyui -->
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easyui.min.js"></script>
    <script src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
    <script src="js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
        var code;

        function createCode() {
            code = "";
            var codeLength = 4; //验证码的长度
            var checkCode = document.getElementById("checkCode");
            var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
                    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
                    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
            for (var i = 0; i < codeLength; i++) {
                var charNum = Math.floor(Math.random() * 52);
                code += codeChars[charNum];
            }
            if (checkCode) {
                checkCode.className = "code";
                checkCode.innerHTML = code;
            }
        }
        function icode(){
            /*var va=$('#t4').val();
             if(code.toUpperCase()==va.toUpperCase){
             return true;
             }*/
            return code;
        }
        $(function () {
            window.onload = createCode();
        })
        function submitForm() {
            $('#sform').form('submit', {
                //提交表单动作的URL地址
                url: 'userRegister',
                //在提交之前触发，返回false可以终止提交
                onSubmit: function () {
                    var i = $(this).form('validate');
                    if (!i) {
                        alert("验证失败!");
                        return i;
                    }
                },
                //在表单提交成功以后触发
                success:function (data){
                    $.messager.show({
                        title:"消息提醒!",
                        msg:data,
                        showType:"show",
                        timeout:2000,
                        style: {
                            right: '',
                            bottom: ''
                        },
                    });
                    /* tiao();
                     function tiao(){
                     var c="注册成功3秒后跳转登录页面!";
                     if(c==(data)){
                     clearTimeout(t);
                     window.location.href="login";
                     }else{
                     alert(data)
                     window.location.reload();
                     }
                     }*/
                }
            });
        }

        function undoForm() {
            window.location.href = "login";
        }
    </script>
    <script>
        $(function(){
            $.extend($.fn.validatebox.defaults.rules, {
                minLength: {
                    validator: function (value, param) {
                        return value.length >= param[0];
                    },
                    message: '请输入至少6六位以上的用户名!'
                }
            });
            $.extend($.fn.validatebox.defaults.rules, {
                minLeng: {
                    validator: function (value, param) {
                        return /^[a-zA-Z]\w{5,17}$/.test(value);
                    },
                    message: '请输入以首字母开头的6-18位密码!'
                }
            });
            $.extend($.fn.validatebox.defaults.rules, {
                equals: {
                    validator: function (value, param) {
                        return value == $(param[0]).val();
                    },
                    message: '密码输入不一致!'
                }
            });
            $.extend($.fn.validatebox.defaults.rules, {
                email: {
                    validator: function (value, param) {
                        return /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/.test(value);
                    },
                    message: "请输入正确的邮箱!"
                },
            });
            $.extend($.fn.validatebox.defaults.rules, {
                phonenum: { //验证手机号
                    validator: function (value, param) {
                        return /^1[3-8]+\d{9}$/.test(value);
                    },
                    message: '请输入正确的手机号码。'
                },
            });
            $.extend($.fn.validatebox.defaults.rules, {
                vcode: { //验证码
                    validator: function (value, param) {
                        return ((icode().toUpperCase())==(value.toUpperCase()));
                    },
                    message: '验证错误!'
                },
            });
        });
    </script>
</head>
<body style="background: url(images/register_back.png)no-repeat;background-size: cover">

<form id="sform" method="post">
    <div align="center" style="background-color: #cccccc;opacity: 0.6;margin-top:3%;width: 50%;height:620px;margin-left: 27%">

        <div style="height: 400px">
            <table><tr style="height: 60px;><td align="center">
                <font size="20px">K12注册</font>
                </td></tr>
                <tr style="height: 60px;">
                    <td>
                        用户名：</td><td><input id="t" type="text" class="easyui-validatebox" name="username" style="width:300px"
                                            data-options="required:true" validType="minLength[6]"><span id="s"></span></td>
                </tr>
                <tr style="height: 60px;">
                    <td>
                        密码：</td><td><input id="t1" type="password" name="password" style="width:300px" class="easyui-validatebox"
                                           data-options="required:true" validType="minLeng[6]">
                </td>
                </tr>
                <tr style="height: 60px;">
                    <td>
                        重复密码：</td><td> <input id="t2" type="password" name="rpassword" style="width:300px" class="easyui-validatebox"
                                              required="required" validType="equals['#t1']">
                </td>
                </tr>
                <tr style="height: 60px;">
                    <td>
                        email:</td><td><input id="t3" type="text" name="email" style="width:300px" class="easyui-validatebox"
                                              data-options="required:true" validType="email">
                </td>
                </tr>
                <tr style="height: 60px;">
                    <td>
                        电话号码：</td><td> <input id="t5" type="text" name="tel" style="width:300px" class="easyui-validatebox"
                                              data-options="required:true" validType="phonenum">
                </td>
                </tr>
                <tr style="height: 60px;">
                    <td>
                        验证码：</td><td> <input id="t4" type="text" style="width:300px" class="easyui-validatebox"
                                             data-options="required:true" validType="vcode">
                </td>
                </tr>

            </table><table>
            <tr style="height: 60px;">
                <td width="50%">
                    <div class="code" id="checkCode" onclick="createCode()"></div>
                </td>
                <td>
                    <input type="button" value="看不清楚" onclick="createCode()">
                </td>
            </tr>
            <tr style="height: 60px;">
                <td>
                    <button onclick="submitForm()" class="easyui-linkbutton" type="button">提交注册</button>
                </td>
                <td>
                    <button onclick="undoForm()" class="easyui-linkbutton" type="button">返回登录</button>
                </td>
            </tr>
        </table>
        </div>
    </div>
</form>
</body>
</html>
