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
<link href="<c:url value='/LiveStreamRoom/css/LiveStreamRoom.css'/> " rel="stylesheet">
</head>
<body>
<p>直播主:${sb.account}</p>
<%-- <p>${LiveStream.liveStreamSeqNo}</p> --%>

<%@ include file="/WEB-INF/views/global/fragment/top.jsp" %>
 <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
       
      <h1 class="mt-4 mb-3">
      ${sb.account}  
        <small>的直播間</small>
        <small>開始時間:${sb.liveStart}</small>
<%-- 		<small>結束時間:${sb.liveEnd}</small> --%> 
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="<c:url value='/' />">首頁</a>
        </li>
        <li class="breadcrumb-item active">${sb.account}</li>
      </ol>

      <!-- Intro Content -->
      <div class="row">
        <div class="col-lg-6">
<!--         <iframe width="750" height="450" src="https://www.youtube.com/embed/Rwon5jM2-44?list=RDRwon5jM2-44" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe> -->
<iframe width="750" height="450" src="https://www.youtube.com/embed/${sb.liveStreamPath}?autoplay=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen ></iframe> 
                <h2>${sb.streamName}</h2>
        </div>
        <div class="col-lg-6">
          <h2>About Modern Business</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe, magni, aperiam vitae illum voluptatum aut sequi impedit non velit ab ea pariatur sint quidem corporis eveniet. Odit, temporibus reprehenderit dolorum!</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et, consequuntur, modi mollitia corporis ipsa voluptate corrupti eum ratione ex ea praesentium quibusdam? Aut, in eum facere corrupti necessitatibus perspiciatis quis?</p>
          
        </div>

      </div>
      <!-- /.row -->

      <!-- Team Members -->

      <h2>叫價</h2><div class="col-md-2 addBidDiv">
					<button class="btn btn-danger addBidButton loginCheck" data-toggle="modal" data-target="#addBidForm">&nbsp;&nbsp;&nbsp;叫價</button>
					</div>	
			      <c:if test="${!empty LoginOK}">			
		</c:if>


			  <c:if test="${LoginOK.account == sb.account}">		
			  
			<button type="button" value="${sb.liveStreamSeqNo}" class="btn btn-danger deleteBlock">
           		關閉直播
            </button>
			</c:if>

      <div class="row">
        <div class="col-lg-4 mb-4">
          <div class="card h-100 text-center">
            <img class="card-img-top" src="http://placehold.it/750x450" alt="">
            <div class="card-body">
              <h4 class="card-title">Team Member</h4>
              <h6 class="card-subtitle mb-2 text-muted">Position</h6>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>
            </div>
            <div class="card-footer">
              <a href="#">name@example.com</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100 text-center">
            <img class="card-img-top" src="http://placehold.it/750x450" alt="">
            <div class="card-body">
              <h4 class="card-title">Team Member</h4>
              <h6 class="card-subtitle mb-2 text-muted">Position</h6>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>
            </div>
            <div class="card-footer">
              <a href="#">name@example.com</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100 text-center">
            <img class="card-img-top" src="http://placehold.it/750x450" alt="">
            <div class="card-body">
              <h4 class="card-title">Team Member</h4>
              <h6 class="card-subtitle mb-2 text-muted">Position</h6>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>
            </div>
            <div class="card-footer">
              <a href="#">name@example.com</a>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->

      <!-- Our Customers -->
      <h2>賣家其他熱門商品</h2>
      <div class="row">
        <div class="col-lg-2 col-sm-4 mb-4">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-lg-2 col-sm-4 mb-4">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-lg-2 col-sm-4 mb-4">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-lg-2 col-sm-4 mb-4">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-lg-2 col-sm-4 mb-4">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-lg-2 col-sm-4 mb-4">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </div>
      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>
    


<!-- 叫價表格 -->
<div class="modal fade" id="addBidForm" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">叫價</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					

					<form:form  id="Bid" method="POST" action="${pageContext.request.contextPath}/Bid" modelAttribute="BidBean" class = "form-horizontal" enctype="multipart/form-data" > 
					
<%-- 					bidTime<form:input id="regAcc" path="bidTime" type="text" class="form-control input-sm"/><br> --%>
					輸入價格<form:input id="bidPrice" path="bidPrice" type="text" class="form-control input-sm"/><br>
		
					
				</div>
				

				<div class="modal-footer">
				<p>${registerErrorMap.Duplicate} ${registerErrorMap.SQL}</p>
					<button type="button" class="btn btn-secondary"	data-dismiss="modal">取消</button>
					<input type="submit" class="btn btn-primary" value="註冊"/>
				</div>
					</form:form>
			</div>
		</div>
	</div>
<!--// 叫價表格 -->
<%-- 	<script src="<c:url value='/global/vendor/jquery/jquery.min.js'/> "></script> --%>
<%-- 	<script src="<c:url value='/global/vendor/bootstrap/js/bootstrap.bundle.min.js'/> "></script> --%>
	<script src="<c:url value='/LiveStreamRoom/js/LiveStreamRoom.js'/> "></script>
</body>
</html>