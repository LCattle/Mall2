
/*require('./index.scss');*/
var Index = require('./indexControl.js')
var indexMustache = require('./indexView.tpl')

$(function() {
	new Index('#render', {
    indexMustache: indexMustache,
    data: window.cpmall.data
  });
  $('.menu-button').click(function (e) {
    e.stopPropagation();
    if ($(this).text() == "list") {
        $(this).text("close")
    } else {
        $(this).text("list")
    }
    $(this).parent().find('.list-box').slideToggle()
  });
});
