/**
 *
 */
$(function() {
		$('.slider-nav').slick({
			infinite : true,
			arrows:true,
			dots : false,
			//オートプレイの有/無
			autoplay:true,
			//スライド切り替わり時間(ms)1000bunnno 1byou
			autoplaySpeed:9000,
			//いくつスライドが見えている状態にするか
			slidesToShow : 6,
			//スライドする数
			slidesToScroll : 1,
			//ドラッグの有り無し
			draggable:true,
			swipe:true,
		});
});