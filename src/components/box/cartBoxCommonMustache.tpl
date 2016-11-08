module.exports = `
<section class="cartbox-common">
	<div class="cartbox-common-main">
		<input type="checkbox" name="cartshopping" value="">
		<img src="https://img.alicdn.com/bao/uploaded/i4/2815133273/TB2wcV8bC1I.eBjy0FjXXabfXXa_!!2815133273.jpg_b.jpg">
		<div class="cartbox-common-desc">
			<span class="cartbox-common-title"></span>
			<p>
			{{#each obj.big_banners}}
			<span></span>
			{{/each}}
			</p>
		</div>
		<p>
			{{#each obj.big_banners}}
			<span></span>
			{{/each}}
		</p>
		<div>
			<button></button>
			<span>1</span>
			<button></button>
		</div>
		<p></p>
		<button>X</button>
	</div>
	<aside>
		<div><button></button><span></span><a>了解详情</a></div>
		<div><button></button><span></span><a>了解详情</a></div>
	</aside>
	<aside></aside>
</section>
`