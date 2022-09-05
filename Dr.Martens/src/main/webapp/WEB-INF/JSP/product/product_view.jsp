<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.DecimalFormat"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!DOCTYPE html>

                <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
                <form action="/DrMarten/product/files/searchName" method="post">
                    <div id="ser">
                        <input id="ser_input" type="text" class="fz20 fw500 cfff" name="name" placeholder="제품 이름을 입력해주세요.">
                        <button id="ser_icon" type="submit"> <img id="ser_img" src="http://localhost/resources/img/btn_white_search.png" /> </button>
                    </div>
                </form>
                <div id="main" class="pro">
                    <div class="inner">
                        <div class="left_menu">
                            <ul class="fz26 fw700" id="pro_menu">
                                <li id="toc-toggle" onclick="openCloseToc()"> <span id="catVal">성별</span> <span><img class="rowV" id="rowV" src="http://localhost/resources/img/Up_arrow_transparent.png"/></span>
                                    <ul class="closeList" id="category">
                                        <li> <a href="/DrMarten/product/category/male" class="cate">　남자</a> </li>
                                        <li> <a href="/DrMarten/product/category/female" class="cate">　여자</a> </li>
                                    </ul>
                                </li>
                                <li id="toc-toggle_2" onclick="openCloseToc2()"> <span>종류</span> <span><img class="rowV" id="rowV2" src="http://localhost/resources/img/Up_arrow_transparent.png"/></span>
                                    <ul class="closeList" id="category2">
                                        <li> <a href="/DrMarten/product/category/sandals" class="cate">　샌들</a> </li>
                                        <li> <a href="/DrMarten/product/category/boots" class="cate">　부츠</a> </li>
                                    </ul>
                                </li>
                                <li id="toc-toggle_3" onclick="openCloseToc3()"> <span>할인제품</span> <span><img class="rowV" id="rowV3" src="http://localhost/resources/img/Up_arrow_transparent.png"/></span>
                                    <ul class="closeList" id="category3">
                                        <li> <a href="/DrMarten/product/category/sandals/10" class="cate">　샌들 10%</a> </li>
                                    </ul>
                                </li>
                                <li id="toc-toggle_4" onclick="location.href='/DrMarten/product/category/online_only'"> <span>온라인 단독</span> </li>
                                <li id="toc-toggle_5" onclick="location.href='/DrMarten/product/category/vegan'"> <span>친환경 비건</span> </li>
                            </ul>
                        </div>
                        <div id="right_list">
                            <div id="reset_by_category">
                                <c:forEach items="${product.list}" var="product">
                                    <form id="list" onclick="location.href='/DrMarten/product/detail_product/${product.product_code}'"> <img src="http://localhost/${product.attach[0].fpath}${product.name}_main.png" />
                                        <br>
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
												<input type="hidden" name = "name" value="${product.name}">
												<input type="hidden" name = "name" value="${product.product_code}">
												<input type="hidden" name = "name" value="${product.price}">
												<button type="button" class="goCart" onclick="">바로가기</button>
											</div>
									</form>
                                </c:forEach>
                        </div>
                    </div>
                    </div>
                </div>
                <jsp:include page="/WEB-INF/JSP/include/footer.jsp" /> 