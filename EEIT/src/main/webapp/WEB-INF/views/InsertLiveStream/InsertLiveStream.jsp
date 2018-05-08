<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/global/vendor/bootstrap/css/bootstrap.min.css'/> " rel="stylesheet">
<link href="<c:url value='/global/css/modern-business.css'/>" rel="stylesheet">
<%-- <link href="<c:url value='/InsertLiveStream/css/InsertLiveStream.css'/> " rel="stylesheet"> --%>
</head>
<body>
<%@ include file="/WEB-INF/views/global/fragment/top.jsp" %>
   <h2>新增直播</h2><div class="col-md-2 addBidDiv">
					<button class="btn btn-danger addBidButton " data-toggle="modal" data-target="#addLiveStreamForm">&nbsp;&nbsp;&nbsp;新增直播</button>
					</div>

<!-- 拍賣表格 -->
<div class="modal fade" id="addLiveStreamForm" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">新增直播</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<form:form  id="InsertLiveStream" method="POST" action="${pageContext.request.contextPath}/InsertLiveStream" modelAttribute="InputLiveStreamTimeBean" class = "form-horizontal" enctype="multipart/form-data" >
					<form:input id="liveStreamSeqNo" value="${LiveStream.liveStreamSeqNo}" path="liveStreamSeqNo" type="hidden" />
					LiveStart<form:input id="LiveStart" path="LiveStart" type="text" class="form-control input-sm" placeholder="2018-05-06 17:00:00"/><br>
					LiveEnd<form:input id="LiveEnd" path="LiveEnd" type="text" class="form-control input-sm" placeholder="2018-05-06 18:00:00"/><br>
					streamName<form:input id="streamName" path="streamName" type="text" class="form-control input-sm"/><br>
				 	photo<form:input path="photo" type="file"  accept="image/*"/><br>
				</div>
				

				<div class="modal-footer">
<%-- 				<p>${registerErrorMap.Duplicate} ${registerErrorMap.SQL}</p> --%>
					<button type="button" class="btn btn-secondary"	data-dismiss="modal">取消</button>
					<input type="submit" class="btn btn-primary" value="新增"/>
				</div>
					</form:form>
					
			</div>
		</div>
	</div>
<!--// 拍賣表格 -->

<%-- <script src="<c:url value='/LiveStreamRoom/js/LiveStreamRoom.js'/> "></script> --%>


	<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Your
			Website 2018</p>
	</div>
	</footer>
</body>

</html>