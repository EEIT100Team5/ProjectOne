<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>賣家商品上架</h3>
	<form:form method="POST" commandName="user">
		<table>
			<tr>
			<td>產品圖片(封面) :</td>
			    <td><form:label path="proPicPath">Select a file to upload</form:label></td>
	            <td><input type="file" name="file" /></td>
			</tr>
			<tr>
			<td>產品價格 : (NT)</td>
			<td><form:input path="proprice" value=""/></td>
			</tr>
			<tr>
			<td>數量:</td>
			<td><form:input path="prostock" value=""/></td>
			</tr>
			<tr>
			<td>品牌 :</td>
			<td><form:input path="probrand" value=""/></td>
			</tr>
			<tr>
			<td>產品類別 :</td>
			<td><form:input path="proclass" value=""/></td>
			</tr>
			<tr>
			<tr>
			<td>產品敘述 :</td>
			<td><form:textarea path="prodescription" value=""/></td>
			</tr>
			<tr>
			<td align="right">
				<form:input type="submit" path="submit" value="submit"/>
				<form:input type="reset" path="submit" value="clean"/>
			</td>		
			</tr>



			</table>
		</form:form>

</body>
</html>