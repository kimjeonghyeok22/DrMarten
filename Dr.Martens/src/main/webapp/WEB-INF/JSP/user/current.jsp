<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>
	document.title = "DrMartens 최근본 상품";
</script>

<div id="main">
	<div class="inner">



		<c:if test="${First == null}">

			<div>
				<span> 보신상품이 없거나 로그인을 하시지않으셨습니다 </span>
			</div>
		</c:if>

		<c:if test="${not empty First}">

			<c:forEach var="product" items="${First}">
			
			
			 <input type="text" name="name" value="${product.name}">
			
			</c:forEach>



		</c:if>

	</div>
</div>




<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />