<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.DecimalFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청하신 제품List</title>
<link rel="stylesheet" href="/resources/css/products.css"/>
<link rel="stylesheet" href="/resources/css/style_guide.css" />
</head>
<body>
<div id="searchRes">
<div class="fz36 fw900 c111 ">"${searchKey}"</div>
<div class="fz20 fw700 c666 ">검색 결과를 확인하세요</div>
<div class="fz26 fw700 c111 ">제품(${list.size()})</div>
</div>
<div id="productList">
	<c:forEach items="${list}" var="lists">
		<form id="list" onclick="location.href='/product/detail_product/${lists.product_code}'">
			<img src="http://localhost/${lists.attach[0].fpath}${lists.name}_main.png"/>
		<br>
			<div class="fz26 fw700 product_name">
				<c:set value="${list.name}" var="deleName"/>
				<%String name =  (String)pageContext.getAttribute("deleName");
				name = name.replace("_"," ");%>
				<%=name%>
			</div>
			<span class="fz20 fw700 priceRight">
			<c:set value="${lists.price}" var="priceNum"/>
						<%Integer price = (Integer)pageContext.getAttribute("priceNum");
						DecimalFormat formatter = new DecimalFormat("###,###");
						%>₩<%=formatter.format(price)%></span>
			<br>${lists.color}
			<span class="priceRight">
				<button type="button" id="goCart" onclick="">장바구니에 담기</button>
			</span>
		</form>
	</c:forEach>
</div>
</body>
</html>