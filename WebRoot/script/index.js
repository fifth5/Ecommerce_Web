$(document).ready(function(){
	
	$("#leftTree").tree({
		onClick:function(node){
			addPanel(node);
		}
	});
});

function addPanel(node){
	$("#mainTab").tabs('add',{
		title:node.text,
		href:node.attributes.url,
		closable:true
	});
}