/**
 * 
 */
$(document).ready(function() {	
		$( ".sidebar-name>button" ).each(function() {
			$(this).attr('name',$(this).attr('name').toUpperCase())
		})
		var videoSeqNo = $('input[name="videoSeqNo"]').val();
		var account = $('#account').val();
// 	 	以下聊天室--------------------------------------------------------------------------- 
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
                selectAllMessage(userAccount,id);
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
			$.getJSON('../messageSystem/ShowRecordingMessage.do',{ 'senderAccount': senderAccount,'receiverAccount': receiverAccount},function(datareturn){
				var docFrag = $(document.createDocumentFragment());
				$.each(datareturn, function (idx,data) {
						var cell1;
						if(data.messageSenderAccount == senderAccount){
							 cell1 = $('<p class="messageTimeMe">'+ data.messageTime.substring(0, 16)+'</p><p class="me">' + data.messageSenderAccount + ": " + data.messageArticle + '</p>')
						}else if(data.messageSenderAccount == receiverAccount){
							 cell1 = $('<p class="messageTimeHim">'+ data.messageTime.substring(0, 16)+'</p><p class="him">'+ data.messageSenderAccount + ": " + data.messageArticle + '</p>')
						}
						docFrag.append(cell1);
				})
				$('#'+receiverAccount+'1').find('.box-body').append(docFrag);
				updateScroll()
			})
		}
		//websocket-------------------------------------------------------------
		var count;
		var wsUri = "ws://localhost:8080/iiiProject/message.do";
		var websocket;
		var storeTimeInterval;
//		websocket = new WebSocket(wsUri);
//		websocket.onopen = function(){
//			var message = {
//					messageSenderAccount : userAccount,
//					messageReceiverAccount : "receiver",
//					messageArticle : "Hello!!!!!!"
//			}
//			websocket.send(JSON.stringify(message));
//		websocket.onmessage = function(e){
//			var splitmessage = e.data.split(',');
//			if(splitmessage[0] == userAccount){
//				$('#'+splitmessage[1]+'1>.box-body').append('<p class="me">'+ splitmessage[0] + ": "+ splitmessage[2]+'</p>')       
//			}else{
//				$('#'+splitmessage[0]+'1>.box-body').append('<p class="him">'+ splitmessage[0] + ": "+ splitmessage[2]+'</p>')   
//			}
//			updateScroll();
//			if($('#'+splitmessage[0]+'1>.box-body').css('display') == 'none'){
//					$('#'+splitmessage[0]+'1>.box-head').css('background-color','#CA82FF')
//					console.log(chatRoomName);
//					console.log(chatRoomAlert);
//					var flag = true;
//					var j;
//						for(j = 0 ; j < 5 ; j ++){
//							if(chatRoomName[j] == splitmessage[0]){
//								flag = false;
//							}	
//						}
//						for(var i = 0; i < 5; i ++){
//							if(chatRoomName[i] == undefined){
//								j = i;
//								break;
//							}
//						}
//						if(flag){
//							chatRoomAlert[j] = setInterval(function (){
//								if($('#'+splitmessage[0]+'1>.box-head').css('background-color') == 'rgb(74, 0, 128)'){//rgb(241,222,255)
//									$('#'+splitmessage[0]+'1>.box-head').css('background-color','#CA82FF')
//								}else{
//									$('#'+splitmessage[0]+'1>.box-head').css('background-color','#4A0080')
//								}
//							},1000);
//							chatRoomName[j] = splitmessage[0];
//							$('#'+splitmessage[0]+'1>.box-head').find('.unreadNumber').css({'display':'inline'})
//						}
//						$('#'+splitmessage[0]+'1>.box-head>span>.alertMessageNumber').css({'display':'inline'})
//						
//						$('#'+splitmessage[0]+'1>.box-head>span>.unreadNumber').text(parseInt($('#'+splitmessage[0]+'1>.box-head>span>.unreadNumber').text())+1);
// 				}
//			}
//		}
//		websocket.onerror = function(e){
//			alert("error = " + e);
//		}
//		websocket.onclose = function(e){
//			alert("close" + e);
//		}
		function send(receiverid,message){
			var messageSend = {
					messageSenderAccount : userAccount,
					messageReceiverAccount : receiverid,
					messageArticle : message
				
			};
			websocket.send(JSON.stringify(messageSend));
		}
		//自動滾動
        function updateScroll(){
	//          var element = $('.box-body')
	//          element.css({'background-color':'red'})
	//          element.scrollTop = element.scrollHeight;
// 	     	 var height = 0;
// 	     	 $('.box-body p').each(function(i, value){
// 	              height += parseInt($(this).height());
// 	          });
	
// 	          height += '';
	
// 	          $('.box-body').animate({scrollTop: height});
        	var d = $('.box-body');
        	d.scrollTop(d.prop("scrollHeight"));
    	 }
		//以上聊天室----------------------------------------------------------------------------------------------------------------------
		var uploaderaccount = $('.uploaderaccount').find('p').text();
		$('.subscription').click(function(){
			var subscriptionStatus = $('.subscription').attr("name");
			if(subscriptionStatus == "subscription"){
				$.ajax({
					type: "POST",
					url: "/EEIT/subscriptionUploader",
					data: {_method : "PUT", account : account, uploaderAccount : uploaderaccount, subscriptionUploaderStatus : subscriptionStatus},
					timeout: 600000,
					success: function (data) {
						$('.subscription').attr("name","nonSubscription");
						$('.subscription').css({
							'-webkit-filter':'grayscale(100%)'
						})
						$('.subscription').text('訂閱')
					},
					error: function (e) {
						console.log("ERROR : ", e);
						alert(e);
					}
				});
			}else if(subscriptionStatus == "nonSubscription"){
				$.ajax({
					type: "POST",
					url: "/EEIT/subscriptionUploader",
					data: {account : account, uploaderAccount : uploaderaccount, subscriptionUploaderStatus : subscriptionStatus},
					timeout: 600000,
					success: function (data) {
						$('.subscription').attr("name","subscription");
						$('.subscription').css({
							'-webkit-filter':'none'
						})
						$('.subscription').html('已訂閱&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-bell"></i>')
					},
					error: function (e) {
						console.log("ERROR : ", e);
						alert(e);
					}
				});
			}
		})
		var videoSeqNo = $('input[name="videoSeqNo"]').val();
//		$.getJSON('../CommentVideo/showComments.do',{ 'videoSeqNo': videoSeqNo},function(datareturn){
//			var docFrag = $(document.createDocumentFragment());
//
//				var allcomments = $('#allComments');
//	           $.each(datareturn, function (idx,data) {
//					
//					 var cell1 = $('<img></img>').addClass("d-flex mr-3 rounded-circle").attr({height:"50px" , width:"50px",src:"/iiiProject/global/GetImage.do?userAccount=" + data.userAccount +"&type=member"}) 
//					 var cell2 = $('<div></div>').addClass("media-body")
//					 
//					 var cell3 = $('<h5></h5>').addClass("mt-0").text(data.userAccount);
//					 var cell7 = $('<span></span>').text(data.commentDate).append($('<span></span>').addClass("hide").text(data.seqNo));
//					 var cell3 = cell3.append(cell7);
//					 var cell4 = cell2.text(data.comments);
//					 var cell8 = $('<p></p>').append(   $('<button></button>').addClass("btn btn-info replyButton").text("回復").append(   $('<i></i>').addClass("fas fa-comment") ));
//					 var cell4 = cell4.append(cell8);
//					 var cell5 = cell4.prepend(cell3);
//					 var cell6 = $('<div></div>').addClass("media mb-4").attr({id:data.seqNo}).append([cell1,cell5]);
//					 docFrag.append(cell6);
//					 var outerseqno= data.seqNo;
//						 $.getJSON('../replyCommentVideo/showReplyComments.do',{ 'commentSeqNo': data.seqNo},function(datareturn){
//							 $.each(datareturn, function (idx,data) {
//								 var upperComment = $('#' + data.commentSeqNo).children('.media-body');
//								 var cell1 = $('<img></img>').addClass("d-flex mr-3 rounded-circle").attr({height:"50px" , width:"50px",src:"/iiiProject/global/GetImage.do?userAccount=" + data.replyCommentsUserAccount +"&type=member"}) 
//								 var cell2 = $('<div></div>').addClass("media-body")
//								 var cell3 = $('<h5></h5>').addClass("mt-0").text(data.replyCommentsUserAccount);
//								 var cell7 = $('<span></span>').text(data.replyCommentsDate).append($('<span></span>').addClass("hide").text(data.seqNo));
//								 var cell3 = cell3.append(cell7);
//								 var cell4 = cell2.text(data.replyComments);
//								 var cell5 = cell4.prepend(cell3);
//								 var cell6 = $('<div></div>').addClass("media mb-4").append([cell1,cell5]);
//								 upperComment.append(cell6);
//							 })
//						 })
//					
//					 
//					 
//	           })
//	           
//	           
//	           
//	           allcomments.prepend(docFrag);
//	           $(".replyButton").click(function(){
//					if($(this).parent('p').children('form').length == 0){
//						var cell1 = $('<textarea></textarea>').addClass("form-control").attr({rows:"3",id:"replyArea"})
//					    var cell2 = $('<div></div>').addClass("form-group")
//					     var cell2 = cell2.append(cell1);
//					    var cell3 = $('<button></button>').addClass("btn btn-primary replySubmit").attr({type:"button"}).text("Submit")
//					     var cell4 = $('<form></form>')
//					     var cell4 = cell4.append([cell2,cell3]);
//					    $(this).after(cell4)
//					}
//				    
//					 $(".replySubmit").click(function(){
//							var thisinsubmit = $(this)
//						 var replywords = $(this).parent('form').find('textarea').val();
//						 var userAccount = $('input[name="userAccount"]').val();
//						 var commentSeqNo =  $(this).parents('.media-body').children('h5').find('.hide').text();
//						 var seqNo = $('').val();
//						 $.getJSON('../replyCommentVideo/ReplyComments.do',{ 'replywords': replywords,'userAccount':userAccount ,'commentSeqNo':commentSeqNo},function(datareturn){
//							 var upperComment = thisinsubmit.parents('.media-body');
//							 var cell1 = $('<img></img>').addClass("d-flex mr-3 rounded-circle").attr({height:"50px" , width:"50px",src:"/iiiProject/global/GetImage.do?userAccount=" + datareturn.replyCommentsUserAccount +"&type=member"}) 
//							 var cell2 = $('<div></div>').addClass("media-body")
//							 var cell3 = $('<h5></h5>').addClass("mt-0").text(datareturn.replyCommentsUserAccount);
//							 var cell7 = $('<span></span>').text(datareturn.replyCommentsDate).append($('<span></span>').addClass("hide").text(datareturn.seqNo));
//							 var cell3 = cell3.append(cell7);
//							 var cell4 = cell2.text(datareturn.replyComments);
//							 var cell5 = cell4.prepend(cell3);
//							 var cell6 = $('<div></div>').addClass("media mb-4").append([cell1,cell5]);
//							 upperComment.append(cell6);
//						 });
//						 $(this).parent('form').find('textarea').val("")
//					 });
//				});
//		})
		$('#commentButton').click(function(){
			var commentArticle = $('#commentArea').val().replace(/\s+/g, "");
			var data = { account: account,videoSeqNo:videoSeqNo ,commentArticle:commentArticle};
			console.log(data)
			alert(data)
			if(commentArticle != ""){
				$.ajax({
					type: "POST",
					url: "/EEIT/CommentVideos",
					contentType : 'application/json; charset=utf-8',
			        dataType: "json",
//			        accepts: "application/json; charset=utf-8",
			        data: JSON.stringify(data),
					timeout: 600000,
					success: function (data) {
						var datareturn = data.message;
						console.log(datareturn)
						var allcomments = $('#allComments');
						var commentTime= new Date(datareturn.commentDate)
						 var cell1 = $('<img></img>').addClass("d-flex mr-3 rounded-circle").attr({height:"50px" , width:"50px",src:"/EEIT/getImage/member/" + datareturn.account}) 
						 var cell2 = $('<div></div>').addClass("media-body")
						 var cell3 = $('<h5></h5>').addClass("mt-0").text(datareturn.account);
						 var cell7 = $('<span></span>').text(commentTime.getFullYear() + '-' + ( commentTime.getMonth() + 1 ) + '-' + commentTime.getDate() + "  " + commentTime.getHours() + ":" + commentTime.getMinutes() + ":" + commentTime.getSeconds()).append($('<span></span>').addClass("hide").text(datareturn.commentVideoSeqNo));
						 var cell3 = cell3.append(cell7);
						 var cell4 = cell2.text(datareturn.commentArticle);
						 var cell8 = $('<p></p>').append(   $('<button></button>').addClass("btn btn-info replyButton").text("回復").append(   $('<i></i>').addClass("fas fa-pencil-alt ") ));
						 var cell4 = cell4.append(cell8);
						 var cell5 = cell4.prepend(cell3);
						 var cell6 = $('<div></div>').addClass("media mb-4").append([cell1,cell5]);
						 allcomments.prepend(cell6);
						 
							$(".replyButton").click(function(){
								if($(this).parent('p').children('form').length == 0){
									    var cell1 = $('<textarea></textarea>').addClass("form-control").attr({rows:"3",id:"replyArea"})
									    var cell2 = $('<div></div>').addClass("form-group")
									     var cell2 = cell2.append(cell1);
									    var cell3 = $('<button></button>').addClass("btn btn-primary replySubmit").attr({type:"button"}).text("Submit")
									     var cell4 = $('<form></form>')
									     var cell4 = cell4.append([cell2,cell3]);
									    $(this).after(cell4)
								}
								 $(".replySubmit").click(function(){
										var thisinsubmit = $(this)
									 var replywords = $(this).parents('form').find('textarea').val();
									 var userAccount = $('input[name="userAccount"]').val();
									 var commentSeqNo =  $(this).parents('.media-body').find('.hide').text();
									 var seqNo = $('').val();
									 $.getJSON('../replyCommentVideo/ReplyComments.do',{ 'replywords': replywords,'userAccount':userAccount ,'commentSeqNo':commentSeqNo},function(datareturn){
										 var upperComment = thisinsubmit.parents('.media-body');
										 var cell1 = $('<img></img>').addClass("d-flex mr-3 rounded-circle").attr({height:"50px" , width:"50px",src:"/iiiProject3/_01_global/getImage?account=" + datareturn.replyCommentsUserAccount +"&type=MEMBER"}) 
										 var cell2 = $('<div></div>').addClass("media-body")
										 var cell3 = $('<h5></h5>').addClass("mt-0").text(datareturn.replyCommentsUserAccount);
										 var cell7 = $('<span></span>').text(datareturn.replyCommentsDate).append($('<span></span>').addClass("hide").text(datareturn.seqNo));
										 var cell3 = cell3.append(cell7);
										 var cell4 = cell2.text(datareturn.replyComments);
										 var cell5 = cell4.prepend(cell3);
										 var cell6 = $('<div></div>').addClass("media mb-4").append([cell1,cell5]);
										 upperComment.append(cell6);
									 });
									 $(this).parents('form').find('textarea').val("");
								 });
							});
					},
					error: function (xhr, status, error) {
						console.log("ERROR : ", e);
						alert(e);
//						var err = eval("(" + xhr.responseText + ")");
//						  alert(err.Message);
					}
				});
			}
			$('#commentArea').val("")
		})
		$(".replyButton").click(function(){
			if($(this).parent('p').children('form').length == 0){
				    var cell1 = $('<textarea></textarea>').addClass("form-control").attr({rows:"3",id:"replyArea"})
				    var cell2 = $('<div></div>').addClass("form-group")
				     var cell2 = cell2.append(cell1);
				    var cell3 = $('<button></button>').addClass("btn btn-primary replySubmit").attr({type:"button"}).text("Submit")
				     var cell4 = $('<form></form>')
				     var cell4 = cell4.append([cell2,cell3]);
				    $(this).after(cell4)
			}
			 $(".replySubmit").click(function(){
					var thisinsubmit = $(this)
				 var replywords = $(this).parents('form').find('textarea').val();
				 var userAccount = $('input[name="userAccount"]').val();
				 var commentSeqNo =  $(this).parents('.media-body').find('.hide').text();
				 var seqNo = $('').val();
				 $.getJSON('../replyCommentVideo/ReplyComments.do',{ 'replywords': replywords,'userAccount':userAccount ,'commentSeqNo':commentSeqNo},function(datareturn){
					 var upperComment = thisinsubmit.parents('.media-body');
					 var cell1 = $('<img></img>').addClass("d-flex mr-3 rounded-circle").attr({height:"50px" , width:"50px",src:"/iiiProject3/_01_global/getImage?account=" + datareturn.replyCommentsUserAccount +"&type=MEMBER"}) 
					 var cell2 = $('<div></div>').addClass("media-body")
					 var cell3 = $('<h5></h5>').addClass("mt-0").text(datareturn.replyCommentsUserAccount);
					 var cell7 = $('<span></span>').text(datareturn.replyCommentsDate).append($('<span></span>').addClass("hide").text(datareturn.seqNo));
					 var cell3 = cell3.append(cell7);
					 var cell4 = cell2.text(datareturn.replyComments);
					 var cell5 = cell4.prepend(cell3);
					 var cell6 = $('<div></div>').addClass("media mb-4").append([cell1,cell5]);
					 upperComment.append(cell6);
				 });
				 $(this).parents('form').find('textarea').val("");
			 });
		});
// 		$(".replyButton").on("click", function(){
// 		    alert("The paragraph was clicked.");
// 		});


//		var dataLikeStart = $('form[name="likeVideo"]').serialize();
//		$.getJSON('../likeUnlikeVideos/GetLikeStatus.do',dataLikeStart,function(datareturn){
//			console.log(datareturn);
//			if(datareturn.likeStatus == 'like'){
//				$('.likeButton').css({
//					
//					'background-image': 'url(images/likefinal.jpg)'
//				})
//			}else if(datareturn.likeStatus == 'unlike'){
//				$('.unlikeButton').css({
//					'background-image': 'url(images/unlikefinal.jpg)'
//				})
//			}
//			
//			$('#likeNumber').text(datareturn.likes);
//			$('#unlikeNumber').text(datareturn.unlikes);
//			
//		})
		
		
		//
		$('.like').click(function() {
			var likeUnlikeStatus = $('input[name="likeUnlikeStatus"]').val();
			if(likeUnlikeStatus == "like"){
				$.ajax({
					type: "POST",
					url: "/EEIT/likeUnlikeVideos",
					data: {_method : "PUT", account : account, videoSeqNo : videoSeqNo, likeUnlikeStatus : "none"},
					timeout: 600000,
					success: function (data) {
						$('.like').addClass('likeButtonNone').removeClass('likeButton');
						$('#likeNumber').text(data.likeNumber)
						$('#unlikeNumber').text(data.unlikeNumber)
						$('input[name="likeUnlikeStatus"]').val("none");
					},
					error: function (e) {
						console.log("ERROR : ", e);
						alert(e);
					}
				});
				
			}else if(likeUnlikeStatus == "unlike" || likeUnlikeStatus == "none" ){
				$.ajax({
					type: "POST",
					url: "/EEIT/likeUnlikeVideos",
					data: {_method : "PUT", account : account,  videoSeqNo : videoSeqNo, likeUnlikeStatus : "like"},
					timeout: 600000,
					success: function (data) {
						$('.like').addClass('likeButton').removeClass('likeButtonNone');
						$('.unlike').addClass('unlikeButtonNone').removeClass('unlikeButton');
						$('#likeNumber').text(data.likeNumber)
						$('#unlikeNumber').text(data.unlikeNumber)
						$('input[name="likeUnlikeStatus"]').val("like");
					},
					error: function (e) {
						console.log("ERROR : ", e);
						alert(e);
					}
				});
			}else if(!likeUnlikeStatus){
				$.ajax({
					type: "POST",
					url: "/EEIT/likeUnlikeVideos",
					data: {account : account,  videoSeqNo : videoSeqNo, likeUnlikeStatus : "like"},
					timeout: 600000,
					success: function (data) {
						$('.like').addClass('likeButton').removeClass('likeButtonNone');
						$('#likeNumber').text(data.likeNumber)
						$('#unlikeNumber').text(data.unlikeNumber)
						$('input[name="likeUnlikeStatus"]').val("like");
					},
					error: function (e) {
						console.log("ERROR : ", e);
						alert(e);
					}
				});
			}
//			var datas = $('form[name="likeVideo"]').serialize();
//			$.getJSON('../likeUnlikeVideos/likeunlikeVideo.do',datas,function(datareturn){
//				$('#likeNumber').text(datareturn.like);
//				$('#unlikeNumber').text(datareturn.unlike);
//				if(datareturn.likeStatus == 'like'){
//					$('.unlikeButton').css({
//						'background-image': 'url(images/unlikefinalgray.jpg)'
//					})
//					$('.likeButton').css({
//						
//						'background-image': 'url(images/likefinal.jpg)'
//					})
//				}else if(datareturn.likeStatus == 'unlike'){
//					$('.likeButton').css({
//						
//						'background-image': 'url(images/likefinalgray.jpg)'
//					})
//					$('.unlikeButton').css({
//						'background-image': 'url(images/unlikefinal.jpg)'
//					})
//				}else if(datareturn.likeStatus == 'none'){
//					$('.unlikeButton').css({
//						'background-image': 'url(images/unlikefinalgray.jpg)'
//							
//					})
//					$('.likeButton').css({
//						'background-image': 'url(images/likefinalgray.jpg)'
//					})
//				}
//				
//
//		    });
		})
		$('.unlike').click(function() {
			var likeUnlikeStatus = $('input[name="likeUnlikeStatus"]').val();
			if(likeUnlikeStatus == "unlike"){
				$.ajax({
					type: "POST",
					url: "/EEIT/likeUnlikeVideos",
					data: {_method : "PUT", account : account, videoSeqNo : videoSeqNo, likeUnlikeStatus : "none"},
					timeout: 600000,
					success: function (data) {
						$('.unlike').addClass('unlikeButtonNone').removeClass('unlikeButton');
						$('#likeNumber').text(data.likeNumber)
						$('#unlikeNumber').text(data.unlikeNumber)
						$('input[name="likeUnlikeStatus"]').val("none");
					},
					error: function (e) {
						console.log("ERROR : ", e);
						alert(e);
					}
				});
				
			}else if(likeUnlikeStatus == "like" || likeUnlikeStatus == "none" ){
				$.ajax({
					type: "POST",
					url: "/EEIT/likeUnlikeVideos",
					data: {_method : "PUT", account : account,  videoSeqNo : videoSeqNo, likeUnlikeStatus : "unlike"},
					timeout: 600000,
					success: function (data) {
						$('.unlike').addClass('unlikeButton').removeClass('unlikeButtonNone');
						$('.like').addClass('likeButtonNone').removeClass('likeButton');
						$('#likeNumber').text(data.likeNumber)
						$('#unlikeNumber').text(data.unlikeNumber)
						$('input[name="likeUnlikeStatus"]').val("unlike");
					},
					error: function (e) {
						console.log("ERROR : ", e);
						alert(e);
					}
				});
			}else if(!likeUnlikeStatus){
				$.ajax({
					type: "POST",
					url: "/EEIT/likeUnlikeVideos",
					data: {account : account,  videoSeqNo : videoSeqNo, likeUnlikeStatus : "unlike"},
					timeout: 600000,
					success: function (data) {
						$('.unlike').addClass('unlikeButton').removeClass('unlikeButtonNone');
						$('#likeNumber').text(data.likeNumber)
						$('#unlikeNumber').text(data.unlikeNumber)
						$('input[name="likeUnlikeStatus"]').val("unlike");
					},
					error: function (e) {
						console.log("ERROR : ", e);
						alert(e);
					}
				});
			}
		})
	})