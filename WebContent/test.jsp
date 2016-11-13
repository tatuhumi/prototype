<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="js/slick.min.js"></script>
<link rel="stylesheet" href="css/slick-theme.css">
<link rel="stylesheet" href="css/slick.css">
</head>
<body>
<style type="text/css">
h2 {
	margin: 20px 0;
	padding:20px 10px 10px;
	font-size: 18px;
	font-weight: bold;
	border-top:1px #ccc solid;
}
.slider {
	margin: 0 0 50px;
}
.slider img {
	width: 100%;
	height: auto;
}
.single-item {
	max-width: 600px;
	margin: 0 auto 50px;
}
.slick-prev::before, .slick-next::before {
	font-size: 24px;
}
.lazy-item .slick-next,
.thumb-item-nav .slick-next,
.multiple-item .slick-next,
.center-item .slick-next {
	right: 20px;
	z-index: 99;
}
.lazy-item .slick-prev,
.thumb-item-nav .slick-prev,
.multiple-item .slick-prev,
.center-item .slick-prev {
	left: 15px;
	z-index: 100;
}
.single-item .slick-prev::before,
.single-item .slick-next::before {
	color: #666;
}
.slick-dots {
	bottom:-25px;
}
.multiple-item li {
	margin: 0 5px;
}
.thumb-item {
	max-width: 700px;
	margin: 0 auto 5px;
	padding: 0 5px;
}
.thumb-item-nav {
	max-width: 700px;
	margin: 0 auto;
}
.thumb-item-nav li{
	margin: 5px;
}
.lazy-item {
	width: 400px;
	margin: 0 auto 50px;
}
.lazy-item li {
	margin: 0 5px;
}
</style>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-47542229-1', 'auto');
  ga('send', 'pageview');
</script>
<script>
$(function() {
	$('.multiple-item').slick({
		infinite: true,
		dots:true,
		slidesToShow: 6,
		slidesToScroll: 6,
		responsive: [{
			breakpoint: 768,
				settings: {
					slidesToShow: 3,
					slidesToScroll: 3,
			}
		},{
			breakpoint: 480,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 2,
				}
			}
		]
	});

	$('.multiple-item2').slick({
		infinite: true,
		dots:true,
		slidesToShow: 6,
		slidesToScroll: 6,
		responsive: [{
			breakpoint: 768,
				settings: {
					slidesToShow: 3,
					slidesToScroll: 3,
			}
		},{
			breakpoint: 480,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 2,
				}
			}
		]
	});

});
</script>

<h2>複数表示（レスポンシブ）</h2>
	<ul class="slider multiple-item">
		<li><img src="../images/main-bnr/01-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/02-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/03-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/04-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/05-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/06-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/07-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/08-600x300.jpg" alt=""></li>
	</ul>

	<h2>複数表示（レスポンシブ）</h2>
	<ul class="slider multiple-item2">
		<li><img src="../images/main-bnr/09-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/010-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/011-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/012-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/5-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/06-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/07-600x300.jpg" alt=""></li>
		<li><img src="../images/main-bnr/08-600x300.jpg" alt=""></li>
	</ul>



</body>
</html>