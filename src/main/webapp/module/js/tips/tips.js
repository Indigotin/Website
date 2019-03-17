// var top =  window.innerHeight - 80;
// var left = window.innerWidth - 380;
var top = 0;
var left = 0;

function showTips(message, elementClass, url) {
	var html = '<img class="tipsimg" src="' + url
			+ '"/><div class="message"></div><div class="click"></div>';
	$("." + elementClass).empty();
	$("." + elementClass).removeClass("show");
	$("." + elementClass).removeClass("hidden1");
	$("." + elementClass).removeClass("hidden");
	$("." + elementClass).append(html);
	$(".message").text(message);
	$("." + elementClass).addClass('show');
	$("." + elementClass).css('right', left + 'px');
	$("." + elementClass).css('bottom', top + 'px');
	setTimeout(function() {
		$(".click").addClass('change');
	}, '2000');
	setTimeout(function() {
		$("." + elementClass).addClass('hidden1');
		$("." + elementClass).addClass('hidden');
	}, '6000');
}