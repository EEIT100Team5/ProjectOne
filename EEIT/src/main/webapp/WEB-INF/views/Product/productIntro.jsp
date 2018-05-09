<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*, java.util.*, java.text.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>xxoo商品頁面</title>

<link
	href="<c:url value='/global/vendor/bootstrap/css/bootstrap.min.css'/> "
	rel="stylesheet">
<link href="<c:url value='/global/css/modern-business.css'/>"
	rel="stylesheet">
</head>
<body>
	<!-- Navigation -->
	<%@ include file="/WEB-INF/views/global/fragment/top.jsp"%>
	<!-- Page Content -->
	<div class="container">

		<!-- Portfolio Item Heading -->
		<h1 class="my-4">
			${productSaleBean.proName } <small></small>
		</h1>

		<!-- Portfolio Item Row -->
		<div class="row">

			<div class="col-md-8">
				<img class="img-fluid" width="750px" height="500px"
					src="${pageContext.request.contextPath}/getImage/Product/${productSaleBean.productSeqNo}"
					alt="">
			</div>

			<div class="col-md-4">
				<h3 class="my-3">${productSaleBean.proName }</h3>
				<p>${productSaleBean.proDescription }</p>
				<h3 class="my-3">Project Details</h3>
				<ul>
					<li>Lorem Ipsum</li>
					<li>Dolor Sit Amet</li>
					<li>Consectetur</li>
					<li>Adipiscing Elit</li>
				</ul>
				<br><br><br>
				
				
				
				
				<%
				LinkedHashMap<Integer, Integer> counts = new LinkedHashMap<Integer, Integer>();
				counts.put(1, 1);
				counts.put(2, 2);
				counts.put(3, 3);
				counts.put(4, 4);
				counts.put(5, 5);
				%>
				       <form:form action="${pageContext.request.contextPath}/addInCartList/buy/${productSaleBean.productSeqNo}" 
							modelAttribute="ProCartListBean"	enctype="multipart/form-data" method="post">
					   <form:input type="hidden" path="productSeqNo" value="${productSaleBean.productSeqNo}"/>
				選擇數量:<form:select path="productCount">
							<form:options items="${counts}" />
					   </form:select>
				       <form:input type="hidden" path="picSeqNo" value="${productSaleBean.productSeqNo}"/>
				
				
				<input type="submit" class="btn btn-primary" 
						value="直接購買" />
				</form:form>
				
				
				
				
			
				
				
				</div>
			
		</div>
		<!-- /.row -->

		<!-- Related Projects Row -->
		<h3 class="my-4">Related Projects</h3>

		<div class="row">

			<div class="col-md-3 col-sm-6 mb-4">
				<a href="#"> <img class="img-fluid"
					src="http://placehold.it/500x300" alt="">
				</a>
			</div>

			<div class="col-md-3 col-sm-6 mb-4">
				<a href="#"> <img class="img-fluid"
					src="http://placehold.it/500x300" alt="">
				</a>
			</div>

			<div class="col-md-3 col-sm-6 mb-4">
				<a href="#"> <img class="img-fluid"
					src="http://placehold.it/500x300" alt="">
				</a>
			</div>

			<div class="col-md-3 col-sm-6 mb-4">
				<a href="#"> <img class="img-fluid"
					src="http://placehold.it/500x300" alt="">
				</a>
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
	</footer>
	<!-- /.container -->
</body>
</html>