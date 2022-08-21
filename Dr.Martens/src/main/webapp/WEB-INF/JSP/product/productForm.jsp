<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 전용 메소드</title>
</head>
<body>
	<div class="test_mode">
		<!-- 제품 등록 폼 입니다. -->
		<form action="/DrMarten/product/files/add" method="post"
			enctype="multipart/form-data">
			<h2>제품 등록</h2>
			제품이름 <input type="text" name="name" value="willsmith"> <br>
			File <input type="file" name="files" multiple="multiple"> <br>
			제조국가 <input type="text" name="made" value="china"> <br>
			원재료 <input type="text" name="material" value="smith"> <br>
			색상 <input type="text" name="color" value="black"> <br>
			성별 <input type="text" name="gender" value="혼용"> <br>
			카테고리 <input type="text" name="category" value="sandles"> <br>
			가격 <input type="text" name="price" value="200000"> <br>
			사이즈 <input type="text" name="size[0].product_size" value="240"><br>
			수량 <input type="text" name="size[0].product_count" value="5"><br>
			사이즈 <input type="text" name="size[1].product_size" value="250"> <br>
			수량 	<input type="text" name="size[1].product_count" value="10"> <br>
			<button type="submit">저장</button>
		</form>
		<!-- 이미 등록 된 제품 이름으로 사이즈와 수량을 추가합니다. 현재는 2사이즈 씩 가능. -->
		<form action="/DrMarten/product/files/addStock" method="post">
			<h2>제품 사이즈 추가</h2>
			제품이름 <input type="text" name="name" value="willsmith"> <br>
			사이즈 <input type="text" name="size[0].product_size" value="240"><br>
			수량 <input type="text" name="size[0].product_count"	value="5"> <br>
			사이즈 <input type="text"	name="size[1].product_size" value="250"> <br>
			수량 <input type="text" name="size[1].product_count" value="10"> <br>
			<button type="submit">저장</button>
		</form>
		<!-- 제품에 쓸 사진을 추가하는 폼입니다.. -->
		<h2>제품 사진 추가</h2>
		<form action="/DrMarten/product/files/addFiles" method="post"
			enctype="multipart/form-data">
			제품이름 <input type="text" name="name" value="willsmith"> <br>
			File <input type="file" name="files" multiple="multiple"> <br>
			<button type="submit">추가</button>
		</form>
		<!-- 단종된 제품을 삭제하는 폼입니다. -->
		<h2>제품 삭제(DB)</h2>
		<form action="/DrMarten/product/erase" method="post">
			[제품이름] <input type="text" name="name" value="willsmith3">
			<button type="submit">삭제하기</button>
		</form>
		<!-- 이건 관리자 전용 메소드는 아니고, 제품이 판매 되었을 경우 연동해야 하는 폼입니다. -->
		<form action="/DrMarten/product/sell" method="post">
			<h3>[[x]제품[x]사이즈[x]갯수가 판매 되었습니다.]</h3>
			[제품이름] <input type="text" name="name" value="willsmith"> <br>
			[사이즈] <input type="text" name="product_size" value="240"> <br>
			[판매된 갯수] <input type="text" name="sellCount" value="1">
			<button type="submit">삭제하기</button>
		</form>
	</div>
</body>
</html>