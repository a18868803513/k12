/*$('#menu .easyui-tree').tree({
 onClick: function(node){

 var tab = $('#tab').tabs('getTab', node.text);
 console.log(tab);

 if(!tab){
 //濡???娌℃??灏卞??寤?
 $('#tab').tabs('add',{
 title: node.text,
 closable: true
 });

 }else{
 //濡?????灏遍??涓?
 $('#tab').tabs('select', node.text);
 }

 }
 });*/

var k12 = {

    //响应导航树上的动作
    registerMenuEvent: function () {
        var _this = this;
        $('#menu .easyui-tree').tree({
            onClick: function (node) {
                var href = node.attributes.href;
                _this.addTab(node.text,href);
            }
        });
    },
    //添加选项卡
    addTab:function(title,href){
        if($('#tab').tabs('exists',title)){
            $('#tab').tabs('select',title)
        }else{
            $('#tab').tabs('add', {
                title: title,
                href: href,
                closable: true
            });
        }
    }
};





