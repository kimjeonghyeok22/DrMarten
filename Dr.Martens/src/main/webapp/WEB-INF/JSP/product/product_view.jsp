<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 목록</title>
<style>
  #toc-content {
    display: none;
  }
  #toc-toggle {
    cursor: pointer;
    color: #2962ff;
  }
  #toc-toggle:hover {
    text-decoration: underline;
  }
</style>
<script>
  function openCloseToc() {
    if(document.getElementById('toc-content').style.display === 'block') {
      document.getElementById('toc-content').style.display = 'none';
      document.getElementById('toc-toggle').textContent = '보이기';
    } else {
      document.getElementById('toc-content').style.display = 'block';
      document.getElementById('toc-toggle').textContent = '숨기기';
    }
  }
</script>
</head>
<body>
<h3>제품 List 테스트</h3>
	<table>
		<tr>
			<th>이미지</th>
			<th>이름</th>
			<th>가격</th>
			<th>상품 분류</th>
			<th>평점</th>
			<th>조회수</th>
		</tr>
		
		<c:forEach items="${product.list}" var="product">
			<tr>
				<td><img src="${product.attach[0].fpath}${product.name}_main.png"/></td>
				<td><a href="/product/detail_product/${product.product_code}">${product.name}</a></td>
				<td>${product.price}</td>
				<td>${product.category}
				<td>${product.view_count}</td>
			</tr>
		</c:forEach>
	</table>
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
	<h2>검색기능</h2>
	제품 이름으로 검색
	<form action="/product/files/searchName" method="post">
	<input type="text" name="name" value="will">
	<button type="submit">검색</button>
	</form>
	<h2>제품 사진 추가</h2>
	<form action="/product/files/addFiles" method="post" enctype="multipart/form-data">
	제품이름 <input type="text" name="name" value="willsmith"><br>
	File <input type="file" name="files" multiple="multiple"><br>
	<button type="submit">추가</button>
	</form>

<form>
<span id="toc-toggle" onclick="openCloseToc()">카테고리</span>

<ul id="toc-content">
	<oi>성별
		<ul>
			<oi>
			<a href="/product/category/male">남자</a>
			</oi><br>
			<oi>
			<a href="/product/category/female">여자</a>
			</oi>
		</ul>
			</oi>
	<oi>종류
		<ul>
			<oi>
			<a href="/product/category/sandals">샌들</a>
			</oi><br>
			<oi>
			<a href="/product/category/boots">부츠</a>
			</oi>
		</ul>
	</oi>
</ul>
</form>
<form action="/product/erase" method="post">
	[제품이름]<input type="text" name="name" value="willsmith3">
	<button>삭제하기</button>
</form>
</body>
</html>