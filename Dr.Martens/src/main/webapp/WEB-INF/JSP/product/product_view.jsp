<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.DecimalFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- include file="/resources/static/include/header.jsp" --%> 
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>제품 목록</title>
<link rel="stylesheet" href="/resources/css/products.css"/>
<link rel="stylesheet" href="/resources/css/style_guide.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 <script src="/resources/js/product/main_page.js"></script>
</head>

<body>
 <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
	<form action="/product/files/searchName" method="post">
		<div id="ser">
			<input  id="ser_input" type="text" class="fz20 fw500 cfff" name="name" placeholder="제품 이름을 입력해주세요.">
			<button id="ser_icon" type="submit">
				<img id="ser_img"  src="http://localhost/resources/img/btn_white_search.png"/>
			</button>
		</div>
	</form>
<div class="left_menu">
<form class="fz26 fw700 categoraegorae">
	<ul>
		<li id="toc-toggle" onclick="openCloseToc()">
		<span id="catVal">성별</span>
		<span><img class="rowV" id="rowV" src="http://localhost/resources/img/Up_arrow_transparent.png"/></span>
			<ul class="closeList" id="category">
				<li>
					<a href="/product/category/male" class="cate">　남자</a>
				</li>
				<li>
					<a href="/product/category/female" class="cate">　여자</a>
				</li>
			</ul>
		</li>
		<li id="toc-toggle_2" onclick="openCloseToc2()">
		<span>종류</span>
		<span><img class="rowV" id="rowV2" src="http://localhost/resources/img/Up_arrow_transparent.png"/></span>
			<ul class="closeList" id="category2">
				<li>
					<a href="/product/category/sandals" class="cate">　샌들</a>
				</li>
				<li>
					<a href="/product/category/boots" class="cate">　부츠</a>
				</li>
			</ul>
		</li>
		<li id="toc-toggle_3" onclick="openCloseToc3()">
		<span>할인제품</span>
		<span><img class="rowV" id="rowV3" src="http://localhost/resources/img/Up_arrow_transparent.png"/></span>
			<ul class="closeList" id="category3">
				<li>
					<a href="/product/category/sandals/10" class="cate">　샌들 10%</a>
				</li>
			</ul>
		</li>
		<li id="toc-toggle_4" onclick="location.href='/product/category/online_only'">
		<span>온라인 단독</span>
		</li>
		<li id="toc-toggle_5" onclick="location.href='/product/category/vegan'">
		<span>친환경 비건</span>
		</li>
	</ul>
</form>
</div>

<div id="right_list">
		<div id="reset_by_category">
	<c:forEach items="${product.list}" var="product">
		<form id="list" onclick="location.href='/product/detail_product/${product.product_code}'">
			<img   src="http://localhost/${product.attach[0].fpath}${product.name}_main.png"/>
		<br>
			<div class="fz26 fw700 product_name">
				<c:set value="${product.name}" var="deleName"/>
				<%String name =  (String)pageContext.getAttribute("deleName");
				name = name.replace("_"," ");%>
				<%=name%>
			</div>
			<span class="fz20 fw700 priceRight">
				<c:set value="${product.price}" var="priceNum"/>
			<%Integer price = (Integer)pageContext.getAttribute("priceNum");
			DecimalFormat formatter = new DecimalFormat("###,###");
			%>₩<%=formatter.format(price)%></span>
			<br>${product.color}
			<span class="priceRight">
			<input type="hidden" name = "name" value="${product.name}">
			<input type="hidden" name = "name" value="${product.product_code}">
			<input type="hidden" name = "name" value="${product.price}">
			<button type="button" id="goCart" onclick="">장바구니에 담기</button>
			</span>
		</form>
	</c:forEach>
	</div>
</div>
<div class="test_mode">
<form action="/product/files/add" method="post" enctype="multipart/form-data">
<h2>제품 등록</h2>
   제품이름 <input type="text" name="name" value="willsmith"><br>
   File <input type="file" name="files" multiple="multiple"><br>
   제조국가 <input type="text" name="made" value="china"><br>
   원재료 <input type="text" name="material" value="smith"><br>
   색상 <input type="text" name="color" value="black"><br>
   성별 <input type="text" name="gender" value="혼용"><br>
   카테고리 <input type="text" name="category" value="sandles"><br>
   가격 <input type="text" name="price" value="200000"><br>
    사이즈 <input type="text" name="size[0].product_size" value="240"><br>
   수량 <input type="text" name="size[0].product_count" value="5"><br>
     사이즈 <input type="text" name="size[1].product_size" value="250"><br>
   수량 <input type="text" name="size[1].product_count" value="10"><br>
   <button type="submit">저장</button>
</form>

	<form action="/product/files/addStock" method="post">
<h2>제품 사이즈 추가</h2>
   제품이름 <input type="text" name="name" value="willsmith"><br>
   사이즈 <input type="text" name="size[0].product_size" value="240"><br>
   수량 <input type="text" name="size[0].product_count" value="5"><br>
     사이즈 <input type="text" name="size[1].product_size" value="250"><br>
   수량 <input type="text" name="size[1].product_count" value="10"><br>
   <!-- 현재는 2 정보 한정이지만 추후 원하는 갯수 정할 수 있게 해줘야 함. -->
   <button type="submit">저장</button>
</form>

	<h2>제품 사진 추가</h2>
	<form action="/product/files/addFiles" method="post" enctype="multipart/form-data">
	제품이름 <input type="text" name="name" value="willsmith"><br>
	File <input type="file" name="files" multiple="multiple"><br>
	<button type="submit">추가</button>
	</form>


<form action="/product/erase" method="post">
	[제품이름]<input type="text" name="name" value="willsmith3">
	<button type="submit">삭제하기</button>
</form>

<form action="/product/sell" method="post">
	<h3>[[x]제품[x]사이즈[x]갯수가 판매 되었습니다.]</h3>
	[제품이름]<input type="text" name="name" value="willsmith">
<br>	[사이즈]<input type="text" name="product_size" value="240">
<br>	[판매된 갯수]<input type="text" name="sellCount" value="1">
	<button type="submit">삭제하기</button>
</form>
</div>
</body>
</html>