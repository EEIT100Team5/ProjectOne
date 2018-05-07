form = dialog.find( "form" ).on( "submit", function( event ) {
		event.preventDefault();
		addUser();
	});
	$( ".create-user" ).button().on( "click", function() {
		dialog.dialog( "open" );
	});
	dialoginsert = $( "#insert-dialog-form" ).dialog({
		autoOpen: false,
		height: 800,
		width: 600,
		modal: true,
		buttons: {
			"確認新增": insertvideo,
			"取消": function() {
				dialoginsert.dialog( "close" );
			}
		},
		close: function() {
			form[ 0 ].reset();
//			allFields.removeClass( "ui-state-error" );
		}
	});
	
	
			
	$("#insert-video").button().on( "click", function() {
		dialoginsert.dialog( "open" );
	});
	


