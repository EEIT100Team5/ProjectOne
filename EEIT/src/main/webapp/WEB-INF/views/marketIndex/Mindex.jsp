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
	<%@ include file="/WEB-INF/views/top.jsp"%>
	<header>
	<%@ include file="/WEB-INF/views/marketIndex/ProductHot.jsp"%>
	</header>
	<a href="uploadproduct">新增商品</a>


	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Your
			Website 2018</p>
	</div>
	</footer>
	<script src="<c:url value='/global/vendor/jquery/jquery.min.js'/> "></script>
	<script	src="<c:url value='/global/vendor/bootstrap/js/bootstrap.bundle.min.js'/> "></script>



</body>
</html>