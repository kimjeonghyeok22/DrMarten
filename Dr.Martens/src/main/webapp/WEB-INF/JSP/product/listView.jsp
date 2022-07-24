<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>제품 List 테스트</h3>
<c:forEach items="${list}" var="lists">
${lists.name}<br>
${lists.product_code}<br>
${lists.price}<br>
<c:forEach items ="${lists.size}" var="size">
${size.product_size}<br>
${size.product_count}<br>
</c:forEach>
</c:forEach>
<!-- 이렇게 하면 됩니다! -->

</body>
</html>