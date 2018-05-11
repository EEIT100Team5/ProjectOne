<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*, java.util.*, java.text.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>購物車頁面</title>

<link
	href="<c:url value='/global/vendor/bootstrap/css/bootstrap.min.css'/> "
	rel="stylesheet">
<link href="<c:url value='/global/css/modern-business.css'/>"
	rel="stylesheet">
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

<style>

</style>

</head>
<body>
	<!-- Navigation -->
	<%@ include file="/WEB-INF/views/global/fragment/top.jsp"%>
	<!-- Page Content -->
	<div class="container">

		<!-- Portfolio Item Heading -->
		<h1 class="my-4 account">
			${getMemberBean.account}你好<small></small>
		</h1>

		<!-- Portfolio Item Row -->
		<div class="row">
			<div class="card">
				<div class="card-header">${getMemberBean.account}的購物清單</div>
				<div class="card-body">
<button id="buttonAdd" type="button" class="btn btn-success"><i class="fas fa-cart-plus"></i></button>
					<!-- 每頁不同的內容從這裡開始 -->
					<table id="productTable" class="table table-condensed">
						<thead>
							<tr>
								<th>商品圖</th>
								<th>商品名稱</th>
								<th>數量</th>
								<th>單價</th>
								<th>總價</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:set var="total" value="0.0" />
							<c:forEach var="xxx" items="${cartlist}">
								<tr>
									<td><img width="150px" height="120px"
										src="${pageContext.request.contextPath}/getImage/Product/${xxx.productbean.productSeqNo}"
										alt=""></td>
									<td>${xxx.productbean.proName}</td>
									
									
									<td>${xxx.productCount }</td>
									
									
									
									<td>NT ${xxx.productbean.proPrice }</td>
									<td>NT ${xxx.productCount * xxx.productbean.proPrice}</td>
									<c:set var="total" value="${total + xxx.productCount * xxx.productbean.proPrice}" /> 
									<td><button id="buttonAdd" type="button" class="btn btn-danger"><i class="far fa-trash-alt"></i></button></td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr class="success">
								<td>總價</td>
								<td></td>
								<td></td>
								<td></td>
								<td>NT  <fmt:formatNumber value="${total}" pattern="#,##0" /></td>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
		</div>
	</div>
<script>
	



</script>
	
</body>
</html>