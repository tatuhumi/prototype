/**
 *
 */


$(function(){
	$(".modal-open").click(function(){
		$("body").append('<div id="modal-bg"></div>');
		$("#modal-bg,.modal-main").fadeIn("slow");
		modalResize();

		var index=$('.modal-open').index($(this));

		$('.modal-id').val($('.contactId').eq(index).val());
		$('.modal-contentval').text($('.contentVal').eq(index).text());
		$('.modal-contentName').text($('.contentName').eq(index).text());
		$('.modal-contentMail').text($('.contentMail').eq(index).text());
		$('.modal-contentDate').text($('.contentDate').eq(index).text());
		$('.modal-contentContent').text($('.contentContent').eq(index).text());

		$("#close-modal").click(function(){
			$(".modal-main,#modal-bg").fadeOut("slow",function(){
				$('#modal-bg').remove() ;
			});
		});

		//画面の左上からmodal-mainの横幅・高さを引き、その値を2で割ると画面中央の位置が計算できます
		$(window).resize(modalResize);
		function modalResize(){

			var w = $(window).width();
			var h = $(window).height();

			var cw = $(".modal-main").outerWidth();
			var ch = $(".modal-main").outerHeight();

			//取得した値をcssに追加する
			$(".modal-main").css({
				"left": ((w - cw)/2) + "px",
				"top": ((h - ch)/2) + "px"
			});
		}
	});
});


$(function(){
	$(".modal-open-edit").click(function(){
		$("body").append('<div id="modal-bg"></div>');
		$("#modal-bg,.modal-main-edit").fadeIn("slow");
		modalResize();

		var index=$('.modal-open-edit').index($(this));

		$('.modal-id').val($('.contactId').eq(index).val());
		$('.modal-contentval').text($('.contentVal').eq(index).text());
		$('.modal-contentName').text($('.contentName').eq(index).text());
		$('.modal-contentMail').text($('.contentMail').eq(index).text());
		$('.modal-contentDate').text($('.contentDate').eq(index).text());
		$('.modal-contentContent').text($('.contentContent').eq(index).text());

		$("#close-modal-edit").click(function(){
			$(".modal-main-edit,#modal-bg").fadeOut("slow",function(){
				$('#modal-bg').remove() ;
			});
		});

		//画面の左上からmodal-mainの横幅・高さを引き、その値を2で割ると画面中央の位置が計算できます
		$(window).resize(modalResize);
		function modalResize(){

			var w = $(window).width();
			var h = $(window).height();

			var cw = $(".modal-main-edit").outerWidth();
			var ch = $(".modal-main-edit").outerHeight();

			//取得した値をcssに追加する
			$(".modal-main-edit").css({
				"left": ((w - cw)/2) + "px",
				"top": ((h - ch)/2) + "px"
			});
		}
	});

});





$(function() {
	var page = 0, page_last = 0, line = 10;
	// page      : カレントページ番号
	// page_last : ページ総数
	// line      : 表示行数

	// 起動時の処理。
	(function __construct() {

		// ページ総数を算出。
		page_last = Math.ceil($("#list_body tr").length / line) - 1;

		// ページコントローラにページ番号を挿入。
		for (var i = 0; i <= page_last; i++) {
			$("#page_number").append($("<li></li>").html(i + 1));
		}
	})();

	// 現在のページ番号に応じて、ページコントローラのスタイルを変更する関数。
	function set_ctrl_style() {

		// スタイルの初期化。
		$('#page_number').children().removeClass("current_page");
		$('#page_first, #page_prev, #page_next, #page_last')
		.removeClass("terminal");

		// カレントページのスタイル設定。
		$("#page_number li").each(function() {
			if ($(this).html() - 1 == page)
				$(this).addClass("current_page");
		});

		// 先頭ページ・前ページ・次ページ・末ページ移動ボタンのスタイル設定。
		if (page == 0) {
			$('#page_before li').addClass("terminal");
		} else if (page == page_last) {
			$('#page_after li').addClass("terminal");
		}
	}
	// 行を描画する関数。
	function draw() {
		$('#list_body tr').hide();
		$(
				'#list_body tr:first, #list_body tr:gt(' + page * line
				+ '):lt(' + line + ')').show();
		set_ctrl_style();
	}

	// ページ番号をクリックしたときの処理。
	$("#page_number li").click(function() {
		page = $(this).html() - 1;
		draw();
	});

	// 先頭ページ移動ボタンをクリックしたときの処理。
	$('#page_first').click(function() {
		page = 0;
		draw();
	});

	// 末尾ページ移動ボタンをクリックしたときの処理。
	$('#page_last').click(function() {
		page = page_last;
		draw();
	});

	// 前ページ異動ボタンをクリックしたときの処理。
	$('#page_prev').click(function() {
		if (page > 0)
			page--;
		draw();
	});

	// 次ページ移動ボタンをクリックしたときの処理。
	$('#page_next').click(function() {
		if (page < page_last)
			page++;
		draw();
	});
	draw();
});



