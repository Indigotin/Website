var list = [];
var queryParams = {};

$(function() {
	var authCode = localStorage.getItem("AuthCode");
	if (authCode == undefined || authCode == null || authCode == "") {
		showTips("登录超时，请重新登录！！！", 'tips', "module/img/tips/error.png");
		window.parent.location.href = "login.jsp"
	}
	loadDeviceList();
});

function loadDeviceList(){
	$.ajax({
		url : "getAllUsers",
		type : "GET",
		dataType : "json",
		headers : {"AuthCode" : localStorage.getItem("AuthCode")},
		success : function(result) {
			console.log(result, 'ddddddddddddd');
			// if (result.ret == 301) {
			// 	showTips(result.data, 'tips', "module/img/tips/error.png");
			// 	setTimeout(function() {
			// 		window.parent.location.href = "login.jsp";
			// 	}, 5000);
			// 	return;
			// }
			// $.each(result.data, function(i, d) {
			// 	list.push(d);
			// });
			initTable();
		}
	});
}

$(".searchButton").click(function(){
	$.ajax({
		url : "deviceManage/getDevicesByConditionWithPage.do",
		type : "GET",
		dataType : "json",
		data : { 
			deviceName:$("#deviceName").val(),
			deviceType:$("#deviceType").val(),
			channelName:$("#channelName").val()
		},
		headers : {"AuthCode" : localStorage.getItem("AuthCode")},
		success : function(result) {
			if (result.ret == 301) {
				showTips(result.data, 'tips', "module/img/tips/error.png");
				setTimeout(function() {
					window.parent.location.href = "login.jsp";
				}, 5000);
				return;
			}
			list.splice(0,list.length); 
			$.each(result.data, function(i, d) {
				list.push(d);
			});
			$("#table").bootstrapTable('load', list);
		}
	});
	$("#deviceName").val("");
	$("#deviceType").val("");
	$("#channelName").val("");
})

function initTable() {
	$table = $('#table').bootstrapTable({
		data : list, //最终的JSON数据放在这里  
		height : 400, //定义表格的高度
		striped : false, // 隔行变色效果
		pagination : false, //在表格底部显示分页条
		pageSize : 5, //页面数据条数
		pageNumber : 1, //首页页码
		pageList : [ 5, 10, 20 ], //设置可供选择的页面数据条数
		clickToSelect : true, //设置true 将在点击行时，自动选择rediobox 和 checkbox
		cache : false, //禁用 AJAX 数据缓存
		// sortName : 'device_type', //定义排序列
		sortOrder : 'asc', //定义排序方式
		selectItemName : '', //radio or checkbox 的字段名
		singleSelect : false,
			columns : [ {
				checkbox : true,
				// field : 'id'
			}, {
				field : 'user_name', //返回值名称
				title : '用户名', //列名
				align : 'left', //水平居中显示
				valign : 'middle', //垂直居中显示
			}, {
				field : 'privilege', //返回值名称
				title : '角色名', //列名
				align : 'left', //水平居中显示
				valign : 'middle', //垂直居中显示
			}],
	});
}

$(".del").click(function(){
	var data = $("#table").bootstrapTable('getSelections');
	if(data.length == 0){
		showTips("至少选择一条数据", 'tips', "module/img/tips/error.png");
		return;
	}
	var deviceNames = "";
	for(var i = 0; i < data.length; i++){
		deviceNames += data[i].device_name + ",";
	}
	
	deviceNames = deviceNames.substring(0, deviceNames.length-1);
	
	$.ajax({
		url: 'deviceManage/delDevicesByName.do?deviceName=' + deviceNames,
		type: 'DELETE',
		dataType: 'json',
		headers : {"AuthCode" : localStorage.getItem("AuthCode")},
		success:function(result){
			if (result.ret == 301) {
				showTips(result.data, 'tips', "module/img/tips/error.png");
				setTimeout(function() {
					window.parent.location.href = "login.jsp";
				}, 5000);
				return;
			}
			if(result.data == "删除成功"){
				$("tbody .selected").remove();
				showTips(result.data, 'tips', "module/img/tips/success.png");
				return;
			}
			showTips(result.data, 'tips', "module/img/tips/error.png");
		}
	})
})