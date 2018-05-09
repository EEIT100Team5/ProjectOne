$(document).ready(function() {	
	
	$('.endLiveStream').click(function(){
		var thisDeleteButton = $(this) 
		var videoSeqNo = thisDeleteButton.parents('.col-md-5').find('input').val();
		$.ajax({
			type: "POST",
			url: "/EndLiveStream",
			data: {_method : "PUT", LiveStreamSeqNo : LiveStreamSeqNo},
			timeout: 600000,
			success: function (data) {

			},
			error: function (e) {
				console.log("ERROR : ", e);
				alert(e);
			}
		});
	})

})