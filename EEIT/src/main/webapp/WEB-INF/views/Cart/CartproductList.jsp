<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="card">
		<div class="card-header">待處理問題回報</div>
		<div class="card-body">

			<!-- 每頁不同的內容從這裡開始 -->
			<table id="productTable" class="table table-bordered">
				<thead>
					<tr>
						<th>商品圖</th>
						<th>商品名稱</th>
						<th>數量</th>
						<th>單價</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="xxx" items="cartlist">
						<tr>
							<!-- 						<td><img width="150" height="150" -->
							<%-- 							src="${pageContext.request.contextPath}/getImage/Product/${productlist.productSeqNo}"></td> --%>
							<td>${xxx.productSeqNo}</td>
							<td></td>
							<td>${xxx.productCount }</td>
							<td>${xxx.productPrice }</td>
						</tr>
					</c:forEach>

				</tbody>
				<tfoot>
				</tfoot>
			</table>
		</div>
	</div>
</body>
</html>