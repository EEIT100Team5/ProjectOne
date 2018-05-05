<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:set var="target" value="${requestScope['javax.servlet.forward.request_uri']}" scope="session" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Navigation</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value='/global/vendor/bootstrap/css/bootstrap.min.css'/> "
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value='/global/css/modern-business.css'/>" rel="stylesheet">

</head>
<body>


	<!-- Navigation -->
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="<c:url value='/' />">III Tube</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
					data-toggle="collapse" data-target="#navbarResponsive"
					aria-controls="navbarResponsive" aria-expanded="false"
					aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><input type="text" class="form-control" placeholder="找點什麼...?"></li>
				<li class="nav-item"><span class="input-group-btn"><button class="btn btn-secondary" type="button">Go!</button></span></li>
				<li><a class="nav-link" href="marketindex">商城</a></li>
				<li class="nav-item"><a class="nav-link" href="services.html">直播間</a></li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownPortfolio" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">影片集錦</a>
					<div class="dropdown-menu dropdown-menu-right"
						 aria-labelledby="navbarDropdownPortfolio">
						<a class="dropdown-item" href="${pageContext.request.contextPath}/videoType">分類影片</a>
						<a class="dropdown-item" href="${pageContext.request.contextPath}/videoManage">影片管理</a> 
						<a class="dropdown-item" href="${pageContext.request.contextPath}/likeUnlikeVideos">喜歡的影片</a>
						<a class="dropdown-item" href="${pageContext.request.contextPath}/watchHistory">瀏覽紀錄</a>
						<a class="dropdown-item" href="${pageContext.request.contextPath}/subscriptionUploader">訂閱上傳者</a>
						<a class="dropdown-item" href="${pageContext.request.contextPath}/watchLaterVideo">稍後觀看</a>
					</div>
				</li>
				<li class="nav-item">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownPortfolio" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">物流管理</a>
					<div class="dropdown-menu dropdown-menu-right"
						 aria-labelledby="navbarDropdownPortfolio">
						<a class="dropdown-item" href="portfolio-1-col.html">1 Column Portfolio</a> 
						<a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a>
						<a class="dropdown-item" href="portfolio-3-col.html">3 Column Portfolio</a>
						<a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
						<a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
					</div></li>
				<li class="nav-item">
	            <a class="nav-link" href="Contact.do">會員中心</a>
	          </li>
					
			<!-- 	登入前的導覽列 -->
			
				<c:if test="${empty LoginOK}">

					<li class="nav-item">
						<button class="btn btn-info" type="button" data-toggle="modal" data-target="#popregister">註冊</button>
					</li>
					<li>&nbsp;</li>
					<li class="nav-item">
						<button class="btn btn-success" type="button" data-toggle="modal" data-target="#poplogin">登入</button>
					</li>
			</ul>
		</div>
	</div>
	</nav>
				</c:if>
				
			<!-- 	登入後的導覽列 -->
			
				<c:if test="${not empty LoginOK}">
	
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle"	href="#" 
					   id="navbarDropdownBlog" data-toggle="dropdown"
					   aria-haspopup="true" aria-expanded="false">${LoginOK.nickname}</a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
						<a class="dropdown-item" href="full-width.html">Full Width Page</a>
						<a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
						<a class="dropdown-item" href="faq.html">FAQ</a> 
						<a class="dropdown-item" href="404.html">404</a> 
						<a class="dropdown-item" href="pricing.html">Pricing Table</a>
					</div></li>
				<li>&nbsp;</li>
				<li class="nav-item"><a href="<c:url value='/logout'/>"><button class="btn btn-success" type="button" >登出</button></a></li>
			</ul>
		</div>
	</div>
	</nav>
	</c:if>

	<!-- 	註冊彈窗開始	 -->

	<div class="modal fade" id="popregister" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">註冊會員</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					

					<form:form  id="register" method="POST" action="/EEIT/register" modelAttribute="MemberBean" class = "form-horizontal" enctype="multipart/form-data" > 
					
					account<form:input id="regAcc" path="account" type="text" class="form-control input-sm"/><br>
					password<form:input id="regPwd" path="password" type="password" class="form-control input-sm"/><br>
					nickname<form:input path="nickname" type="text" class="form-control input-sm"/><br>
					<form:input path="firstname" type="text" class="form-control input-sm" placeholder="first name"/>
					<form:input path="lastname" type="text" class="form-control input-sm " placeholder="last name"/><br>
					gender
					<form:select path="gender">
						<form:option value="男性"/>	
						<form:option value="女性"/>	
						<form:option value="不明"/>	
					</form:select><br>
					email<form:input path="email" type="email" class="form-control input-sm"/><br>
					address<form:input path="address" type="text" class="form-control input-sm"/><br>
					birthday<form:input path="birthday" type="date" class="form-control input-sm"/><br>
					phone<form:input path="phone" type="text" class="form-control input-sm"/><br>
					photo<form:input path="photo" type="file"  accept="image/*"/><br>
					
				</div>
				

				<div class="modal-footer">
				<p>${registerErrorMap.Duplicate} ${registerErrorMap.SQL}</p>
					<button type="button" class="btn btn-secondary"	data-dismiss="modal">取消</button>
					<input type="submit" class="btn btn-primary" value="註冊"/>
				</div>
					</form:form>
			</div>
		</div>
	</div>
	 
	<!-- 	註冊彈窗結束	 -->



	<!--	登入彈窗開始	 -->

	<div class="modal fade" id="poplogin" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">登入系統</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
						<form:form id="login" method="POST" action="/EEIT/login" modelAttribute="MemberBean" class = "form-horizontal" >
						
							<form:input id="logAcc" type="text" path="account" placeholder="account"/>
							<form:input id="logPwd" type="password" path="password" placeholder="password"/>
				</div>
				<div class="modal-footer">
					<p>${ErrorMessageKey.error}</p>
					<button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
					<input type="submit" class="btn btn-primary" value="登入"/>
				</div>
						</form:form>
			</div>
		</div>
	</div>

	<!--	登入彈窗結束 	-->

	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value='/global/vendor/jquery/jquery.min.js'/> "></script>
	<script src="<c:url value='/global/vendor/bootstrap/js/bootstrap.bundle.min.js'/> "></script>

	<script>
		
	</script>


</body>
</html>