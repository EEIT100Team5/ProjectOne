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
<link
	href="<c:url value='/global/vendor/bootstrap/css/bootstrap.min.css'/> "
	rel="stylesheet">
<link href="<c:url value='/global/css/modern-business.css'/>"
	rel="stylesheet">
<style type="text/css">
.controlpic {
	width: 350px;
	height: 150px;
}
</style>


</head>
<body>
	<!-- Navigation -->
	<%@ include file="/WEB-INF/views/global/fragment/top.jsp"%>
	<header> <%@ include
		file="/WEB-INF/views/marketIndex/ProductHot.jsp"%>


	<a href="sale.do">商品上架</a>
	<br>
	<a href="PersonShopHome">我的商店首頁</a>
	<br><br>
	<a href="goPersonHomePage">登入之後的商店首頁</a>
	<br><br>

	<c:if test="${empty LoginOK}">
		<li class="nav-item">
			<button class="btn btn-success" type="button" data-toggle="modal"
				data-target="#poplogin">
				我要賣東西</a>
			</button>
		</li>
		<li>&nbsp;</li>
	</c:if>
	<c:if test="${not empty LoginOK}">
		<li class="nav-item">
			<button class="btn btn-info" type="button" data-toggle="modal">
				<a href="Pshop.do">我要賣東西</a>
			</button>
		</li>
		<li>&nbsp;</li>
	</c:if>
	
	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Your
			Website 2018</p>
	</div>
	</footer>



</body>
</html>