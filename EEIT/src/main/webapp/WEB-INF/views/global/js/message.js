/**
 * 
 */



//以下聊天室-------------------------------------------------------------------	
	


$(document).ready(function() {
	var chatRoomAlert = [];
	var chatRoomName = [];
	var senderAccount = $('.accountForMessage').val()
	var count;
    $('.sidebarUserButton').click(function () {
        var right = 220;
        id = $(this).attr('id');
        right = $('div[class="box"]').length * 320 + right;
        if ($('div[id="' + id + '1"]').length == 0) {
            if ($('div[class="box"]').length == 5) {
                right = 220
                var name = $(this).attr('name');
                $('div[name=' + right + ']').remove()
                $('.chatplace').prepend($('<div id = "' + id + '1"><div class="box-head"><span class="receiverAccount"> ' + id + '</span><span><i class="fas fa-exclamation-circle alertMessageNumber"></i><span class="unreadNumber">0</span></span><button><i class="fas fa-times"></i></button></div><div class="box-body"></div><div class="box-message"><input type="text"></div></div>').addClass('box').css({ "right": right + "px" }).attr('name', right))
                right = right + 320;
                count++;
            } else {
                var name = $(this).attr('name');
                $('div[name=' + right + ']').remove()
                $('.chatplace').append($('<div id = "' + id + '1"><div class="box-head"><span class="receiverAccount"> ' + id + '</span><span><i class="fas fa-exclamation-circle alertMessageNumber"></i><span class="unreadNumber">0</span></span><button><i class="fas fa-times"></i></button></div><div class="box-body"></div><div class="box-message"><input type="text"></div></div>').addClass('box').css({ "right": right + "px" }).attr('name', right))
                right = right + 320;
                count++;
            }
            selectAllMessage(id);
        }
    })
    $(document).on('click', '.box-head>button', function () {
        var number = ($(this).parent('div').parent('div').attr('name') - 220) / 320
        $(this).parent('div').parent('div').remove();
        disp($(".box").toArray(), number);
    })
    
    $(document).on('click', '.box-head', function () {
		if($(this).parent('div').children('.box-body').css("display") != "none"){
			$(this).parent('div').children('.box-body').css({"display":"none"});
			$(this).parent('div').children('.box-message').css({"display":"none"});
			$(this).parent('div').css({"height":"30px"});
		}else{
			$(this).parent('div').children('.box-body').css({"display":"block"});
			$(this).parent('div').children('.box-message').css({"display":"block"});
			$(this).parent('div').css({"height":"285px"});
			for(var i = 0; i < 5 ; i ++ ){
				console.log("before : " + chatRoomName[i])
				console.log("before : " + chatRoomAlert[i])
				if(chatRoomName[i] == $(this).children('span:first-child').text().trim()){
					clearInterval(chatRoomAlert[i])
					chatRoomAlert[i] = undefined;
        			chatRoomName[i] = undefined;
        			break;
				}
				console.log("after : " + chatRoomName[i])
				console.log("after : " + chatRoomAlert[i])
				
				
			}
			$(this).find('.alertMessageNumber').css({'display':'none'})
			$(this).find('.unreadNumber').css({'display':'none'})
			$(this).find('.unreadNumber').text('0');
			$(this).parent('div').children('.box-head').css({"background-color":"#4A0080"});
			updateScroll();
		}
    })
    $(document).on('keyup','.box-message>input',function(e){
        if(e.keyCode == 13)
        {
			if($.trim($(this).val())!=""){
				var receiverAccount = $.trim($(this).parents('.box').find('.receiverAccount').text())
				send(senderAccount,receiverAccount,$(this).val());
                $(this).val(" ")
			}
        }
        
    });

    function disp(divs, number) {
        for (var i = number; i < divs.length; i++) {
            console.log("before" + $(divs[i]).attr("name"))
            var boxname = $(divs[i]).attr("name");
            $(divs[i]).attr("name", parseInt(boxname) - 320)

            $(divs[i]).css({ 'right': parseInt(boxname) - 320 })
            console.log("after" + $(divs[i]).attr("name"))
        }
    }		
	function selectAllMessage(receiverAccount){
		$.ajax({
			type: "GET",
			url: "/EEIT/messageSystem",
			data: { 'receiverAccount': receiverAccount},
			timeout: 600000,
			success: function (datareturn) {
				var docFrag = $(document.createDocumentFragment());
				$.each(datareturn.messageBeanList, function (idx,data) {
					var cell1;
					var commentTime = new Date(data.messageDate);
					var time = commentTime.getFullYear() + '-' + ( commentTime.getMonth() + 1 ) + '-' + commentTime.getDate() + "  " + commentTime.getHours() + ":" + commentTime.getMinutes() + ":" + commentTime.getSeconds()
					if(data.account == senderAccount){
						 cell1 = $('<p class="messageTimeMe">'+ time.substring(0, 18)+'</p><p class="me">' + data.account + ": " + data.messageArticle + '</p>')
					}else if(data.account == receiverAccount){
						 cell1 = $('<p class="messageTimeHim">'+ time.substring(0, 18)+'</p><p class="him">'+ data.account + ": " + data.messageArticle + '</p>')
					}
					docFrag.append(cell1);
				})
				$('#'+receiverAccount+'1').find('.box-body').append(docFrag);
				updateScroll()
			},
			error: function (e) {
				console.log("ERROR : ", e);
				alert(e);
			}
		});
	}
	
	//websocket
	var socket = new SockJS('/EEIT/messageEndPoint');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function(frame) {
    	var roomNumber = $('.roomNumber').val();
        console.log('Connected: ' + frame);
        $('.sidebarUserButton').each(function(){
        	var receiverAccount = $(this).attr('id');
        	var senderAccountFistWord = senderAccount.substring(0,1).charCodeAt()
        	var receiverAccountFistWord = receiverAccount.substring(0,1).charCodeAt()
        	var firstAccount;
            var secondAccount; 
        	if(senderAccountFistWord > receiverAccountFistWord ){
        		firstAccount = senderAccount
                secondAccount = receiverAccount
        	}else if(senderAccountFistWord < receiverAccountFistWord){
        		firstAccount = receiverAccount
        		secondAccount = senderAccount
        	}
	        stompClient.subscribe('/message/subscription/' + firstAccount + "/" + secondAccount , function(messagereturn){
	            addMessage(JSON.parse(messagereturn.body).account,JSON.parse(messagereturn.body).receiverAccount,JSON.parse(messagereturn.body).messageArticle)
	        });
//			stompClient.send("/app/messageSystem/"  + firstAccount + "/" + secondAccount , {}, JSON.stringify({ 'messageArticle':'aaaaaaaaaaaaaaaaaaaaaa', 'account':firstAccount, 'receiverAccount':secondAccount}));

        })
    });
    
    function send(senderAccount, receiverAccount, messageArticle){
    	var senderAccountFistWord = senderAccount.substring(0,1).charCodeAt()
    	var receiverAccountFistWord = receiverAccount.substring(0,1).charCodeAt()
    	var firstAccount;
        var secondAccount; 
    	if(senderAccountFistWord > receiverAccountFistWord ){
    		firstAccount = senderAccount
            secondAccount = receiverAccount
    	}else if(senderAccountFistWord < receiverAccountFistWord){
    		firstAccount = receiverAccount
    		secondAccount = senderAccount
    	}
		var roomNumber = $('.roomNumber').val();
		var name = $(this).parents('div').find('.message').val();
		stompClient.send("/app/messageSystem/" + firstAccount + "/" + secondAccount , {}, JSON.stringify({ 'messageArticle':messageArticle, 'account':senderAccount, 'receiverAccount': receiverAccount}));
	}
	
	function addMessage(account, receiverAccount, messageArticle){
		if(account == senderAccount){
			$('#' + receiverAccount +'1>.box-body').append('<p class="me">'+ account + ": "+ messageArticle +'</p>')
			
		}else if(account != senderAccount){
			$('#' + account +'1>.box-body').append('<p class="him">'+ account + ": "+ messageArticle +'</p>')
		}
		updateScroll();
	}
	
	
	function updateScroll(){
		var element = $('.box-body')
		var scrollHeight = element.prop("scrollHeight");
		element.scrollTop(scrollHeight,200);

	}
})
	//以上聊天室-------------------------------------------------------------------