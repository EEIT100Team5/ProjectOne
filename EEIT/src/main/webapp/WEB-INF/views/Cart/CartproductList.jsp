<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<thead>
		<tr>
			<th>商品圖</th>
			<th>商品名稱</th>
			<th>數量</th>
			<th>單價</th>
			<th>功能</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="anQABean" items="${MapKey}">
			<tr>
				<td><img width="150" height="150" src="getImage/Cartlist">
				<a href="../contactlistdetail.do?quesnum=${anQABean.memberQuesNum}">${anQABean.memberQuesNum}</a></td>
				<td>${anQABean.memTopic }</td>
				<td>${anQABean.memId }</td>
				<td>${anQABean.memName }</td>
				<td>${anQABean.memMail }</td>
				<td>${anQABean.memTitle }</td>
				<td>${anQABean.memAsk }</td>
			</tr>
		</c:forEach>

	</tbody>

</body>
</html>