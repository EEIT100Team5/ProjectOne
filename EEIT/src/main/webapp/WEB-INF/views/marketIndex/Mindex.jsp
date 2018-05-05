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
<style type="text/css">

.controlpic{
	width:350px ;
	height:150px ;
}


</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/top.jsp" %>
	<header>
	
	<img height="130px" width="235px" src='${pageContext.request.contextPath}/getImage/product/${aVideoBean.videoSeqNo}'>
	 <img src="<c:url value='/images/03.jpg'/>" style="width:100%;">
	<div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="../images/01.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="../images/02.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="../images/03.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

	</header>
	<a href = "uploadproduct">新增商品</a>
	
<!-- 	<div class="container"> -->
<!-- 		<h1>熱門影片</h1> -->

<!-- 		<div class="row"> -->
<%-- 			<c:forEach var="aVideoBean" items="${hotVideos}"> --%>
<!-- 				<div class="col-lg-2 col-sm-6 portfolio-item videoBlock"> -->
<!-- 					<div class="card h-100 videoBlockInner"> -->
<%-- 						<a href="<c:url value='/videoRoom/${aVideoBean.videoSeqNo}/bob' />"> --%>
<%-- 							<img height="130px" width="235px" src='${pageContext.request.contextPath}/getImage/video/${aVideoBean.videoSeqNo}'> --%>
<!-- 						</a> -->
<!-- 						<div class="card-body"> -->
<!-- 							<h6 class="card-title videoTitle"> -->
<%-- 								<a href="<c:url value='/videoRoom/${aVideoBean.videoSeqNo}' />"><b>${aVideoBean.videoTitle}</b></a> --%>
<!-- 							</h6> -->
<!-- 							<a class="uploaderLink " -->
<%-- 								href="<c:url value='/_18_uploaderRoom/UploaderRoom.do?uploaderAccount=${aVideoBean.account}' />"> --%>
<%-- 								<p class="videoSmallWords">${aVideoBean.account}</p> --%>
<!-- 							</a> -->
<%-- 							<p class="card-text videoSmallWords">${aVideoBean.videoUploadDate}</p> --%>
<%-- 							<p class="videoSmallWords">觀看次數:${aVideoBean.videoViews}</p> --%>
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<%-- 			</c:forEach> --%>

<!-- 		</div> -->
<!-- 		<h1>最新影片</h1> -->

<!-- 		<div class="row"> -->
<%-- 			<c:forEach var="aVideoBean" items="${newVideos}"> --%>
<!-- 				<div class="col-lg-2 col-sm-6 portfolio-item videoBlock"> -->
<!-- 					<div class="card h-100 videoBlockInner"> -->
<%-- 						<a href="<c:url value='/videoRoom/${aVideoBean.videoSeqNo}' />"> --%>
<%-- 							<img height="130px" width="235px" src='${pageContext.request.contextPath}/getImage/video/${aVideoBean.videoSeqNo}'> --%>
<!-- 						</a> -->
<!-- 						<div class="card-body"> -->
<!-- 							<h6 class="card-title videoTitle"> -->
<%-- 								<a href="<c:url value='/videoRoom/${aVideoBean.videoSeqNo}' />"><b>${aVideoBean.videoTitle}</b></a> --%>
<!-- 							</h6> -->
<!-- 							<a class="uploaderLink" -->
<%-- 								href="<c:url value='/_18_uploaderRoom/UploaderRoom.do?uploaderAccount=${aVideoBean.account}' />"> --%>
<%-- 								<p class="videoSmallWords">${aVideoBean.account}</p> --%>
<!-- 							</a> -->
<%-- 							<p class="card-text videoSmallWords">${aVideoBean.videoUploadDate}</p> --%>
<%-- 							<p class="videoSmallWords">觀看次數:${aVideoBean.videoViews}</p> --%>
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<%-- 			</c:forEach> --%>
<!-- 		</div> -->
<%-- 		<c:forEach var="videoTypes" items="${sortedVideos}"> --%>
<%-- 			<c:set target="${showVideoBean2}" property="videoType" --%> 
<%-- 				value="${videoTypes.videoType }" /> --%> 

<%-- 			<h1><c:out value="${videoTypes[0].videoType}" /></h1> --%>
			
<!-- 			<div class="row"> -->
<%-- 				<c:forEach var="aVideoBean" items="${videoTypes}"> --%>
<!-- 					<div class="col-lg-2 col-sm-6 portfolio-item videoBlock"> -->
<!-- 						<div class="card h-100 videoBlockInner"> -->
<%-- 							<a href="<c:url value='/videoRoom/${aVideoBean.videoSeqNo}' />"> --%>
<%-- 								<img height="130px" width="235px" src='${pageContext.request.contextPath}/getImage/video/${aVideoBean.videoSeqNo}'> --%>
<!-- 							</a> -->
<!-- 							<div class="card-body"> -->
<!-- 								<h6 class="card-title videoTitle"> -->
<%-- 									<a href="<c:url value='/videoRoom/${aVideoBean.videoSeqNo}' />"><b>${aVideoBean.videoTitle}</b></a> --%>
<!-- 								</h6> -->
<!-- 								<a class="uploaderLink" -->
<%-- 									href="<c:url value='/_18_uploaderRoom/UploaderRoom.do?uploaderAccount=${aVideoBean.account}' />"> --%>
<%-- 									<p class="videoSmallWords">${aVideoBean.account}</p> --%>
<!-- 								</a> -->
<%-- 								<p class="card-text videoSmallWords">${aVideoBean.videoUploadDate}</p> --%>
<%-- 								<p class="videoSmallWords">觀看次數:${aVideoBean.videoViews}</p> --%>
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<%-- 				</c:forEach> --%>
<!-- 			</div> -->
<%-- 		</c:forEach> --%>
	</div>
	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Your
			Website 2018</p>
	</div>
	</footer>
	<script src="<c:url value='/global/vendor/jquery/jquery.min.js'/> "></script>
	<script src="<c:url value='/global/vendor/bootstrap/js/bootstrap.bundle.min.js'/> "></script>

	
	
</body>
</html>