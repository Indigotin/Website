window.addEventListener("resize", windowEvent);

window.onload = function() {
	inCenter();
};

function inCenter() {
	var loginBox = document.getElementById("loginBox");
	loginBox.style.top = (window.innerHeight - loginBox.offsetHeight) * 0.6 + 'px';
	loginBox.style.left = (window.innerWidth - loginBox.offsetWidth) * 0.5 + 'px';
}

function windowEvent() {
	inCenter();
}

function errortips(ids) {
	$("#loginBox").removeClass('shake_effect'); // 重新设置成该样式否则只有第一次有效
	setTimeout(function() {
		$("#loginBox").addClass('shake_effect');
	}, 100);
	for (var i = 0; i < ids.length; i++) {
		console.log(ids[i]);
		$('#' + ids[i]).css({
			border : '2px red solid'
		});
	}
}

function login() {
	var loginName = $('#username').val();
	var password = $('#password').val();
	reset('username');
	reset('password');

	if (loginName == null || loginName == '') {
		errortips(new Array('username'));
		return;
	}else if (password == null || password == '') {
		errortips(new Array('password'));
		return;
	} else {
		$.ajax({
			url : '../checkAccount',
			// type : 'GET',
			data : {
				user_name : loginName,
				password : password
			},
			success : function(result) {
				alert(result);
				if(result == "/login") {

					showTips(result.data, 'tips', "../module/img/tips/error.png");

				} else if (result == 'redirect:showArticle') {
                    localStorage.setItem("AuthCode", result.data);
                    console.log(localStorage.getItem("AuthCode"),'988888888888');
                    window.location.href = "home.jsp";
				}else {
                    localStorage.setItem("AuthCode", result.data);
                    console.log(localStorage.getItem("AuthCode"),'988888888888');
                    window.location.href = "homePage.jsp";
				}
			},
			error : function() {
				showTips('连接后台失败!', 'tips', "../module/img/tips/error.png");
			}
		});
	}
}

function reset(id) {
	$('#' + id).css({
		border : '1px #cecece solid'
	});
}