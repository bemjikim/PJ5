<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/cart.css">
    <title>Add Post</title>
    <style>

        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            margin-right: auto;
            margin-left: auto;
            justify-content: center;
            align-items: center;
            height: 50vh;
            width: 70%;
            margin-bottom : 70px;

        }
        #h1{
            margin-top: 50px;
            text-align: center;
            margin-bottom : 30px;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }

        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }

        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a href="list.jsp">Home</a></li>
                <li class="active"><a href="addpostform.jsp">Add</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a onclick = history.back()><span class="glyphicon glyphicon-log-in"></span></a></li>
            </ul>
        </div>
    </div>
</nav>
<h1 id = "h1">상품 등록하기</h1>
<form action="addok" method="post">
<table id ="list">
<tr><td>판매자:</td><td><input type="text" name="seller"/></td></tr>
<tr><td>상품명:</td><td><input type="text" name="named"/></td></tr>
<tr><td>가격:</td><td><input type="text" name="cost"/></td></tr>
<tr><td>거래가능장소:</td><td><select id="location" name="location">
    <option value = "포항역">포항역</option>
    <option value = "한동대">한동대</option>
</select>
</td></tr>
<tr><td>연락처:</td><td><input type="text" name="contact"/></td></tr>
<tr><td>상품링크:</td><td><textarea name="link" rows = "2" cols = "40" placeholder="반드시 https:// 빼고 작성해주세요!!!"></textarea></td></tr>
</table>
<tr/>
    <div style="text-align: right">
        <button type ="button" onclick ="history.back()">뒤로가기</button>
        <button type = "submit"> 상품등록 </button>
    </div>


</form>
<footer class="container-fluid text-center">
    <p>This is 21900104, Bum Jin Kim's Project 4</p>
</footer>
</body>
</html>