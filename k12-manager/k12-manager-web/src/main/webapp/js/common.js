/*$('#menu .easyui-tree').tree({
 onClick: function(node){

 var tab = $('#tab').tabs('getTab', node.text);
 console.log(tab);

 if(!tab){
 //å¦???æ²¡æ??å°±å??å»?
 $('#tab').tabs('add',{
 title: node.text,
 closable: true
 });

 }else{
 //å¦?????å°±é??ä¸?
 $('#tab').tabs('select', node.text);
 }

 }
 });*/

var ttshop = {
    registerMenuEvent: function () {
        $('#menu .easyui-tree').tree({
            onClick: function (node) {
                console.log(node);
                var href = node.attributes.href;
                $('#tab').tabs('close', 1);
                $('#tab').tabs('add', {
                    title: node.text,
                    href: href,
                    closable: true
                });
            }
        });
    }
};



