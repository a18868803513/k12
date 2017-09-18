// user
var user_Boolean = false;
var password_Boolean = false;
var varconfirm_Boolean = false;
var emaile_Boolean = false;
var Mobile_Boolean = false;
$('.reg_user').blur(function(){
  if ((($(".reg_user").val()).length>0)&&(($(".reg_user").val()).length<8)){
    $('.user_hint').html("✔").css("color","green");
    user_Boolean = true;
  }else {
    $('.user_hint').html("×").css("color","red");
    user_Boolean = false;
  }
});
// password
$('.reg_password').blur(function(){
  if (($(".reg_password").val()>0)&&($(".reg_password").val()<200)){
    $('.password_hint').html("✔").css("color","green");
    password_Boolean = true;
  }else {
    $('.password_hint').html("×").css("color","red");
    password_Boolean = false;
  }
});
// click
function bac(){
  location.href="index";
}
function subt(){
  if(($("#nickname").val()!="")&&(($("#sex").val()!=1)||($("#sex").val()!=2))&&($(".reg_password").val()!="")&&($(".sang_Calender").val()!="")&&($("#school").val()!="")&&(($("#s").val()!=1)||($("#s").val()!=5)||($("#s").val()!=2)||($("#s").val()!=3)||($("#s").val()!=4)||($("#s").val()!=6))){

    alert("修改成功,点击确定回到主页!");
    location.href="index";
    return true;
  }else{
    alert("请完善信息！");
    return false;
  }

};
