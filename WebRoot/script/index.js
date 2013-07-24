$(document).ready(function(){
	
	$("#leftTree").tree({
		onClick:function(node){
			addPanel(node);
		}
	});
});

function addPanel(node){
	var isExist = $("#mainTab").tabs('exists',node.text);
	if(isExist){
		$("#mainTab").tabs('select',node.text);
	}else{
		$("#mainTab").tabs('add',{
			title:node.text,
			href:node.attributes.url,
			closable:true
		});
	}
}