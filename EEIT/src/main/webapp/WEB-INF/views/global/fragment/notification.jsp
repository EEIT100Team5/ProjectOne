<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value='/global/css/notification.css'/> " rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${!empty LoginOK }">
		<input type="hidden" class="accountForNotification" value="${LoginOK }">
	</c:if>
<script src="<c:url value='/global/js/notification.js'/> "></script>
</body>
</html>