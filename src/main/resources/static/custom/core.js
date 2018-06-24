//同步 post 请求
 function async_post(url, dataparam, success) {
 	ajax(url, dataparam, "post", success, 'json', false);
 } 
// 异步ajax提交
 function ajax(url, dataparam, mt, success, dt, async) {
 	_contentLoadTriggered = true;
 	if(dataparam!=undefined && typeof(dataparam) == 'object' ){
 		dataparam = $.param(dataparam);
 	}
 	if(url.indexOf("?")>0){
 		url =url+"&timestamp=" + new Date().getTime();
 	}else{
 		url =url+"?timestamp=" + new Date().getTime();
 	}
 	if(async==undefined) async = true;
 	// ajax
	jQuery.ajax({
		type : mt,
		data : dataparam,
		dataType : dt,
		url : url,
		cache : false,
		async: async, 
		// contentType: false,
		error : function(data, status, e) {
			errorReturn(data, status, e);
		},
		success : function(data){
			
			success(data);
		},
		processData : false
	}); // ajax end
 }
 function loadHtml(data){
	 $('#content').empty();
	 $('#content').html(data);
 }