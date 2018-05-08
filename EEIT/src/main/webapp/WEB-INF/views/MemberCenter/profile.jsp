<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${otherside.nickname}的個人頁面</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/global/fragment/top.jsp"%>


	<p>帳號:${otherside.account}<br></p>>
	暱稱:${otherside.nickname}<br>
	被訂閱數:${otherside.subscription}<br>
	註冊日期:${otherside.registerdate}<br>
	最後登入:${otherside.lastlogin}<br>
	
	<img height="240px" width="240px" src='${pageContext.request.contextPath}/getImage/member/${otherside.account}'>
	
	<c:if test = "${get}">
		<button name="friend" type="button" value="" class="btn btn-danger friendButton friend">
			加為好友&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-bell"></i>
		</button>
	</c:if>
	<c:if test = "${empty subscriptionUploaderStatus}">
		<button name="nonSubscription" type="button" value="" class="btn btn-danger nonfriendButton friend">
			訂閱
		</button>
	</c:if>
	

</body>
</html>