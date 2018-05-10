<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*, java.util.*, java.text.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>xxoo商品頁面</title>

<link
	href="<c:url value='/global/vendor/bootstrap/css/bootstrap.min.css'/> "
	rel="stylesheet">
<link href="<c:url value='/global/css/modern-business.css'/>"
	rel="stylesheet">
<body>
	<!-- Navigation -->
	<%@ include file="/WEB-INF/views/global/fragment/top.jsp"%>
	<!-- Page Content -->
	<div class="container">

		<!-- Portfolio Item Heading -->
		<h1 class="my-4">
			xxxxxxxxxxx<small>xxxxxxxx</small>
		</h1>

		<!-- Portfolio Item Row -->
		<div class="row">
			<div class="card">
				<div class="card-header">購物清單</div>
				<div class="card-body">

					<!-- 每頁不同的內容從這裡開始 -->
					<table id="productTable" class="table table-bordered">
						<thead>
							<tr>
								<th>商品圖</th>
								<th>商品名稱</th>
								<th>數量</th>
								<th>單價</th>
								<th>總價</th>
							</tr>
						</thead>
						<tbody>
						<c:set var="total" value="0.0"/>
							<c:forEach var="xxx" items="${cartlist}">
								<tr>
									<!-- 						<td><img width="150" height="150" -->
									<%-- 							src="${pageContext.request.contextPath}/getImage/Product/${productlist.productSeqNo}"></td> --%>
									<td>${xxx.productbean.productSeqNo}</td>
									<td>${xxx.productbean.proName}</td>
									<td>${xxx.productCount }</td>
									<td>${xxx.productbean.proPrice }</td>
									<td>${xxx.productCount * xxx.productbean.proPrice}</td>
									<c:set var="total" value="${total + xxx.productCount * xxx.productbean.proPrice}"/>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<td>總價</td>
								<td></td>
								<td></td>
								<td></td>
								
								<td><fmt:formatNumber value="${total}" pattern="#,##0.00"/></td>
								
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>