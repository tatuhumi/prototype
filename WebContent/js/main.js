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
		slidesToShow : 4,
		slidesToScroll : 6,
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
		slidesToShow : 4,
		slidesToScroll : 6,
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

});