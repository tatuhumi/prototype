/**
 *
 */

$(function(){

	$('#my-Submit-click').click(function(){
		$('#my-Submit').fadeIn();
	});

	$('#my-Submit-close').click(function(){
		$('#my-Submit').fadeOut();
	});

	$('#my-Submit-click').hover(function(){
		$('#my-Submit-click').css('color','red');
	},function(){
		$('#my-Submit-click').css('color','black');
	});

	$('#my-Submit-close').hover(function(){
		$('#my-Submit-close').css('color','red');
	},function(){
		$('#my-Submit-close').css('color','black');
	});


});