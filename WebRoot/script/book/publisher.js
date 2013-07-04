var url;
function newPublisher() {
	$('#dlg').dialog('open').dialog('setTitle', 'New Publisher');
	$('#publisherForm').form('clear');
	url = 'savePublisher';
}
function editPublisher() {
	var row = $('#dg').datagrid('getSelected');
	if (row) {
		$('#dlg').dialog('open').dialog('setTitle', 'Edit Publisher');
		$('#publisherForm').form('load', row);
		url = 'editPublisher?publisherId=' + row.publisherId;
	}
}
function savePublisher() {
	$('#publisherForm').form('submit', {
		url : url,
		onSubmit : function() {
			return $(this).form('validate');
		},
		success : function(result) {
			if (result.errorMsg == null) {
				$('#dlg').dialog('close'); // close the dialog
				$('#dg').datagrid('reload'); // reload the user data
			}
		}
	});
}
function destroyPublisher() {
	var row = $('#dg').datagrid('getSelected');
	if (row) {
		$.messager.confirm('Confirm',
				'Are you sure you want to destroy this Publisher?',
				function(r) {
					if (r) {
						$.post('destroyPublisher', {
							publisherId : row.publisherId
						}, function(result) {
							if (result.errorMsg == null) {
								$('#dg').datagrid('reload'); // reload the
																// user data
							}
						}, 'json');
					}
				});
	}
}