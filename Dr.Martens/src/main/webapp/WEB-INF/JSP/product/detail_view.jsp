<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.DecimalFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>제품 상세보기</title>
    <link rel="stylesheet" href="/resources/css/products.css" />
    <link rel="stylesheet" href="/resources/css/style_guide.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="/resources/js/product/main_page.js"></script>
    <script type="text/javascript">
        function addCart() {
            $.ajax({
                url: '/cart/cartAdd',
                method: 'post',
                cache: false,
                dataType: 'json',
                success: function(res) {
                    alert(res.saved ? '장바구니에 추가 되었습니다!' : 'Failed');
                },
                error: function(xhr, status, err) {
                    alert('Error:' + err);
                }
            });
            return false;
        }
    </script>
</head>

<body>
    <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
    <div id="main" style="margin-top : 180px;">
        <div class="inner">
            <div class="wrap">
                <div class="rightInfo half">
                            <div class="pngList">
                <div class="topleft">
                    　<br>
                    <img src="http://localhost/resources/img/going_car.png" class="sizefix" />
                    5만원 이상 무료 배송 및 사이즈 무료 교환 1회<br><br>　
                </div>
            </div>
                    <c:forEach items="${att}" var="att">
                        <img src="http://localhost/${att.fpath}${att.fname}"  class="detail_img"/>
                    </c:forEach>
                </div>
                <div class="half pd30">
                    <div class="fz20 fw700">
                        <div align="right">
                            <c:if test="${score==null}">
                                ☆☆☆☆☆
                            </c:if>
                            <c:if test="${number==null}">
                                0건
                            </c:if>
                        </div>
                        ${product.name}
                        <hr size="1px">
                    </div>
                    <div align="right" class="underline">
                        원하는 사이즈가 품절 일수 있습니다.
                    </div>
                    <br>
                    <c:forEach items="${size}" var="s">
                        <c:choose>
                            <c:when test="${s.product_count > 0}">
                                <button class="haveSize fz20 fw500">
                                    　${s.product_size}
                                </button>
                            </c:when>
                            <c:otherwise>
                                <button class="haveSize fz20 fw500 disabled">
                                    　${s.product_size}
                                    <span class="fz12">일시 품절</span>
                                </button>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach> 
                    <div class="fz26 fw700 price" style="text-align:right;">
                        <c:set value="${product.price}" var="priceNum" />
                        <%Integer price = (Integer)pageContext.getAttribute("priceNum");
				DecimalFormat formatter = new DecimalFormat("###,###");
				%>
                        <span class="fw500">₩</span>
                        <%=formatter.format(price)%>
                    </div>

<div>
                <!-- 장바구니에 추가//코드 , 이름 ,수량 사이즈, 세션. -->
                <form id="addCartForm" action="/cart/cartAdd" method="post">

                    <input type="hidden" name="price" value="${product.price}">
                    <input type="hidden" name="name" value="${product.name}">
                    <input type="hidden" name="product_code" value="${product.product_code}">
                    <input type="number" name="number" min="0" placeholder="수량을 입력하세요">
                    <!--
                    		제이쿼리로 사이즈버튼눌렀을때값넘어오게수정예정
                    	   <select name="sized" required="required">
                        <option value="240" selected="selected">240</option>
                        <option value="240">250</option>
                        <option value="240">260</option>
                        <option value="240">270</option>
                        <option value="240">280</option>
                    </select>-->
                    <div class="btn_wrap wrap">
                    <button type="button" class="cmBtn line mid black">장바구니 </button>
                    <button type="button" class="cmBtn line mid">구매하기</button>
                    </div>
                </form>
</div>

                </div>

            </div>
            <div class="product_detail">
                               <!--  색 ${product.color}<br>
                    생산지 ${product.made}<br>
                    재료${product.material}<br>
                    카테고리${product.category}<br>
                    조회수${product.view_count}<br>
                    누적판매량${product.sell_count}<br> -->
                    </div>
            <!-- <c:forEach var="f" items="${vo.attach}">
				<span><a href="/files/download/${f.num}">${f.fname}</a></span>
				[<a href="javascript:deleteIt(${f.num});">삭제</a>]<br>
			</c:forEach> -->
        </div>
    </div>
    <jsp:include page="/WEB-INF/JSP/include/footer.jsp" />
</body>

</html>