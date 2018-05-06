<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>带左右箭头切换jquery焦点幻灯片代码</title>




<link href="<c:url value='/marketIndex/css/css.css'/>" rel="stylesheet">
<link href="<c:url value='/marketIndex/js/jquery.js'/>" rel="stylesheet">
<link href="<c:url value='/marketIndex/js/js.js'/>" rel="stylesheet">
</head>



<script type="text/javascript">
	$(document).ready(function() {

		$(".area").hover(function() {

			$(this).find(".qq").show(100);
		}

		, function() {

			$(this).find(".qq").hide(100);

		});

	});
</script>

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

				<a class="trigger imgSelected" href="javascript:void(0)">1</a> <a
					class="trigger" href="javascript:void(0)">2</a> <a class="trigger"
					href="javascript:void(0)">3</a> <a class="trigger"
					href="javascript:void(0)">4</a> <a class="trigger"
					href="javascript:void(0)">5</a>

			</div>

		</div>

	</div>

</body>

</html>