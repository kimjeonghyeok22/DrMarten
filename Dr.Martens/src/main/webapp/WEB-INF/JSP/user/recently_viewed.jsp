<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.DecimalFormat"%>
    
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>
	document.title = "닥터마틴 코리아 : 내가 봤던 것들";
</script>

<div id="main" class="recent">
	<div class="inner" >
	<div id="subHead">
			<div class="subHead_back">
				<button class="subHead_btn" onclick="history.go(-1)">
					<span class="text_hiden">뒤로가기</span>
					<svg version="1.1" viewBox="0 0 34 22" class="subHead_btn_icon">
						<path pid="0" fill="#111" fill-rule="evenodd" d="M33.974 9.503H5.771l7.493-7.402L11.128-.01-.012 10.995 11.128 22l2.136-2.111-7.493-7.401h28.203V9.503z"></path>
					</svg>
				</button>
				<div class="subHead_title">내가 봤던 것들 </div>
			</div>
		</div>
		<c:if test="${First == null}">
			<div class="msg_recent">
				<span class="msg"> ${msg}</span>
			</div>
		</c:if>
		<c:if test="${not empty First}">
			<c:forEach var="product" items="${First}">
			<div class="current_item">
				<%-- <img src="http://localhost/${product.attach[0].fpath}${product.name}_main.png" /><br> --%>
				<img src="/resources/img/${product.name}/${product.name}_main.png"><br>
				<div class="fw700 product_name">
	                <c:set value="${product.name}" var="deleName" />
		            <%String name =  (String)pageContext.getAttribute("deleName");
						name = name.replace("_"," ");%>
	                <%=name%>
                </div> 
	            <span class="fz20 fw700 priceRight">
				<c:set value="${product.price}" var="priceNum"/>
				<%Integer price = (Integer)pageContext.getAttribute("priceNum");
				DecimalFormat formatter = new DecimalFormat("###,###");
				%>₩<%=formatter.format(price)%>
				</span>
                <div class="wrap">
					<span class="color">${product.color}</span>
					<input type="hidden" name = "product_code" value="${product.product_code}">
					<input type="hidden" name = "color" value="${product.color}">
			    		<input type="hidden" name = "name" value="${product.name}">
					<input type="hidden" name = "price" value="${product.price}">
					<button type="button" class="goCart" onclick="location.href='/DrMarten/product/detail_product/${product.product_code};">바로가기</button>
				</div>
				</div>
			</c:forEach>
		</c:if>

	</div>
</div>
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />