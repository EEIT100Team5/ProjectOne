$(document).ready(function(){
	var account = $('#account').val();
	var othersideaccount = $('.othersideaccount').text();
	
	$('.friend').click(function(){
		var friendStatus = $('.friend').attr("value");
		if(friendStatus == "1"){
			$.ajax({
				type: "POST",
				url: "/EEIT/addfriend",
				data: {_method : "PUT", account : account, othersideaccount : othersideaccount, friendStatus : "nonfriend"},
				timeout: 600000,
				success: function (data) {
					$('.friend').attr("value","0");
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
		}else if(friendStatus == "0"){
			$.ajax({
				type: "POST",
				url: "/EEIT/addfriend",
				data: {account : account, othersideaccount : othersideaccount, friendStatus : "friend"},
				timeout: 600000,
				success: function (data) {
					$('.friend').attr("value","1");
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
