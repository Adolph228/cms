function topicList(url){	
	ajax(url, {}, 'get', loadHtml, 'html', true);
}