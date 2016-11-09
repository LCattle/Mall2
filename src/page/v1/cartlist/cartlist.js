
/*require('./cartlist.scss');*/
var CartList = require('./cartlistControl.js')

$(function() {
	new CartList('#render', {
    data: window.cpmall.data
  })
})



