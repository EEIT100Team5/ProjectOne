<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD  HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<title>更新會員資料</title>

<!-- Bootstrap core CSS -->
<link
	href="<c:url value='/global/vendor/bootstrap/css/bootstrap.min.css'/> "
	rel="stylesheet">

<!-- Custom styles for this template -->

</head>

<body>

	<!-- Navigation -->
	<%@ include file="/WEB-INF/views/global/fragment/top.jsp"%>
	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">更新會員資料</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="/EEIT/">Home</a></li>
			<li class="breadcrumb-item active">更新會員資料</li>
		</ol>

		<!-- Contact Form -->
		<!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
		<div class="row">
			<div class="col-lg-8 mb-4">
				<form:form action="memberUpdate" modelAttribute="MemberBean"
					enctype="multipart/form-data" method="post">
					<div class="control-group form-group">
						<div class="controls">
							<label>account</label>
							<p>${LoginOK.account}</p>
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>nickName<span style="color: red">*</span></label> <input
								type="text" class="form-control" id="nickname" value="${Member.nickname}" required="required" />
						</div>
					</div>

					<div class="control-group form-group">
						<div class="controls">
							<label>照片:</label>
							<form:input type="file" class="form-control" id="photo" path="photo" accept="image/*"/>
						</div>
					</div>
					<form:input type="text" path="account" value="${Member.account}" />
					<form:input type="text" path="gender" value="${Member.gender}" />
					
					<input type="submit" class="btn btn-primary" id="sendMessageButton"
						value="修改資料" />
				</form:form>
			</div>

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->
	<!-- Footer -->
	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; IIITube 2018</p>
	</div>
	</footer>
	
	<!-- Contact form JavaScript -->

</body>

</html>