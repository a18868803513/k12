/*$('#menu .easyui-tree').tree({
 onClick: function(node){

 var tab = $('#tab').tabs('getTab', node.text);
 console.log(tab);

 if(!tab){
 //�???没�??就�??�?
 $('#tab').tabs('add',{
 title: node.text,
 closable: true
 });

 }else{
 //�?????就�??�?
 $('#tab').tabs('select', node.text);
 }

 }
 });*/

var k12 = {

    //��Ӧ�������ϵĶ���
    registerMenuEvent: function () {
        var _this = this;
        $('#menu .easyui-tree').tree({
            onClick: function (node) {
                var href = node.attributes.href;
                _this.addTab(node.text,href);
            }
        });
    },
    //���ѡ�
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





