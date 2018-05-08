<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/WEB-INF/views/global/fragment/top.jsp" %>

	    <c:forEach var="aLiveStreamBean" items="${AllLiveStream}">
	    <div class="row">
	      <div class="col-md-7">
	        <a href="#">
	          <a href="<c:url value='/LiveStream?LiveNo=${aLiveStreamBean.liveStreamSeqNo}' />">
				<img style="border: solid 1px red" class="img-fluid rounded mb-3 mb-md-0" width="700px" height="100px" src='${pageContext.request.contextPath}/getImage/video/${aVideoBean.videoSeqNo}'>
			  </a>
	        </a>
	      </div>
	      <div class="col-md-5">
	        <h3><a href="<c:url value='/LiveStream?LiveNo=${aLiveStreamBean.liveStreamSeqNo}' />">${aLiveStreamBean.streamName}</a></h3>
	        <p><a class="uploaderLink"
							href="<c:url value='/uploaderHomePage/${aLiveStreamBean.account}' />">${aLiveStreamBean.account}</a></p>
	        <p>觀看次數:${aLiveStreamBean.videoSeqNo}</p>
<%-- 	        <p class="videoDescription">${aVideoBean.videoDescription}</p> --%>
	      </div>
	    </div>
	    <hr>
	</c:forEach>
	
	
	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Your
			Website 2018</p>
	</div>
	</footer>
</body>
</html>