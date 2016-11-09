module.exports = `
<section class="cartbox_common">
	<div class="cartbox_common_main">
		<div class="cartbox_common_chkbox on_check">
			<input class="chkbox" type="checkbox" name="cartshopping" value="">
		</div>
		<img class="cartbox_common_img" src="https://img.alicdn.com/bao/uploaded/i4/2815133273/TB2wcV8bC1I.eBjy0FjXXabfXXa_!!2815133273.jpg_b.jpg">
		<div class="cartbox_common_desc">
			<span class="cartbox_common_title"></span>
			<p>
			{{#each cartBrief.labels}}
			<span class="cartbox_common_label">{{ label }}</span>
			{{/each}}
			</p>
		</div>
		<p>
			<span class="cartbox_common_price">{{ cartBrief.newPrice }}</span>
			{{#if cartBrief.oldPrice}}
			<span class="cartbox_common_price cartbox_common_price__del">{{ cartBrief.oldPrice }}</span>
			{{/if}}
		</p>
		<div>
			<button class="cartbox_common_btn">-</button>
			<span class="cartbox_common_num">{{ cartBrief.num }}</span>
			<button class="cartbox_common_btn">+</button>
		</div>
		<p class="cartbox_common_totalprice">{{ cartBrief.totalPrice }}</p>
		<button class="cartbox_common_btn">X</button>
	</div>
	{{#if cartBrief.asideOne }}
	<aside class="cartbox_common_aside">
		<button>+</button><span>{{ cartBrief.asideOne }}</span><a>了解详情</a>
	</aside>
	{{/if}}
	{{#if cartBrief.asideTwo }}
	<aside>
		<button>+</button><span>{{ cartBrief.asideTwo }}</span><a>了解详情</a>
	</aside>
	{{/if}}
</section>
`