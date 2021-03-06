<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>首頁</title>
<link href="<c:url value='/global/vendor/bootstrap/css/bootstrap.min.css'/> " rel="stylesheet">
<link href="<c:url value='/global/css/modern-business.css'/>" rel="stylesheet">
<link href="<c:url value='/global/css/index.css'/>" rel="stylesheet">
<style> 
.videoTitle {
	width: 100%;
	height: 40px;
	overflow: hidden;
	/*  		border : solid 1px red;  */
}

.videoBlock {
	line-height: 0px;
	margin: 0px -10px;
	/* 		width: 50px; */
	/*  		border : solid 1px red ;  */
}

.videoBlockInner {
	/* 		border: blue solid 1px; */
	/* 		font-size: 7px; */
	/* 		text-align:left; */
	
}

.videoBlock a {
	color: black;
}

.videoBlock a:hover {
	color: black;
	text-decoration: none;
}

.videoSmallWords {
	font-size: 7px;
}
</style>
</head>

<body>

<%@ include file="/WEB-INF/views/global/fragment/top.jsp" %>

	<input value="${LoginOK.account}" class="account" type="hidden">
	<header>
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active" style="background-image: url('http://placehold.it/1900x1080')">
				<iframe width="1950" height="700"
					src="https://www.youtube.com/embed/FhUgjzdCflQ?autoplay=1"
					frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
				<div class="carousel-caption d-none d-md-block">
					<h3>First Slide</h3>
					<p>This is a description for the first slide.</p>
				</div>
			</div>
			<div class="carousel-item" style="background-image: url('http://placehold.it/1900x1080')">
				<iframe width="1950" height="700"
					src="https://www.youtube.com/embed/FhUgjzdCflQ" frameborder="0"
					allow="autoplay; encrypted-media" allowfullscreen></iframe>
				<div class="carousel-caption d-none d-md-block">
					<h3>Second Slide</h3>
					<p>This is a description for the second slide.</p>
				</div>
			</div>
			<div class="carousel-item"
				style="background-image: url('http://placehold.it/1900x1080')">
				<iframe width="1950" height="700"
					src="https://www.youtube.com/embed/FhUgjzdCflQ" frameborder="0"
					allow="autoplay; encrypted-media" allowfullscreen></iframe>
				<div class="carousel-caption d-none d-md-block">
					<h3>Third Slide</h3>
					<p>This is a description for the third slide.</p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev"> 
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
			<span class="sr-only">Previous</span>
		</a> 
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next"> 
			<span class="carousel-control-next-icon" aria-hidden="true"></span> 
			<span class="sr-only">Next</span>
		</a>
	</div>
	</header>

	<div class="container">
		<h1>
		<a href="<c:url value='/hotVideo' />">
			熱門影片
		</a>
		</h1>

		<div class="row">
			<c:forEach var="aVideoBean" items="${hotVideos}">
				<div class="col-lg-2 col-sm-6 portfolio-item videoBlock">
					<div class="card h-100 videoBlockInner">
						<a href="<c:url value='/videoRoom/${aVideoBean.videoSeqNo}' />">
							<img height="130px" width="235px" src='${pageContext.request.contextPath}/getImage/video/${aVideoBean.videoSeqNo}'>
						</a>
						<div class="card-body">
							<h6 class="card-title videoTitle">
								<a href="<c:url value='/videoRoom/${aVideoBean.videoSeqNo}' />"><b>${aVideoBean.videoTitle}</b></a>
								
							</h6>
							
							<a class="uploaderLink"	href="<c:url value='/uploaderHomePage/${aVideoBean.account}' />">
								<p class="videoSmallWords">${aVideoBean.account}</p>
							</a>
							<p class="card-text videoSmallWords">${aVideoBean.videoUploadDate}</p>
							<p class="videoSmallWords">觀看次數:${aVideoBean.videoViews}</p>
							<c:if test="${!empty LoginOK}">
								<div class="watchLater">
									<input type="hidden" value="${aVideoBean.videoSeqNo}" />
									<button type="button" class="btn">
										<i class="fas fa-tags"></i>
									</button>
								</div>
							</c:if>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
		<h1>
		<a href="<c:url value='/newVideo' />">
			最新影片
		</a>
		</h1>

		<div class="row">
			<c:forEach var="aVideoBean" items="${newVideos}">
				<div class="col-lg-2 col-sm-6 portfolio-item videoBlock">
					<div class="card h-100 videoBlockInner">
						<a href="<c:url value='/videoRoom/${aVideoBean.videoSeqNo}' />">
							<img height="130px" width="235px" src='${pageContext.request.contextPath}/getImage/video/${aVideoBean.videoSeqNo}'>
						</a>
						<div class="card-body">
							<h6 class="card-title videoTitle">
								<a href="<c:url value='/videoRoom/${aVideoBean.videoSeqNo}' />"><b>${aVideoBean.videoTitle}</b></a>
							</h6>
							<a class="uploaderLink"
								href="<c:url value='/uploaderHomePage/${aVideoBean.account}' />">
								<p class="videoSmallWords">${aVideoBean.account}</p>
							</a>
							<p class="card-text videoSmallWords">${aVideoBean.videoUploadDate}</p>
							<p class="videoSmallWords">觀看次數:${aVideoBean.videoViews}</p>
							<c:if test="${!empty LoginOK}">
								<div class="watchLater">
									<input type="hidden" value="${aVideoBean.videoSeqNo}" />
									<button type="button" class="btn">
										<i class="fas fa-tags"></i>
									</button>
								</div>
							</c:if>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<c:forEach var="videoTypes" items="${sortedVideos}">
<%-- 			<c:set target="${showVideoBean2}" property="videoType" --%>
<%-- 				value="${videoTypes.videoType }" /> --%>

			<h1>
				<a href="<c:url value='/videoType/${videoTypes[0].videoType}' />">
					<c:out value="${videoTypes[0].videoType}" />
				</a>
			</h1>
			
			<div class="row">
				<c:forEach var="aVideoBean" items="${videoTypes}">
					<div class="col-lg-2 col-sm-6 portfolio-item videoBlock">
						<div class="card h-100 videoBlockInner">
							<a href="<c:url value='/videoRoom/${aVideoBean.videoSeqNo}' />">
								<img height="130px" width="235px" src='${pageContext.request.contextPath}/getImage/video/${aVideoBean.videoSeqNo}'>
							</a>
							<div class="card-body">
								<h6 class="card-title videoTitle">
									<a href="<c:url value='/videoRoom/${aVideoBean.videoSeqNo}' />"><b>${aVideoBean.videoTitle}</b></a>
								</h6>
								<a class="uploaderLink"
									href="<c:url value='/uploaderHomePage/${aVideoBean.account}' />">
									<p class="videoSmallWords">${aVideoBean.account}</p>
								</a>
								<p class="card-text videoSmallWords">${aVideoBean.videoUploadDate}</p>
								<p class="videoSmallWords">觀看次數:${aVideoBean.videoViews}</p>
							<c:if test="${!empty LoginOK}">
								<div class="watchLater">
									<input type="hidden" value="${aVideoBean.videoSeqNo}" />
									<button type="button" class="btn">
										<i class="fas fa-tags"></i>
									</button>
								</div>
							</c:if>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:forEach>
	</div>
	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Your
			Website 2018</p>
	</div>
	</footer>
	
	<%@ include file="/WEB-INF/views/global/fragment/message.jsp" %>
<%-- 	<%@ include file="/WEB-INF/views/global/fragment/notification.jsp" %> --%>
	
	
	
	
	<script src="<c:url value='/global/js/index.js'/> "></script>

</body>

</html>