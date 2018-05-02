<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>

	<link href="<c:url value='/global/vendor/bootstrap/css/bootstrap.min.css'/> " rel="stylesheet">
	<link href="<c:url value='/global/css/modern-business.css'/>" rel="stylesheet">

  </head>
  <body>
    <%@ include file="/WEB-INF/views/global/fragment/top.jsp" %>
    <div class="container">
      <h1 class="mt-4 mb-3">Sidebar Page
        <small>Subheading</small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">About</li>
      </ol>

      <div class="row">
        <div class="col-lg-3 mb-4">
          <div class="list-group">
            <p class="list-group-item replyMessage">回復留言</p>
            <p class="list-group-item questionManage">問答集管理</p>
            <p class="list-group-item storeComplaint">商店客訴</p>
            <p class="list-group-item productComplaint">商品客訴</p>
            <p class="list-group-item videoComplaint">影片客訴</p>
            <p class="list-group-item memberComplaint">會員客訴</p>
            <p class="list-group-item liveStreamComplaint">直播客訴</p>
            <p class="list-group-item homePageManage">首頁管理</p>
            <p class="list-group-item mallManage">商城管理</p>
            <p class="list-group-item forumArticleComplaint">論壇文章客訴</p>
            <p class="list-group-item forumReplyComplaint">論壇回復客訴</p>
            <p class="list-group-item websiteReport">報表</p>
    
          </div>
        </div>
        <div class="col-lg-9 mb-4">
          <h2>功能標題</h2>
          <p>功能內容</p>
        </div>
      </div>

    </div>
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
    </footer>

	<script src="<c:url value='/global/vendor/jquery/jquery.min.js'/> "></script>
	<script src="<c:url value='/global/vendor/bootstrap/js/bootstrap.bundle.min.js'/> "></script>

  </body>
</html>