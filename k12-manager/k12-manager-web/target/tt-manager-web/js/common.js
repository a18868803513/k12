var k12 = {
    registerMenuEvent: function () {
        var _this = this;
        $('#menu .easyui-tree').tree({
            onClick: function (node) {
                var href = node.attributes.href;
                _this.addTab(node.text, href)

            }
        });
    },
    addTab: function (title, href) {
        if ($('#tab').tabs('exists', title)) {
            $('#tab').tabs('select', title)
        } else {
            $('#tab').tabs('add', {
                title: title,
                href: href,
                closable: true
            });
        }
    },
    //¹Ø±ÕÑ¡Ïî¿¨
    closeTab:function(title){
        $('#tab').tabs('close',title);
    }
};



