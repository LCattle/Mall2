var can = window.can

var cartboxCommonView = require('./cartlistView.tpl')

var cartStateProgressComp = require('../../../components/box/cart_box_common.component')
var cartboxCommonTemplate = can.stache(cartboxCommonView)

module.exports = can.Control.extend({
    defaults: {}
}, {
    init: function(el, opts) {
        var cartboxCommonFrag = cartboxCommonTemplate({
          message: "酷派前端gogogogo"
        })
        el.html(cartboxCommonFrag)
    }
});
