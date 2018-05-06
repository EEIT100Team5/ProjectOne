/**
 * 
 */


$(document).ready(function() {	
	var account = 
	$('body > div.container > div > div > div > div > div > button').click(function(){
		var videoSeqNo = $(this).parent('div').find('input').val();
		
		var data = {videoSeqNo : videoSeqNo}
		$.ajax({
			type: "POST",
			url: "/EEIT/watchLaterVideo",
			contentType : 'application/json; charset=utf-8',
	        dataType: "json",
	        accepts: "application/json; charset=utf-8",
			data: JSON.stringify(data),
			timeout: 600000,
			success: function (data) {
				if(data.status == "watchLater"){
					$('body > div.container > div > div > div > div > div > button').addClass('btn-info')
				}else if(data.status == "nonWatchLater"){
					$('body > div.container > div > div > div > div > div > button').removeClass('btn-info')
				}
		
			},
			error: function (e) {
				console.log("ERROR : ", e);
				alert(e);
			}
		});
	})
})