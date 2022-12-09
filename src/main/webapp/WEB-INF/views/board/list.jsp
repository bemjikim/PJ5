<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@page import="com.dao.BoardDAO, com.vo.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
<h1 style="text-align: center">Cart Rider</h1>
<h3>관리자님 어서오세요 <a href = "logout">logout</a></h3>
<table id="list" width="90%">

<tr>
	<th>식별 번호</th>
	<th>판매자</th>
	<th>상품명</th>
	<th>작성 시간</th>
	<th>가격</th>
	<th>거래가능장소</th>
	<th>연락처</th>
	<th>상품링크</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u" varStatus="status">
	<tr>
		<td>${u.seq}</td>
		<td>${u.seller}</td>
		<td>${u.named}</td>
		<td>${u.regdate}</td>
		<td>${u.cost}</td>
		<td>${u.location}</td>
		<td>${u.contact}</td>
		<td><button type="button" style="background-color: #FF0000; color: white; border: none"><a href="http://${u.getLink()}" target="_blank" style="text-decoration: none; color: white" >상품보러가기</a></button></td>
		<td><a href="editform/${u.seq}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>
</html>