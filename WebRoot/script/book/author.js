var url;
function newAuthor() {
	$('#dlgAuthor').dialog('open').dialog('setTitle', 'New Author');
	$('#authorForm').form('clear');
	url = 'saveAuthor';
}
function editAuthor() {
	var row = $('#dgAuthor').datagrid('getSelected');
	if (row) {
		$('#dlgAuthor').dialog('open').dialog('setTitle', 'Edit Author');
		$('#authorForm').form('load', row);
		url = 'editAuthor?authorId=' + row.authorId;
	}
}
function saveAuthor() {
	$('#authorForm').form('submit', {
		url : url,
		onSubmit : function() {
			return $(this).form('validate');
		},
		success : function(result) {
			if (result.errorMsg == null) {
				$('#dlgAuthor').dialog('close'); // close the dialog
				$('#dgAuthor').datagrid('reload'); // reload the user data
			}
		}
	});
}
function destroyAuthor() {
	var row = $('#dgAuthor').datagrid('getSelected');
	if (row) {
		$.messager.confirm('Confirm',
				'Are you sure you want to destroy this Author?',
				function(r) {
					if (r) {
						$.post('destroyAuthor', {
							authorId : row.authorId
						}, function(result) {
							if (result.errorMsg == null) {
								$('#dgAuthor').datagrid('reload'); // reload the
																// user data
							}
						}, 'json');
					}
				});
	}
}