<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Modern Business - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../css/modern-business.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<%@ include file="/WEB-INF/views/global/fragment/top.jsp"%>
	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			Services <small>Subheading</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.html">Home</a></li>
			<li class="breadcrumb-item active">Services</li>
		</ol>

		<!-- Image Header -->
		<img class="img-fluid rounded mb-4" src="http://placehold.it/1200x300"
			alt="">

		<!-- Contact Form -->
		<!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
		<div class="row">
			<div class="col-lg-8 mb-4">
				<h3>商品上架</h3>
				<form:form action="addProduct" modelAttribute="productSaleBean"
					enctype="multipart/form-data" method="post">
					<div class="control-group form-group">
						<div class="controls">
							<label>產品名稱: <span style="color: red">*</span></label>
							<form:input type="text" class="form-control" id="account"
								path="proName" value="" />
							<p class="help-block">${errors.errorIDEmpty}</p>
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>產品名:</label>
							<form:select class="form-control" id="topic" path="memTopic">
								<form:option value="直播">直播</form:option>
								<form:option value="商城">商城</form:option>
								<form:option value="競標">競標</form:option>
								<form:option value="影音">影音</form:option>
							</form:select>
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>產品分類: <span style="color: red">*</span></label>
							<form:input type="text" class="form-control" id="account"
								path="proName" value=""/>
							<p class="help-block">${errors.errorIDEmpty}</p>
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>Name/姓名與職稱<span style="color: red">*</span></label> <input
								type="text" class="form-control" id="nickname"
								value="${LoginOK.nickname}" required="required" />
						</div>
					</div>

					<div class="control-group form-group">
						<div class="controls">
							<label>Title/主旨<span style="color: red">*</span></label>
							<form:input type="text" class="form-control" id="memTitle"
								path="memTitle" value="${param.title}" />
							<p class="help-block">${errors.errortitleeEmpty}</p>
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>Messeage/聯絡訊息<span style="color: red">*</span></label>
							<form:textarea class="form-control" path="memAsk" />${param.report}
							<p class="help-block"></p>
						</div>
					</div>

					<div class="control-group form-group">
						<div class="controls">
							<label>照片:</label>
							<form:input type="file" class="form-control" id="memFileName"
								path="memPicName" />
							<div class="help-block">${errors.errPicture}</div>
						</div>
					</div>
					<!--                    <div class="control-group form-group"> -->
					<!--               <div class="controls"> -->
					<!--                 <label>照片:</label> -->
					<!--                 <input type="file" class="form-control" id="picture" name="picture" > -->
					<!--               </div> -->
					<!--             </div> -->
					<!--             <div id="success"></div> -->
					<!-- For success/fail messages -->
					<input type="submit" class="btn btn-primary" id="sendMessageButton"
						value="submit" />
				</form:form>
			</div>

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2018</p>
		</div>
		<!-- /.container -->
	</footer>

	Bootstrap core JavaScript
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
