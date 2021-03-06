<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/global/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='/global/css/modern-business.css'/>" rel="stylesheet">
<link href="<c:url value='/LiveStreamRoom/css/LiveStreamRoom.css'/>" rel="stylesheet">
<style>

  
.card-bodycontroller{ 
 	width: 100%; 
	height: 407px;  
	background-color: white; 
 	overflow: auto; 
 	list-style: none; 
 	margin: 0; 
/* 	padding: 0; */
  -webkit-box-flex: 1;
  -ms-flex: 1 1 auto;
  flex: 100 100 auto;
  padding: 0.7em 2em 0.7em 1em;
}
</style>
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
          	<div class="chat-sidebar">
				<div class="sidebar-name">
			<div class="card mb-4">

            <h5 class="card-header">Stream Chat</h5>
            <div class="card-bodycontroller">
            		<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
            			<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
            				<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
            					<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>	
            					<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
            						<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
            							<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
            	<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
            		<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
            			<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
            				<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
              </div>
                <div class="input-group">
                <input type="text" class="form-control" placeholder="傳送訊息">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">聊天</button>
                </span>
            </div>
          </div>
								
				
				</div>
        </div>

      </div>
      <!-- /.row -->

      <!-- Team Members -->
<c:if test="${LoginOK.account == sb.account}">
<!--       <h2>拍賣物品</h2>
<!-- <div class="col-md-1 addBidDiv"> --> 
<div class="col-lg-1">
					<button class="btn btn-outline-info addBidButton col-md-auto" data-toggle="modal" data-target="#addAuctionForm"><i class="fas fa-dollar-sign"></i>&nbsp;&nbsp;拍賣物品</button>
</div>
<!-- 					</div> -->
						</c:if>
							  <c:if test="${LoginOK.account == sb.account}">		
<!-- 			<div class="col-lg-1"> -->
			<button type="button" value="${sb.liveStreamSeqNo}" class="btn btn-outline-info deleteBlock col-md-auto"><i class="fas fa-ban"></i>&nbsp;&nbsp;關閉直播</button>
<!--             </div>  -->
			</c:if>	
						
<!--       <h2>叫價</h2><div class="col-md-2 addBidDiv"> -->
<div class="col-lg-1">
					<button class="btn btn-outline-info addBidButton loginCheck col-md-auto" data-toggle="modal" data-target="#addBidForm"><i class="fas fa-bullhorn"></i>&nbsp;&nbsp;現場喊價</button>
</div> 
<!-- 					</div>	 -->



	
			
	
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
    




	
<!-- 拍賣表格 -->
<div class="modal fade" id="addAuctionForm" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">新增拍賣</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">


					<form:form  id="Auction" method="POST" action="${pageContext.request.contextPath}/Auction" modelAttribute="AuctionItemSelectBean" class = "form-horizontal" enctype="multipart/form-data" >
					<form:input id="liveStreamSeqNo" value="${sb.liveStreamSeqNo}" path="liveStreamSeqNo" type="hidden" />
					aucBegin<form:input id="aucBegin" path="aucBegin" type="text" class="form-control input-sm" placeholder="2018-05-06 17:00:00"/><br>
					aucEnd<form:input id="aucEnd" path="aucEnd" type="text" class="form-control input-sm" placeholder="2018-05-06 18:00:00"/><br>
					productSeqNo<form:input id="productSeqNo" path="productSeqNo" type="text" class="form-control input-sm"/><br>
					proPrice<form:input id="proPrice" path="proPrice" type="text" class="form-control input-sm"/><br>
				</div>
				

				<div class="modal-footer">
<%-- 				<p>${registerErrorMap.Duplicate} ${registerErrorMap.SQL}</p> --%>
					<button type="button" class="btn btn-secondary"	data-dismiss="modal">取消</button>
					<input type="submit" class="btn btn-primary" value="註冊"/>
				</div>
					</form:form>
					
			</div>
		</div>
	</div>
<!--// 拍賣表格 -->
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
	<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>
</html>