<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>관리자 페이지 : 상품 목록</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="/resources/css/style_guide.css">
	<link rel="stylesheet" href="/resources/css/admin.css">
	<script src="/resources/js/main.js"></script>
	<style type="text/css">
		.pgn_wrap{margin : 30px auto; text-align: center;}
		.pgn{display:inline-block; width : 34px; line-height:34px; border : 2px solid black; font-weight: bolder;
		text-align: center; font-size : 20px; margin : 0 5px;}
		.pgn_on{background-color: black; color : #fff;}
	</style>
</head>
<body>
	            <jsp:include page="/WEB-INF/JSP/include/admin_head.jsp" />
            <div class="wrap">
                <jsp:include page="/WEB-INF/JSP/include/admin_gnb.jsp" />
		<div id="admin_main">
			<div class="container">
                <div class="inner">
                	<h2 class="title">제품 리스트</h2><br>
					<table>
						<tr>
							<th style="width:90px;">상품번호</th>
							<th style="width:90px;">카테고리</th>
							<th style="width:120px;">썸네일</th>
							<th>상품명</th>
						</tr>
						<c:forEach var="p" items="${pageInfo.list}">
							<tr>
								<td class="center"><a href="/admin/product/detail/${p.product_code}">${p.product_code}</a></td>
								<td class="center">${p.category}</td>
								<td class="center"><img src="/resources/img/${p.name}/${p.name}_main.png" style="display : inline-block; height : 90px; margin-top: 14px; background-color : #e2e2e2;"></td>
								<td>${p.name}</td>
							</tr>
						</c:forEach>
					</table>
					<div class="pgn_wrap">
						<c:forEach var="i" items="${pageInfo.navigatepageNums}">
							<c:choose>
								<c:when test="${i==pageInfo.pageNum}">
									<span class="pgn pgn_on">${i}</span>
								</c:when>
								<c:otherwise>
									<span class="pgn"><a href="/admin/product/list/page/${i}">${i}</a></span>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>