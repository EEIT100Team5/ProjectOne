/**
 * 
 */
$(document).ready(function() {
	var socket = new SockJS('/EEIT/messageEndPoint');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function(frame) {
    	var uploaderAccount = $('.accountForMessage').val();
        console.log('Connected: ' + frame);
	    stompClient.subscribe('/notification/subscription/' + uploaderAccount , function(notificationreturn){
//	        addMessage(JSON.parse(notificationreturn.body).account,JSON.parse(notificationreturn.body).receiverAccount,JSON.parse(notificationreturn.body).messageArticle)
	    	alert('OK')
	    });
    });
//	function addNotification(account, receiverAccount, messageArticle){
//		if(account == senderAccount){
//			$('#' + receiverAccount +'1>.box-body').append('<p class="me">'+ account + ": "+ messageArticle +'</p>')
//			
//		}else if(account != senderAccount){
//			$('#' + account +'1>.box-body').append('<p class="him">'+ account + ": "+ messageArticle +'</p>')
//		}
//		updateScroll();
//	}
})