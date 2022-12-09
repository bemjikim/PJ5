<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
 <%@page import="com.dao.BoardDAO, com.vo.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>내역 수정하기</h1>
<form:form modelAttribute="u" method = "POST" action="../editok">
	<form:hidden path="seq"/>
	<table id = "edit">
		<tr><td>판매자:</td><td><form:input path="seller"/></td></tr>
		<tr><td>상품명:</td><td><form:input path="named"/></td></tr>
		<tr><td>가격:</td><td><form:input path="cost"/></td></tr>
		<tr><td>거래가능장소:</td><td><form:input path="location"/></td></tr>
		<tr><td>연락처:</td><td><form:input path="contact"/></td></tr>
		<tr><td>상품링크:</td><td><form:input path="link"/></td></tr>
		<tr><td colspan="2"><input type="button" value="뒤로가기" onclick="history.back()"/>
			<input type="submit" value="수정완료"/></td></tr>
	</table>
</form:form>

</body>
</html>