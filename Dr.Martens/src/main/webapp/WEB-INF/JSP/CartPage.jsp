<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- // 물건이없을경우에 -->
	<c:if test="${Cart==null}">
		<script type="text/javascript">
			alert('아직 로그인 하시지 않으셨거나 담으신 물건이없습니다');
			history.back();
		</script>
	</c:if>


	<!-- // 물건이 있을 경우에  -->
	<c:if test="${Cart!=null}">

		<c:forEach var="c" items="${Cart}">
			<div>
				<!-- // 물건 사진을 가져오는 경로들 적기  -->
			</div>
			<div>물건 이름 :${c.productName}</div>
			<div>구매 갯수 : ${c.productNumbers} 개</div>
			<div>물건 사이즈 : ${c.productSize}</div>
			<div>총 가격 : ${c.price} 원</div>


		</c:forEach>

	</c:if>

</body>
</html>