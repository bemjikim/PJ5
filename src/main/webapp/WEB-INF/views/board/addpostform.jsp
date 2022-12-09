<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>상품 등록하기</h1>
<form action="addok" method="post">
<table id ="edit">
<tr><td>판매자:</td><td><input type="text" name="seller"/></td></tr>
<tr><td>상품명:</td><td><input type="text" name="named"/></td></tr>
<tr><td>가격:</td><td><input type="text" name="cost"/></td></tr>
<tr><td>거래가능장소:</td><td><input type="text" name="location"/></td></tr>
<tr><td>연락처:</td><td><input type="text" name="contact"/></td></tr>
<tr><td>상품링크:</td><td><input type="text" name="link"/></td></tr>
</table>
<tr/>
    <button type ="button" onclick ="history.back()">뒤로가기</button>
    <button type = "submit"> 상품등록 </button>

</form>

</body>
</html>