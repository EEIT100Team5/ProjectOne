<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>${watchVideoBean.videoTitle}</title>

<link href="<c:url value='/global/vendor/bootstrap/css/bootstrap.min.css'/> "
	rel="stylesheet">

<link href="<c:url value='/global/css/modern-business.css'/> " rel="stylesheet">
<link href="<c:url value='/videoRoomdeco/css/videoRoom.css'/> " rel="stylesheet">

</head>

<body>

	

	<div class="container">
		<%@ include file="/WEB-INF/views/global/fragment/top.jsp" %>
		<input type="hidden" name = "account" value= "bob">
		<input type="hidden" name = "videoSeqNo" value= "${video.videoSeqNo}">
		<h1 class="mt-4 mb-3">${video.videoTitle}
			<small>Subheading</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="">Home</a></li>
			<li class="breadcrumb-item active">Portfolio Item</li>
		</ol>
		<div class="row">
			<div class="col-md-9">
				<video class="video" width="1150" height="600" src="${pageContext.request.contextPath}/getVideo/video/${video.videoSeqNo}"
					controls="controls" autoplay poster="${pageContext.request.contextPath}/getImage/video/${video.videoSeqNo}"></video>
				<div class="col-md-12 ">
					<h1 class="lead videoTitleInside">${video.videoTitle}</h1>
					<hr>
					<div class="media mb-4">
<!-- 						<img class="d-flex mr-3 rounded-circle" width="50px" height="50px" -->
<%-- 							src="${pageContext.request.contextPath}/getImage/member/${video.account}" --%>
<!-- 							alt=""> -->
						<div class="media-body videoDetail">
							<h5 class="mt-0 uploaderaccount">
								<a class="uploaderLink"	href="<c:url value='/_18_uploaderRoom/UploaderRoom.do?uploaderAccount=${video.account}' />">
									<p>${video.account}</p>
								</a>
							</h5>
							<div class="likeUnlikeBlock">
								<input type="hidden" value = "${likeUnlikeVideoStatus}" name="likeUnlikeStatus"/>
								<span id="likeNumber">${video.videoLikes}</span> 
								<c:if test="${empty likeUnlikeVideoStatus}">
									<button type="button" value="" class="likeButtonNone like"></button>
								</c:if>
								<c:if test="${likeUnlikeVideoStatus == 'none'}">
									<button type="button" value="" class="likeButtonNone like"></button>
								</c:if>
								<c:if test="${likeUnlikeVideoStatus == 'like'}">
									<button type="button" value="" class="likeButton like"></button>
								</c:if>
								<c:if test="${likeUnlikeVideoStatus == 'unlike'}">
									<button type="button" value="" class="likeButtonNone like"></button>
								</c:if>
								
								<span id="unlikeNumber">${video.videoUnlikes}</span> 
								<c:if test="${empty likeUnlikeVideoStatus}">
									<button type="button" value="" class="unlikeButtonNone unlike"></button>
								</c:if>
								<c:if test="${likeUnlikeVideoStatus == 'none'}">
									<button type="button" value="" class="unlikeButtonNone unlike"></button>
								</c:if>
								<c:if test="${likeUnlikeVideoStatus == 'like'}">
									<button type="button" value="" class="unlikeButtonNone unlike"></button>
								</c:if>
								<c:if test="${likeUnlikeVideoStatus == 'unlike'}">
									<button type="button" value="" class="unlikeButton unlike"></button>
								</c:if>
							</div>
							<p>上傳日期:${video.videoUploadDate}
								<c:if test = "${!empty subscriptionUploaderStatus}">
									<button name="subscription" type="button" value="" class="btn btn-danger subscriptionButton subscription">
										已訂閱&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-bell"></i>
									</button>
								</c:if>
								<c:if test = "${empty subscriptionUploaderStatus}">
									<button name="nonSubscription" type="button" value="" class="btn btn-danger nonSubscriptionButton subscription">
										訂閱
									</button>
								</c:if>
							</p>
							<p>影片觀看次數:${video.videoViews}</p>
						</div>
					</div>
					<hr>
					<p>影片描述:${video.videoDescription}</p>
					<hr>
					<div class="card my-4">
						<h5 class="card-header">Leave a Comment:</h5>
						<div class="card-body">
							<form>
								<div class="form-group">
									<textarea class="form-control" rows="3" id="commentArea"></textarea>
								</div>
								<button type="button" class="btn btn-primary" id="commentButton">Submit</button>
							</form>
						</div>
					</div>
					<div id="allComments"></div>
				</div>
			</div>
			<div class="col-md-3">
				<h1>推薦影片</h1>
				<c:forEach var="uploaderVideos" items="${uploaderVideo}">
					<div class="media mt-4 videoBlock">
						<a href="<c:url value='/videoRoom/${uploaderVideos.videoSeqNo}/bob' />">
							<img class="d-flex mr-3" height="80px" width="170px" src='${pageContext.request.contextPath}/getImage/video/${video.videoSeqNo}'>
						</a>
						<div class="media-body">
							<div class="advicedVideoTitle">
								<h6 class="mt-0">
									<a href="<c:url value='/videoRoom/${uploaderVideos.videoSeqNo}/bob' />">
										<p>${uploaderVideos.videoTitle}</p>
									</a>
								</h6>
							</div>
							<p class="advicedVideoUploaderAccount videoSmallWords">
								<a class="uploaderLink"
									href="<c:url value='/_18_uploaderRoom/UploaderRoom.do?uploaderAccount=${uploaderVideos.account}' />">${uploaderVideos.account}</a>
							</p>
							<p class="videoSmallWords">觀看次數:${uploaderVideos.videoViews}</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">
				Copyright &copy; Your Website 2018
			</p>
		</div>
	</footer>
		<!-- 	以下聊天室--------------------------------------------------------------------------- -->
