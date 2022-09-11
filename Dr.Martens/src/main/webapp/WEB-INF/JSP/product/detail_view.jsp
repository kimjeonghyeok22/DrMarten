<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.text.*,java.util.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>닥터마틴 코리아 :: 제품 상세보기</title>
            <link rel="stylesheet" href="/resources/css/products.css" />
            <link rel="stylesheet" href="/resources/css/style_guide.css" />
            <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
            <script src="/resources/js/product/detail_view.js"></script>
            <script type="text/javascript">
                function addCart() {
                    $.ajax({
                        url: '/DrMarten/cart/cartAdd'
                        , method: 'post'
                        , cache: false
                        , dataType: 'json'
                        , success: function (res) {
                            alert(res.saved ? '장바구니에 추가 되었습니다!' : 'Failed');
                        }
                        , error: function (xhr, status, err) {
                            alert('Error:' + err);
                        }
                    });
                    return false;
                }
            </script>
        </head>

        <body>
            <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
            <div id="main" class="pro_det">
                <div class="inner">
                    <div class="wrap">
                        <div class="rightInfo half">
                            <div class="pngList">
                                <div class="topleft">
                                    <br> <img src="http://localhost/resources/img/going_car.png" class="sizefix" /> 5만원 이상 무료 배송 및 사이즈 무료 교환 1회
                                    <br>
                                    <br> </div>
                            </div>
                            <c:forEach items="${att}" var="att"> <img src="http://localhost/${att.fpath}${att.fname}" class="detail_img" /> </c:forEach>
                        </div>
                        <div class="half pd30">
                            <div class="fz20 fw700">
                                <div align="right">
                                    <c:if test="${score==null}"> ☆☆☆☆☆ </c:if>
                                    <c:if test="${number==null}"> 0건 </c:if>
                                </div>
                                <div class="fz26 product_name">
                                    <c:set value="${product.name}" var="deleName" />
                                    <%
							String name = (String) pageContext.getAttribute("deleName");
							name = name.replace("_", " ");
							%>
                                        <%=name%>
                                </div>
                                <hr size="1px"> </div>
                            <div align="right" class="underline">원하는 사이즈가 품절 일수 있습니다.</div>
                            <br>
                            <c:forEach items="${size}" var="s">
                                <c:choose>
                                    <c:when test="${s.product_count > 0}">
                                        <button class="haveSize fz20 fw500">${s.product_size}</button>
                                    </c:when>
                                    <c:otherwise>
                                        <button class="haveSize fz20 fw500 disabled"> ${s.product_size} <span class="fz12 disabled">일시 품절</span> </button>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            <!-- 장바구니에 추가//코드 , 이름 ,수량 사이즈, 세션. -->
                            <div>
                                <form id="addCartForm" action="/DrMarten/cart/cartAdd" method="post">
                                    <input type="hidden" name="price" value="${product.price}">
                                    <input type="hidden" name="name" value="${product.name}">
                                    <input type="hidden" name="discount" value="${product.discount}">
                                    <input type="hidden" name="product_code" value="${product.product_code}">
                                    <input type="hidden" name="product_size"  id="product_size">
                                    <div class="fz26 dib temp1"> 수량
                                        <input type="number" name="product_count" id="count" class="count"  min="1" value="1" onkeyup="javascript:price_key()">
                                        <div class="fz36 dib">
                                            <button type="button" class="count_btn" onclick="javascript:down_btn()">-</button>
                                            <button type="button" class="count_btn" onclick="javascript:up_btn()">+</button>
                                        </div>
                                    </div>
                                    <div class="fz26 fw700 price dib" style="text-align: right;">
                                        <c:set value="${product.price}" var="priceNum" />
                                        <%
								Integer price = (Integer) pageContext.getAttribute("priceNum");
								DecimalFormat formatter = new DecimalFormat("###,###");
								%> <span class="fw500">₩</span>
                                            <input id="set_price" type="hidden" value="${product.price}">
                                            <div id="res_price" class="dib">
                                                <%=formatter.format(price)%>
                                            </div>
                                    </div>
                                    <div class="btn_wrap wrap">
                                        <button type="submit" class="cmBtn line mid"> 장바구니 </button>
                                        <button type="button" class="cmBtn line mid black"> 구매하기 </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- <c:forEach var="f" items="${vo.attach}">
				<span><a href="/files/download/${f.num}">${f.fname}</a></span>
				[<a href="javascript:deleteIt(${f.num});">삭제</a>]<br>
			</c:forEach> -->
                </div>
                <div class="detail_inner">
                                    <div class="product_detail">
                        <!--  색 ${product.color}<br>
                    생산지 ${product.made}<br>
                    재료${product.material}<br>
                    카테고리${product.category}<br>
                    조회수${product.view_count}<br>
                    누적판매량${product.sell_count}<br> -->
                        <div class="detail_sub"> </div>
                        <div class="detail_sub">
                        	<div class="wrap">
                        		<div class="detail_box1">
	                        		<span class="detail_sml">모델명</span><br>
	                        		<span class="detail_big"><%=name%></span>
	                        	</div>
	                        	<div class="detail_box1">
	                        		<span class="detail_sml">제조연월</span><br>
	                        		<span class="detail_big">제품라벨 표기</span>
	                        	</div>
                        	</div>
                        	<div class="wrap">
                        		<div class="detail_box1">
	                        		<span class="detail_sml">제품 주소재</span><br>
	                        		<span class="detail_big">${product.material}</span>
	                        	</div>
	                        	<div class="detail_box1">
	                        		<span class="detail_sml">제조국</span><br>
	                        		<span class="detail_big">${product.made}(택 참조)</span>
	                        	</div>
                        	</div>
                        	<div class="wrap">
                        		<div class="detail_box1">
	                        		<span class="detail_sml">A/S 책임자와 전화번호</span><br>
	                        		<span class="detail_big"><span class="underline">1544-6486</span>(내선2번)<br>
	                        		전국 매장 유/무상 A/S</span>
	                        	</div>
	                        	<div class="detail_box1">
	                        	</div>
                        	</div>
                        	<div class="wrap">
								<ul class="sq">
									<li class="detail_sml">상품번호 : ${product.product_code}</li>
									<li class="detail_sml">치수 : UK 사이즈 기준(mm표기) / 신발에 따라 사이즈 상이하니 구매 후기 참조</li>
									<li class="detail_sml">제조자 : Dr.Martens</li>
									<li class="detail_sml">품질보증기준 : 소비자피해보상규정에 따름</li>
								</ul>
                        	</div>
                         </div>
                    </div>
                    <div class="product_detail bn">
                        <!--  색 ${product.color}<br>
                    생산지 ${product.made}<br>
                    재료${product.material}<br>
                    카테고리${product.category}<br>
                    조회수${product.view_count}<br>
                    누적판매량${product.sell_count}<br> -->
                        <div class="detail_sub"> 
                        	<span class="detail_big">취급 시 주의사항</span>
                        		<ul class="sq">
									<li class="detail_sml">일반 가죽은 마른 헝겊으로 먼지를 털어낸 후<br>'원더발삼'으로 관리합니다.</li>
									<li class="detail_sml">적당한 온도와 습도에서 가죽 제품 속에 보형물을 넣고<br>형태를 유지시키면서 보관해주세요.</li>
									<li class="detail_sml">스웨이드/누벅/화이트 색상 가죽은 발삼 사용을 제한합니다.</li>
									<li class="detail_sml">가죽 제품인 경우 젖었을 때 통풍이 잘 되는 그늘에서<br>건조해주세요.</li>
									<li class="detail_sml">습기, 수분, 강한 열, 기름기 있는 곳에서의 착용은<br>가죽 제품의 형태를 변화시킬 수 있으니 주의하여 주세요.</li>
									<li class="detail_sml">천연가죽 내피가 사용된 제품은 가죽 컬러의 물감이<br>배어 나오는 경우가 있으므로 주의하여 주세요.</li>
									<li class="detail_sml">가죽 제품인 경우 여름철 자동차의 트렁크나 차내,<br>고온다습한 장소에 방치하지 말아주세요.</li>
								</ul>
                        </div>
                        <div class="detail_sub">
                            <span class="detail_big">소재 별 손질 및 보존 방법</span><br>
                            <span class="detail_big2">스웨이드 누벅</span>
                        	<ul class="sq">
								<li class="detail_sml">가벼운 오염은 부드러운 솔로 털어주거나 고무 지우개로<br>가볍게 문질러 제거해주세요.</li>
								<li class="detail_sml">물에 닿으면 얼룩, 탈색, 변형 등의 원인이 되므로 특히<br>주의하여주세요. 만약 젖었을 경우 바로 부드러운 면으로<br>털 듯이 물기를 제거해주세요.</li>
							</ul>
							<span class="detail_big2">애나멜가죽</span>
                        	<ul class="sq">
								<li class="detail_sml">애나멜 전용 클리너를 사용해주세요.</li>
							</ul>
							<span class="detail_big2">합성(인조)가죽</span>
                        	<ul class="sq">
								<li class="detail_sml">물에 젖었을 때 바로 부드러운 면으로 닦고 통풍이 잘 되는<br>그늘에서 건조시켜주세요.</li>
								<li class="detail_sml">오염 제거시 비눗물에 적신 천을 사용하고, 그 외의 보혁류를<br>사용할 필요가 없습니다.</li>
							</ul>
							<span class="detail_big2">섬유(의류) 세탁시 유의사항</span>
                        	<ul class="sq">
								<li class="detail_sml">면 100%인 경우, 중성세제를 사용하여 차가운 물에 손세탁<br>또는 세탁기 이용시에는 세탁망에 넣은 후 짧은 시간 단독으로<br>세탁해주세요.</li>
								<li class="detail_sml">의류 및 액세서리의 경우, 제품에 부착된 케어라벨의<br>세탁 방법을 참조해주세요.</li>
								<li class="detail_sml">30도 이하의 물 온도에서 30분 이내 손세탁 혹은 드라이클리닝<br>해주세요.</li>
								<li class="detail_sml">세탁시 색상 구분하여 단독 세탁해주세요.</li>
								<li class="detail_sml">표백제는 사용 불가합니다.</li>
							</ul>
                         </div>
                    </div>
                    <div class="product_detail  w100 bn">
                    	<div class="wrap bb">
                    		<span class="detail_bigTitle">상품후기</span>
                    	</div>
                    	<div class="wrap bb center">
                    		<span class="detail_big2">후기 ${cnt}개 / 별점 ${score}</span>
                    	</div>
                    	<c:forEach var="r" items="${review}">
                    		<div class="review">
                    			<c:set var="writer" value="${r.writer}"/>
                    				 <%
										String temp_name = (String)pageContext.getAttribute("writer");
										String wname = temp_name.substring(0, 4)+"****";
										pageContext.setAttribute("wname",wname);
									%>
                    			<span class="writer">${wname}</span><br>
                    			<span class="title">${r.title}
                    			<c:if test="${not empty r.fname}">
                    				<svg data-v-5e0e8c6e="" version="1.1" viewBox="0 0 56 48" class="icon"><path pid="0" fill="#111" fill-rule="evenodd" d="M0 .001v47.996h56V.001H0zm50 6V17.49l-7.89-7.891-12.286 12.287-5.019-5.021L6 35.67V6.001h44zM8.156 41.999l16.649-16.646 8.987 8.987 4.242-4.242-3.969-3.971 8.045-8.044 7.89 7.89v16.026H8.156z"></path></svg>
                    			</c:if>
                    			</span><br>
                    			<c:if test="${not empty r.fname}">
                    			<img src="../../../resources/img/review/${r.fname}" class="img"><br>
                    			</c:if>
                    			<c:if test="${r.score eq 1}">
                    				<span class="review_score">
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-regular fa-star"></i>
                    					<i class="fa-regular fa-star"></i>
                    					<i class="fa-regular fa-star"></i>
                    					<i class="fa-regular fa-star"></i>
                    				</span><br>
                    			</c:if>
                    			<c:if test="${r.score eq 2}">
                    				<span class="review_score">
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-regular fa-star"></i>
                    					<i class="fa-regular fa-star"></i>
                    					<i class="fa-regular fa-star"></i>
                    				</span><br>
                    			</c:if>
                    			<c:if test="${r.score eq 3}">
                    				<span class="review_score">
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-regular fa-star"></i>
                    					<i class="fa-regular fa-star"></i>
                    				</span><br>
                    			</c:if>
                    			<c:if test="${r.score eq 4}">
                    				<span class="review_score">
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-regular fa-star"></i>
                    				</span><br>
                    			</c:if>
                    			<c:if test="${r.score eq 5}">
                    				<span class="review_score">
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-solid fa-star"></i>
                    					<i class="fa-solid fa-star"></i>
                    				</span><br>
                    			</c:if>
                    			<span class="contents">작성일 | ${r.wdate}</span><br>
                    			<span class="contents">${r.contents}</span>
                    			<div class="review_btn">
                    			<span class="open">펼쳐보기</span>
                    			<span class="close">접기</span>
                    			</div>
                    		</div>
                    	</c:forEach>
                    </div>
                    <div class="product_detail  w100 bn">
                    	<div class="wrap bb">
                    		<span class="detail_bigTitle">상품문의</span><a href="/DrMarten/writeQna/${product.product_code}" class="detail_btn">글쓰기</a>
                    	</div>
                    	<c:forEach var="q" items="${qa}">
                    		<div class="review">
                    		    <c:forEach var="r" items="${rp}">
                    		     <c:if test="${r.origin_num eq q.board_num}"> <span class="rp_ok">답변완료</span> </c:if></c:forEach>
                    			<c:set var="qwriter" value="${q.writer}"/>
                    				 <%
										String temp_name = (String)pageContext.getAttribute("qwriter");
										String wname = temp_name.substring(0, 4)+"****";
										pageContext.setAttribute("wname",wname);
									%>
                    			<span class="writer">${wname}</span><br>
                    			<span class="title">${q.title}
                    			</span><br>
                    			<span class="contents">작성일 | ${q.wdate}</span><br>
                    			<span class="contents">${q.contents}</span><br>
                    				    <c:forEach var="r" items="${rp}">
                    			                                <c:if test="${r.origin_num eq q.board_num}">
                                    <div class="rp_line contents"></div> <span class="contents rp_title">${r.title}</span>
                                    <br> <span class="contents">작성일 | ${r.wdate}</span>
                                    <br> <span class="contents">작성자 | ${r.writer}</span>
                                    <br> <span class="contents rp_con">${r.contents}</span>
                                    <br> </c:if>
                    			                    		</c:forEach>
                    			<div class="review_btn">
                    			<span class="open">펼쳐보기</span>
                    			<span class="close">접기</span>
                    			</div>
                    		</div>

                    	</c:forEach>
                    </div>
                    <div class="product_detail bn cn">
                        	<div class="center_box"><span>교환/환불 안내</span><span>─</span></div>
                        <div class="detail_sub"> 
                        	<span class="detail_big">교환 안내</span>
                        		<ul class="sq">
									<li class="detail_sml">제품 수령 후 7일 이내에 마이페이지 – 주문 배송조회 - 주문 상세에서 교환 신청시에 원하시는 사이즈를 선택해주세요.</li>
									<li class="detail_sml">수거지 정보 입력시 롯데택배(1588-2121) 자동 반품 접수됩니다. 교환 제품은 상품 도착 후 최소 일주일 이상 소요됩니다.</li>
									<li class="detail_sml">교환 접수 시점 보유 재고 기준으로 교환 접수가 가능하나 수거 이후 재고 상황에 따라 품절될 수 있습니다.<br>
