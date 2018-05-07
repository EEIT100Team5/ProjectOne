<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<link
	href="<c:url value='/global/vendor/bootstrap/css/bootstrap.min.css'/> "
	rel="stylesheet">
<link href="<c:url value='/global/css/modern-business.css'/>"
	rel="stylesheet">
<link href="<c:url value='/uploaderHomePage/css/uploaderHomePage.css'/>"
	rel="stylesheet">
<title>個人商店首頁</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/global/fragment/top.jsp"%>

	<div class="container">

		<h1 class="mt-4 mb-3">${LoginOK.nickname}的個人商店首頁
			<small>Subheading</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.html">Home</a></li>
			<li class="breadcrumb-item active">Services</li>
		</ol>
		<c:forEach var="PersonShopBean" items="${personShops}">
			<h3>${PersonShopBean.account}</h3>
			<h3>${PersonShopBean.personShopSeqNo}</h3>
			<img class="img-fluid rounded mb-6"
				src="getImage/PersonShop/${PersonShopBean.personShopSeqNo}"
				alt="" width="1600px">
		</c:forEach>
		<div class="row titleBlock">
			<div class="col-md-2">
				<a class="btn btn-lg btn-secondary btn-block" href="PersonShopHome">商店首頁</a>
			</div>
			<div class="col-md-2">
				<a class="btn btn-lg btn-secondary btn-block" href="#">商品</a>
			</div>
			<div class="col-md-2">
				<a class="btn btn-lg btn-secondary btn-block" href="#">商品列表</a>
			</div>
			<div class="col-md-2">
				<a class="btn btn-lg btn-secondary btn-block" href="#">影片</a>
			</div>
			<div class="col-md-2">
				<a class="btn btn-lg btn-secondary btn-block" href="#">影片列表</a>
			</div>
			<div class="col-md-2">
				<a class="btn btn-lg btn-secondary btn-block" href="#">商店資料</a>
			</div>
		</div>
		<div class="row">

			

		</div>

	</div>
	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Your
			Website 2018</p>
	</div>
	</footer>
</body>
</html>