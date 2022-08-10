<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추천인 입력</title>
</head>
<body>
<form action="/user/recommend" method="post">
추천인 입력:<input type="text" name="recommender" id="recommender" placeholder="추천인 아이디 입력">
<button type="submit">입력</button>
</form>
</body>
</html>