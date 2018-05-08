<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>带左右箭头切换jquery焦点幻灯片代码</title>


<!-- Bootstrap core CSS -->
<link href="<c:url value='/global/vendor/bootstrap/css/bootstrap.min.css'/> "
	rel="stylesheet">

<SCRIPT type=text/javascript src="<c:url value='/marketIndex/js/jquery.js'/>"></SCRIPT>
<SCRIPT type=text/javascript src="<c:url value='/marketIndex/js/js.js'/>"></SCRIPT>


<script>
	$(document).ready(function() {

		$(".area").hover(function() {

			$(this).find(".qq").show(100);
		}

		, function() {

			$(this).find(".qq").hide(100);

		});

	});
</script>
</head>

<body>

	<div class="area">

		<a id=prev class="prevBtn qq" href="javascript:void(0)"></a>
		<a id=next class="nextBtn qq" href="javascript:void(0)"></a>

		<div id=js class="js">

			<div class="box01">

				<img onClick="location.href='http://www.jq22.com/'"
					src="getImageTest/product01"> 
				<img onClick="location.href='http://www.jq22.com/'"
					style="DISPLAY: none" src="getImageTest/product02"> 
				<img onClick="location.href='http://www.jq22.com/'"
					style="DISPLAY: none" src="getImageTest/product03">
			    <img onClick="location.href='http://www.jq22.com/'"
					style="DISPLAY: none" src="getImageTest/product04"> 
				<img onClick="location.href='http://www.jq22.com/'"
					style="DISPLAY: none" src="getImageTest/product05">

			</div>

			<div class="bg"></div>

			<div id=jsNav class=jsNav>

				<a class="trigger imgSelected" href="javascript:void(0)">1</a> 
				<a class="trigger" href="javascript:void(0)">2</a>
				<a class="trigger" href="javascript:void(0)">3</a> 
				<a class="trigger" href="javascript:void(0)">4</a> 
				<a class="trigger" href="javascript:void(0)">5</a>

			</div>

		</div>

	</div>

</body>

</html>