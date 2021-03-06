<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>忘記密碼</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/global/fragment/top.jsp"%>

	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">忘記密碼</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}/MemberCenter">會員中心</a></li>
			<li class="breadcrumb-item active">忘記密碼</li>
		</ol>

		<!-- Contact Form -->
		<!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
		<div class="row">
			<div class="col-lg-8 mb-4">
	<p>${message}</p>
	
			</div>
		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->
	<!-- Footer -->
	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; IIITube
			2018</p>
	</div>
	</footer>
</body>
</html>