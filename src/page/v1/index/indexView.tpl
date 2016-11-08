module.exports = `
<div class="cool-header">
    <div class="container clearfix">
        <ul class="headMenu pull-left">
            <li><a href="#">cool1</a></li>
            <li><a href="#">锋尚Max</a></li>
            <li><a href="#">锋尚3</a></li>
            <li><a href="#">全部商品</a></li>
        </ul>
        <div class="pull-right head-cart">
            <a href="/cart/"><i class="material-icons">购物车</i></a>
        </div>
        <div class="pull-right search-box">
            <input type="num" placeholder="请输入要搜索的内容">
            <span class="searchTeam">
                <i class="material-icons">search</i>
            </span>
        </div>
    </div>
</div>
<div class="cool-main">
    <div class="container clearfix">
        <!-- Jssor Slider Begin -->
        <div id="slider1_container" class="jssor-slider-container" style="width: 1140px; height: 462px;">
            <!-- Loading Screen -->
            <div u="loading" class="loading">
                <div class="bg"></div>
                <div class="icon"></div>
            </div>
            <!-- Slides Container -->
            <div u="slides" class="slides" style="width: 1140px; height: 442px;">
                {{#each obj.big_banners}}
                <div><a href="{{ url }}"><img u="image" src2="{{ image }}" /></a></div>
                <div><a href="{{ url }}"><img u="image" src2="{{ image }}" /></a></div>
                {{/each}}
            </div>
            <div u="navigator" class="jssorb05">
                <!-- bullet navigator item prototype -->
                <div u="prototype"><i class="material-icons">fiber_manual_record</i></div>
            </div>
        </div>
        <!-- Jssor Slider End -->
        <!--banner-small Begin-->
        <div class="row banner-small clearfix">
            <div class="col-md-12 list-table">
                <ul class="row hot-item-list col-3 clearfix">
                    {{#each obj.small_banners}}
                    <li class="col-md-4">
                        <div class="li-inner">
                            <a class="item" href="{{ url }}" target="_blank"><img alt="cool" src="{{ image }}"></a>
                        </div>
                    </li>
                    {{/each}}
                </ul>
            </div>
        </div>
        <!--banner-small End-->
        {{#each obj.categories}}
        <div class="row p-start clearfix">
            <div class="col-md-12">
                <span class="category-title">
                    <label>{{ name }}</label>
                </span>
                <a class="category-more" href="#"><span>全部商品</span></a>
            </div>
            <div class="col-md-12 list-table clearfix">
                <ul class="row">
                    {{#each items}}
                    <li class="col-md-3 col-xs-6">
                        <div class="li-inner">
                            <a href="{{ product_url }}">
                                <img src="{{ image }}">
                            </a>
                            <span class="name">{{ name }}</span>
                            <span class="price">￥{{ price }}</span>
                        </div>
                    </li>
                    {{/each}}
                </ul>
            </div>
        </div>
        {{/each}}
    </div>
</div>
`;