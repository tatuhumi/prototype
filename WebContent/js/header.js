/**
 *
 */
$(function(){
	$('.modal-login-open').click(function(){

		$("body").append('<div id="modal-bg"></div>');
		$("#modal-bg,.modal-main").fadeIn("slow");
		modalResize();

		$(".close-modal").click(function(){
			$(".modal-main,#modal-bg").fadeOut("slow",function(){
				$('#modal-bg').remove() ;
			});
		});

		$(window).resize(modalResize);
		function modalResize(){
			var w = $(window).width();
			var h = $(window).height();
			var cw = $(".modal-main").outerWidth();
			var ch = $(".modal-main").outerHeight();

			$(".modal-main").css({
				"left": ((w - cw)/2) + "px",
				"top": ((h - ch)/2) + "px"
			});
		}
	});
});

