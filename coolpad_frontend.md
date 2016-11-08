## CoolPad 商城项目

>前后端分离？
>

- 技术栈
	- Python[Django]
	- html5
	- js[can.js,jQuery]
		- ES6
		- Nodejs
	- css[scss]

### Django
- [Template](https://docs.djangoproject.com/en/1.10/topics/templates/)

---

### 前端

#### 项目结构
``` bash
CPMall
├───product
├───────templates
├──────────product
├──────────────detail.html           # 拟废弃,待沟通
├───templates
├───────base.html
├───────index.html
├───────product
├──────────product_detail.html       # 拟采用

```

#### 样式规范
- 优先使用 class 定义样式（浏览器有缓存）
- 尽量规避样式层级化（避免浏览器样式搜索）
- 使用 scss
- 桌面端样式（响应式）
``` sass
// Large devices (desktops, 992px and up)
@media (min-width: 800px) and (max-width: 1199px) {body { min-width: 800px; } }
// Extra large devices (large desktops, 1200px and up)
@media (min-width: 1200px) { ... }
```
- 移动端样式(flexible.js + rem自适应,以iPhone6为参考，750px/10 = 75px = 1rem)
- 组件规范前缀
	- pd_, 桌面端笔记本类
	- ps_, 桌面端大屏幕类
	- pl_, 高清大屏幕类，暂时未用，e.g. 电视购物
	- m_, 移动端

##### 组件规范（同步UI，sass定义）
- font size
	- pc端：$font-base: 12px
	- 移动端：
		- $font-base-xs: 12px
		- $font-base-sm: 18px
		- $font-base-md: 24px
		- $font-base-lg: 30px
		- $font-heading-xs: 32px
		- $font-heading-sm: 40px
		- $font-heading-md: 48px
		- $font-heading-lg: 56px
- color
	- $c-main: #7384FF
	- $c-main--b: #55A0FF
	- $c-black--3: #333, $c-black--6: #666, $c-black--9: #999,
	- $c-black--cd6: #ccccd6, $c-black--ef3: #eeeef3, $c-black-8ff: #f5f8ff, $c-black--9fc: #f9f9fc
	- $c-black--b4b: #FF4B4B
- button
- radio-button
- input


#### js规范

##### 模块化

##### 组件化

#### Can.js
- [官网](https://canjs.com/)
- [Steal.js](http://stealjs.com/docs/StealJS.quick-start.html)

