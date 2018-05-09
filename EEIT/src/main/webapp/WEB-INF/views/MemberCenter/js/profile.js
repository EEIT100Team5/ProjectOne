$(document).ready(function(){
	var myaccount = $('#account').val();
	var othersideaccount = $('#othersideaccount').val();
	
	$('.friend').click(function(){
		var friendStatus = $('.friend').attr("value");
		if(friendStatus == 1){
			$.ajax({
				type: "POST",
				url: "/EEIT/addfriend",
				data: {_method : "PUT", account : myaccount, othersideaccount : othersideaccount, friendStatus : 0},
				timeout: 600000,
				success: function (data) {
					$('.friend').attr("value",0);
					$('.friend').css({
						'-webkit-filter':'grayscale(100%)'
					})
					$('.friend').text('加為好友')
				},
				error: function (e) {
					console.log("ERROR : ", e);
					alert(e);
				}
			});
		}else if(friendStatus == 0){
			$.ajax({
				type: "POST",
				url: "/EEIT/addfriend",
				data: {account : myaccount, othersideaccount : othersideaccount, friendStatus : 1},
				timeout: 600000,
				success: function (data) {
					$('.friend').attr("value",1);
					$('.friend').css({
						'-webkit-filter':'none'
					})
					$('.friend').text('取消好友')
				},
				error: function (e) {
					console.log("ERROR : ", e);
					alert(e);
				}
			});
		}
	})
	
	
	
})
