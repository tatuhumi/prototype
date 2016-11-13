/**
 *
 */
(function(i, s, o, g, r, a, m) {
	i['GoogleAnalyticsObject'] = r;
	i[r] = i[r] || function() {
		(i[r].q = i[r].q || []).push(arguments)
	}, i[r].l = 1 * new Date();
	a = s.createElement(o), m = s.getElementsByTagName(o)[0];
	a.async = 1;
	a.src = g;
	m.parentNode.insertBefore(a, m)
})(window, document, 'script',
		'//www.google-analytics.com/analytics.js', 'ga');

ga('create', 'UA-47542229-1', 'auto');
ga('send', 'pageview');

$(function() {
	$('.multiple-item').slick({
		infinite : true,
		dots : true,
		slidesToShow : 5,
		slidesToScroll : 2,
		responsive : [ {
			breakpoint : 768,
			settings : {
				slidesToShow : 3,
				slidesToScroll : 3,
			}
		}, {
			breakpoint : 480,
			settings : {
				slidesToShow : 2,
				slidesToScroll : 2,
			}
		} ]
	});

	$('.multiple-item2').slick({
		infinite : true,
		dots : true,
		slidesToShow : 5,
		slidesToScroll : 2,
		responsive : [ {
			breakpoint : 768,
			settings : {
				slidesToShow : 3,
				slidesToScroll : 3,
			}
		}, {
			breakpoint : 480,
			settings : {
				slidesToShow : 2,
				slidesToScroll : 2,
			}
		} ]
	});

	$('.multiple-item3').slick({
		infinite : true,
		dots : true,
		slidesToShow : 2,
		slidesToScroll : 1,
		responsive : [ {
			breakpoint : 768,
			settings : {
				slidesToShow : 3,
				slidesToScroll : 3,
			}
		}, {
			breakpoint : 480,
			settings : {
				slidesToShow : 2,
				slidesToScroll : 2,
			}
		} ]
	});



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