<!-- 		<div class="chat-sidebar"> -->
<%-- 			<c:forEach var="aSubscriptionUploaderBean" --%>
<%-- 				items="${SubscriptionUploaderBeanList}"> --%>
<!-- 				<div class="sidebar-name"> -->
<!-- 					<button type="button" class="sidebarUserButton" -->
<%-- 						name="${aSubscriptionUploaderBean.uploaderAccount }" --%>
<%-- 						id="${aSubscriptionUploaderBean.uploaderAccount }"> --%>
<!-- 						<img width="30" height="30" -->
<%-- 							src="${pageContext.request.contextPath}/_01_global/getImage?account=${aSubscriptionUploaderBean.uploaderAccount }&type=MEMBER"> --%>
<%-- 						<span>${aSubscriptionUploaderBean.uploaderAccount }</span> --%>

<!-- 					</button> -->

<!-- 				</div> -->
<%-- 			</c:forEach> --%>




<!-- 			<div class="sidebar-name"> -->
<!-- 				<button type="button" class="sidebarUserButton" name="TIM" id="tim"> -->
<!-- 					<img width="30" height="30" src="../images/rufu.jpg"> <span>Tim</span> -->

<!-- 				</button> -->

<!-- 			</div> -->


<!-- 			<div class="sidebar-name"> -->
<!-- 				<button type="button" class="sidebarUserButton" name="TONY" -->
<!-- 					id="tony"> -->
<!-- 					<img width="30" height="30" src="../images/rufu.jpg"> <span>Tony</span> -->
<!-- 				</button> -->

<!-- 			</div> -->
<!-- 			<div class="sidebar-name"> -->
<!-- 				<button type="button" class="sidebarUserButton" name="STEVEN" -->
<!-- 					id="steven"> -->
<!-- 					<img width="30" height="30" src="../images/rufu.jpg"> <span>Steven</span> -->
<!-- 				</button> -->

<!-- 			</div> -->


<!-- 			<div class="sidebar-name"> -->
<!-- 				<button type="button" class="sidebarUserButton" name="KEVIN" -->
<!-- 					id="kevin"> -->
<!-- 					<img width="30" height="30" src="../images/rufu.jpg"> <span>Kevin</span> -->
<!-- 				</button> -->

<!-- 			</div> -->
<!-- 			<div class="sidebar-name"> -->
<!-- 				<button type="button" class="sidebarUserButton" name="MICKY" -->
<!-- 					id="micky"> -->
<!-- 					<img width="30" height="30" src="../images/rufu.jpg"> <span>Micky</span> -->
<!-- 				</button> -->

<!-- 			</div> -->
<!-- 			<div class="sidebar-name"> -->
<!-- 				<button type="button" class="sidebarUserButton" name="BOB" id="bob"> -->
<!-- 					<img width="30" height="30" src="../images/rufu.jpg"> <span>Bob</span> -->
<!-- 				</button> -->

<!-- 			</div> -->

<!-- 		</div> -->
<!--  		<div class="chatplace"> -->
		
		<!-- 	以上聊天室--------------------------------------------------------------------------- -->
	<script src="<c:url value='/global/vendor/jquery/jquery.min.js'/> "></script>
	<script src="<c:url value='/global/vendor/bootstrap/js/bootstrap.bundle.min.js'/> "></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
	<script src="<c:url value='/videoRoomdeco/js/videoRoom.js'/> "></script>
</body>

</html>