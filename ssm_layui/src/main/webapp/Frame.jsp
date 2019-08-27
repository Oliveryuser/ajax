<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<link href="layui/css/layui.css" rel="stylesheet">
<script type="text/javascript" src="layui/layui.all.js"></script>
<script src="js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="js/my.js"></script>
<title>Insert title here</title>
<style type="text/css">
body {
	height: 100%;
	width: 100%;
}
.right {
	height: 100%;
	width: 80%;
	position: absolute;
	left: 20%;
	top: 0;
}

.left {
	height: 100%;
	width: 20%;
	position: absolute;
	left: 0;
	top: 0;
}
dd{
	background-color:lightskyblue ;
	color: black;
	
}
.layui-nav-tree .layui-nav-child a{
	color: white;
}
</style>
</head>
<body>
	<script type="text/javascript">
		$(document).ready(function(){
			$(".left ul li").click(function() {
		//判断对象是显示还是隐藏
				if($(this).children(".dl1").is(":hidden")){
			//表示隐藏
				if(!$(this).children(".dl1").is(":animated")) {
				$(this).children(".dl1").animate({
						height: 'show'
					}, 1000).end().siblings().find(".div1").hide(1000);
					//siblings遍历div1的元素
					}
				} else {
			//表示显示
					if(!$(this).children(".dl1").is(":animated")) {
						$(this).children(".dl1").animate({
						height: 'hide'
					}, 1000);
					
			}
		}
	})
	//阻止事件冒泡，子元素不再继承父元素的点击事件
	$('.dl1').click(function(e){
		e.stopPropagation();
	});
});


</script>
	<div class="left">
		<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo"
			style="margin-right: 10px; height: 100%; width: 100%">
			<li class="layui-nav-item li1" >
				<a href="#" >默认展开</a>
				<div class="layui-nav-child dl1">
					<dd>
						<a href="Book/index2.jsp" target="rightframe">Book</a>
					</dd>
					<dd>
						<a href="Type/T_index.jsp" target="rightframe">Type</a>
					</dd>
					<dd>
						<a href="javascript:;">选项三</a>
					</dd>
					<dd>
						<a href="">跳转项</a>
					</dd>
				</div>
			</li>
			<li class="layui-nav-item ">
				<a href="javascript:;" >解决方案</a>
				<div class="layui-nav-child dl1">
					<dd>
						<a href="">移动模块</a>
					</dd>
					<dd>
						<a href="">后台模版</a>
					</dd>
					<dd>
						<a href="">电商平台</a>
					</dd>
				</div>
			</li>
			<li class="layui-nav-item"><a href="">云市场</a></li>
			<li class="layui-nav-item"><a href="">社区</a></li>
		</ul>
	</div>
	<div class="right">
		<iframe src="Book/index2.jsp" name="rightframe" width="100%"
			height="100%"></iframe>
	</div>
</body>
</html>
