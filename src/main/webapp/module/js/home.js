var display = false;
$(".setting").click(function()
{
    if(!display)
    {
        $("#slide-out-left").css({"transform":" translateX(0)", "transition-duration": "700ms"});
        $(".settingMenu").after("<div class='mask'></div>");
        $(".mask").animate({opacity: '0.25'}, 700);
        display = true;
    }else
    {
        $("#slide-out-left").css({"transform":" translateX(-100%)", "transition-duration": "700ms"});
        $(".mask").animate({opacity: '0'}, 700);
        setTimeout(function(){$(".mask").remove()}, 700);
        display = false;
    }

    $(document).on('click', '.mask',function()
    {
        $("#slide-out-left").css({"transform":" translateX(-100%)", "transition-duration": "700ms"});
        $(".mask").animate({opacity: '0'}, 700);
        setTimeout(function(){$(".mask").remove()}, 700);
        display = false;
    });
});

function treeOperate(state, element)
{
    var node = $('.' + element);
    var nextNode = node.next();
    if(state =="open")
    {
        nextNode.slideDown(200,'linear');
        node.attr('onclick', "treeOperate('close', '"+element+"');");
    }else
    {
        nextNode.slideUp(200,'linear');
        node.attr('onclick', "treeOperate('open', '" + element + "');");
    }
}

function loadPage(url, location){
	$("#iframe").attr('src', url);
	var a = $(".location");
	$(".location").text(location);
}