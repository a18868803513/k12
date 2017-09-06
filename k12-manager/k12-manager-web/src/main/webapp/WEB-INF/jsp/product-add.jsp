<%--
  Created by IntelliJ IDEA.
  User: dwy
  Date: 2017/9/6
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>添加商品</title>
</head>
<body>
<div class="easyui-panel" title="商品详情" data-options="fit:true">

  <form class="itemForm" id="itemAddForm" action="addProduct" name="itemAddForm" method="post" enctype="multipart/form-data">
    <%--<table style="width:100%;">
      <tr>
        <td class="label">商品类目：</td>
        <td>
          <input id="cc" name="grade1" value="-年级-">
          <input id="dd" name="course1" value="-课程-">
         &lt;%&ndash; <input id="cid" name="cid" style="width:200px;">&ndash;%&gt;
        </td>
      </tr>
      <tr>
        <td class="label">商品标题：</td>
        <td>
          <input class="easyui-textbox" type="text" id="name" name="name"
                 data-options="required:true" style="width:100%">
        </td>
      </tr>

      <tr>
        <td class="label">商品价格：</td>
        <td>
          <input class="easyui-numberbox" type="text" id="priceView" name="priceView"
                 data-options="required:true,min:0,precision:2">
          <input type="hidden" name="price">
        </td>
      </tr>
      <tr>
        <td class="label">商品库存：</td>
        <td>
          <input class="easyui-numberbox" type="text" id="num" name="num"
                 data-options="required:true,min:0,precision:0">
        </td>
      </tr>
      <tr>
        <td class="label">条形码：</td>
        <td>
          <input class="easyui-textbox" type="text" id="barcode" name="barcode"
                 data-options="validType:'length[0,30]'">
        </td>
      </tr>
      商品图片：<input type="file" name="file" id="file" size="30" />
      <tr>
        <td colspan="2">
          <!-- 加载编辑器的容器 -->
          <script id="container" name="instrudction" type="text/plain">商品描述</script>
        </td>
      </tr>

    </table>--%>
      <input id="cc" name="grade1" value="-年级-">
      <input id="dd" name="course1" value="-课程-"></br>
      <tr>
        <td class="label">商品标题：</td>
        <td>
          <input class="easyui-textbox" type="text" id="name" name="name"
                 data-options="required:true ,min:0,precision:2">
        </td>
      </tr></br></br>
    <tr>
        <td class="label">商品价格：</td>
        <td>
          <input class="easyui-numberbox" type="text" id="price" name="price"
                 data-options="required:true,min:0,precision:2">

        </td>
      </tr></br></br>

      <tr>
        <td class="label">商品库存：</td>
        <td>
          <input class="easyui-numberbox" type="text" id="num" name="num"
                 data-options="required:true,min:0,precision:0">
        </td>
      </tr></br></br>
      <tr>
        <td class="label">条形码:</td>
        <td>
          <input class="easyui-textbox" type="text" id="barcode" name="barcode"
                 data-options="validType:'length[0,30]'">
        </td>
      </tr></br></br>
      商品描述: <textarea name="instrudction" cols="40" rows="8" id="content"></textarea><br/></br>
      商品图片：<input type="file" name="file" id="file" size="30" />
  <button type="submit">提交</button>
  </form>
</div>


<script>
  /*var ue = UE.getEditor('container',{
    initialFrameWidth: '100%',
    initialFrameHeight: '400'
  });*/

 /* function submitForm(){
    $('#itemAddForm').form('submit', {
      //提交表单动作的URL地址
      url: 'addProduct',
      //在提交之前触发，返回false可以终止提交
      onSubmit: function(){
        return $(this).form('validate');
      },
      //在表单提交成功以后触发
      success:function(data){
        console.log('success');
      }
    });
  }
*/

  $(function() {
    $('#cc').combobox({
      url:'gradeList',
      valueField:'id',
      textField:'grade'
    });
    $('#dd').combobox({
      url: 'courseList',
      valueField: 'id',
      textField: 'course'
    });

  });



</script>
</body>
</html>