※ 네이버 페이 구매 고객의 경우, 네이버 페이 마이페이지에서 교환 신청 후 보내주시면 됩니다.<br>
※ 반품 주소 : 경기도 이천시 마장면 프리미엄 아울렛로 113-49 스마트 물류 닥터마틴</li>
									<li class="detail_sml">사이즈 교환만 가능하며, 다른 제품으로 교환을 원하시는 경우 해당 제품을 반품해주시고, 별도로 신규 주문해 주셔야 합니다.</li>
									<li class="detail_sml">공식몰 회원일 경우 정상가 구매 제품 사이즈 교환 1회 무료 서비스를 제공합니다. (쿠폰 사용 포함, 세일 카테고리 제외, 네이버페이 구매 고객 제외)</li>
									<li class="detail_sml">제품 및 박스의 손상이 없도록 받아보신 그대로 보내주셔야 합니다. (반품 택배 발송 시 사은품은 제외하고 발송 부탁드립니다. 교환 발송시 사은품은 별도 발송되지 않습니다.</li>
									<li class="detail_sml">박스 및 택이 분실되거나, 사용 흔적/오염 등 고의로 손상된 제품은 당사에서 확인 후 반송 처리합니다.</li>
									<li class="detail_sml">교환 접수 후 2주 이내 물품을 보내주셔야 합니다. 기간이 초과된 제품은 반송 처리될 수 있습니다. (왕복 배송비 고객 부담)</li>
									<li class="detail_sml">부득이한 사정으로 롯데택배가 아닌 타 택배를 이용하셔야 하는 경우 선불로 보내주시고 게시판에 남겨주세요.</li>
									<li class="detail_sml">물류센터 입고 후, 영업일 기준 7일 이내 기존 수령지로 교환 제품이 출고되며, 재고가 없으면 반품, 환불 처리될 수 있습니다.
교환 받을 주소 및 수령자 정보를 변경할 경우에는1:1 게시판에 남겨주세요.</li>
									<li class="detail_sml">불량 제품의 경우, 1:1 게시판에 제품 사진, 주문 번호, 연락처를 남겨주시면 빠른 처리 도와드리겠습니다. 당사의 실수로 인한 오배송 및 불량상품의 택배비는 닥터마틴에서 전액 부담합니다.
단, 동일한 상품 (색상, 사이즈 포함)으로의 교환만 당사 부담이며, 원래 주문하셨던 상품이 아닌 경우에는 변심으로 간주되어 별도로 주문 부탁드립니다.</li>
								</ul>
                        </div>
                        <div class="detail_sub">
                            <span class="detail_big">취소 안내</span>
                        	<ul class="sq">
								<li class="detail_sml">주문의 상태가 배송 준비 중일 경우 취소가 불가합니다.
교환, 환불을 원하실 경우 교환 및 환불 안내를 참고하시기 바랍니다.</li>
							</ul>
							<span class="detail_big">환불안내</span>
                        	<ul class="sq">
								<li class="detail_sml">제품 수령 후 7일 이내에 마이페이지 – 주문 배송조회 – 주문 상세에서 반품 신청해 주셔야 합니다.
수거지 정보 입력시 롯데택배(1588-2121) 자동 반품 접수됩니다.<br>
※ 반품 주소 : 경기도 이천시 마장면 프리미엄 아울렛로 113-49 스마트물류 닥터마틴</li>
								<li class="detail_sml">물류센터 입고 확인 후 1-3일 이내에, 왕복 배송비 (6,000원) 차감하여 환불됩니다. (제주 지역 별도 추가 배송비 6,000원)<br>
※ 동봉된 택배비는 처리되지 않으며 분실되는 경우 책임지지 않습니다.<br>
※ 네이버 페이 구매 고객의 경우, 네이버 페이 마이페이지에서 반품 신청 후 보내주시면 됩니다. 왕복 배송비 (6,000원)를 추가 결제 시 전액 환불됩니다.</li>
								<li class="detail_sml">제품 및 박스의 손상이 없도록 받아보신 그대로 보내주셔야 합니다. (사은품 동봉 필수) 박스 및 택이 분실되거나, 사용 흔적/오염 등 고의로 손상된 제품은 당사에서 확인 후 반송 처리합니다.</li>
								<li class="detail_sml">반품 접수 이후 2주 이내 물품을 보내주셔야 합니다. 기간이 초과된 제품은 반송 처리될 수 있습니다. (왕복 배송비 고객 부담)</li>
								<li class="detail_sml">부득이한 사정으로 롯데택배가 아닌 타 택배를 이용하셔야 하는 경우 선불로 보내주셔야 합니다.</li>
								<li class="detail_sml">불량 제품의 경우, 1:1 게시판에 제품 사진 첨부해주시면 빠른 처리 도와드리겠습니다.</li>
								<li class="detail_sml">카드 환불일 경우, 카드사의 승인/취소 처리 과정으로 7~14일 가량 소요되며, 결제일은 개인차가 있을 수 있습니다. 대금 정산 이후 결제 취소되는 경우, 익월 청구 금액에서 차감되어 처리되며 명세서를 통해 확인할 수 있습니다.</li>
							</ul>
							<span class="detail_big2 lh28">닥터마틴 고객센터 : 1544-6486<br>(월~금 10AM ~ 5PM / 점심시간 : 12:00~13:00)<br>주말 및 공휴일 휴무
							</span>
                         </div>
                    </div>
                    </div>
            </div>
            <jsp:include page="/WEB-INF/JSP/include/footer.jsp" /> </body>

        </html>