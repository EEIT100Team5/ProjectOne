/**
 * 
 */



//以下聊天室-------------------------------------------------------------------	
	var chatRoomAlert = [];
	var chatRoomName = [];
	var id;
    $('.sidebarUserButton').click(function () {
        var right = 220;
        id = $(this).attr('id');
        right = $('div[class="box"]').length * 320 + right;
        if ($('div[id="' + id + '1"]').length == 0) {
            if ($('div[class="box"]').length == 5) {
                right = 220
                var name = $(this).attr('name');
                $('div[name=' + right + ']').remove()
                $('.chatplace').prepend($('<div id = "' + id + '1"><div class="box-head"><span> ' + id + '</span><span><i class="fas fa-exclamation-circle alertMessageNumber"></i><span class="unreadNumber">0</span></span><button><i class="fas fa-times"></i></button></div><div class="box-body"></div><div class="box-message"><input type="text"></div></div>').addClass('box').css({ "right": right + "px" }).attr('name', right))
                right = right + 320;
                count++;
            } else {
                var name = $(this).attr('name');
                $('div[name=' + right + ']').remove()
                $('.chatplace').append($('<div id = "' + id + '1"><div class="box-head"><span> ' + id + '</span><span><i class="fas fa-exclamation-circle alertMessageNumber"></i><span class="unreadNumber">0</span></span><button><i class="fas fa-times"></i></button></div><div class="box-body"></div><div class="box-message"><input type="text"></div></div>').addClass('box').css({ "right": right + "px" }).attr('name', right))
                right = right + 320;
                count++;
            }
            selectAllMessage(account,id);
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
					send(id,$(this).val());
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
	function selectAllMessage(senderAccount,receiverAccount){
//		$.getJSON('../messageSystem/ShowRecordingMessage.do',{ 'senderAccount': senderAccount,'receiverAccount': receiverAccount},function(datareturn){
//			var docFrag = $(document.createDocumentFragment());
//			$.each(datareturn, function (idx,data) {
//					var cell1;
//					if(data.messageSenderAccount == senderAccount){
//						 cell1 = $('<p class="messageTimeMe">'+ data.messageTime.substring(0, 16)+'</p><p class="me">' + data.messageSenderAccount + ": " + data.messageArticle + '</p>')
//					}else if(data.messageSenderAccount == receiverAccount){
//						 cell1 = $('<p class="messageTimeHim">'+ data.messageTime.substring(0, 16)+'</p><p class="him">'+ data.messageSenderAccount + ": " + data.messageArticle + '</p>')
//					}
//					docFrag.append(cell1);
//			})
//			$('#'+receiverAccount+'1').find('.box-body').append(docFrag);
//			updateScroll()
//		})
	}
	
	
	
	
	//以上聊天室-------------------------------------------------------------------