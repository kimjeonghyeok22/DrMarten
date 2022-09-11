<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>관리자 페이지 : 상품 상세페이지</title>
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
            <link rel="stylesheet" href="/resources/css/style_guide.css">
            <link rel="stylesheet" href="/resources/css/admin.css">
            <script src="/resources/js/main.js"></script>
            <style type="text/css">
                .pgn_wrap {
                    margin: 30px auto;
                    text-align: center;
                }
                
                .pgn {
                    display: inline-block;
                    width: 34px;
                    line-height: 34px;
                    border: 2px solid black;
                    font-weight: bolder;
                    text-align: center;
                    font-size: 20px;
                    margin: 0 5px;
                }
                
                .pgn_on {
                    background-color: black;
                    color: #fff;
                }
                
                .att_img {
                    display: inline-block;
                    height: 100px;
                    margin: 0 10px;
                    background-color: #e2e2e2;
                }
                
                .forImg {
                    height: 140px;
                    background-color: #fff;
                }
                
                input[type="text"]:read-only {
                    background-color: #fff;
                    color: #111111;
                }
                
                .forImg:read-only {
                    background-color: #fff;
                    color: #111111;
                }
            </style>
        </head>

        <body>
            <jsp:include page="/WEB-INF/JSP/include/admin_head.jsp" />
            <div class="wrap">
                <jsp:include page="/WEB-INF/JSP/include/admin_gnb.jsp" />
            <div id="admin_main">
                <div class="container">
                    <div class="inner">
                        <!-- 제품 등록 폼 입니다. -->
                        <form action="/DrMarten/product/files/add" method="post" enctype="multipart/form-data" id="product_form">
                            <h2 class="title">제품 상세보기</h2>
                            <div class="dmField dmInput w10">
                                <label class="dmField_label">분류</label>
                                <input type="text" name="name" value="${product.gender}" class="dmField_input" readonly="readonly"> </div>
                            <div class="dmField dmInput w10">
                                <label class="dmField_label">카테고리</label>
                                <input type="text" name="name" value="${product.category}" class="dmField_input" readonly="readonly"> </div>
                            <div class="dmField dmInput name">
                                <label class="dmField_label">제품이름</label>
                                <input type="text" name="name" value="${product.name}" class="dmField_input" readonly="readonly"> </div>
                            <div class="dmField dmInput mb30 forImg">
                                <label class="dmField_label">제품 이미지</label>
                                <div class="dmField_input forImg" readonly="readonly">
                                    <c:forEach items="${att}" var="att"> <img src="http://localhost/${att.fpath}${att.fname}" class="att_img" /> </c:forEach>
                                </div>
                            </div>
                            <div class="dmField dmInput w33">
                                <label class="dmField_label">제조국가</label>
                                <input type="text" name="made" value="${product.made}" class="dmField_input" readonly="readonly"> </div>
                            <div class="dmField dmInput w33">
                                <label class="dmField_label">원재료</label>
                                <input type="text" name="material" value="${product.material}" class="dmField_input" readonly="readonly"> </div>
                            <div class="dmField dmInput w33">
                                <label class="dmField_label">색상</label>
                                <input type="text" name="material" value="${product.color}" class="dmField_input" readonly="readonly"> </div>
                            <div class="dmField dmInput">
                                <label class="dmField_label">가격</label>
                                <input type="text" name="price" value="${product.price}" class="dmField_input" readonly="readonly"> </div>
                            <div class="size_count_wrap">
                                <div class="size_count_sub">
                                    <div class="dmField dmInput">
                                        <label class="dmField_label">사이즈</label>
                                        <select name="size[0].product_size" class="dmField_select">
                                            <option>220</option>
                                            <option>230</option>
                                            <option>240</option>
                                            <option>250</option>
                                            <option>260</option>
                                            <option>270</option>
                                            <option>280</option>
                                            <option>290</option>
                                        </select>
                                    </div>
                                    <div class="dmField dmInput">
                                        <label class="dmField_label">수량</label>
                                        <input type="text" name="size[0].product_count" value="0" class="dmField_input"> </div>
                                </div>
                                <div class="size_count_sub">
                                    <div class="dmField dmInput">
                                        <label class="dmField_label">사이즈</label>
                                        <select name="size[1].product_size" class="dmField_select">
                                            <option>220</option>
                                            <option>230</option>
                                            <option>240</option>
                                            <option>250</option>
                                            <option>260</option>
                                            <option>270</option>
                                            <option>280</option>
                                            <option>290</option>
                                        </select>
                                    </div>
                                    <div class="dmField dmInput">
                                        <label class="dmField_label">수량</label>
                                        <input type="text" name="size[1].product_count" value="0" class="dmField_input"> </div>
                                </div>
                            </div>
                            <!-- 온라인 전용 상품 -->
                            <div class="dmField dmInput w33">
                                <label class="dmField_label">온라인 전용</label>
                                <input type="text" name="price" value="${product.onlineonly}" class="dmField_input" readonly="readonly"> </div>
                            <!-- 친환경 제품 -->
                            <div class="dmField dmInput w33">
                                <label class="dmField_label">친환경 제품</label>
                                <input type="text" name="price" value="${product.vegan}" class="dmField_input" readonly="readonly"> </div>
                            <!-- 할인율 -->
                            <div class="dmField dmInput w33">
                                <label class="dmField_label">할인율</label>
                                <input type="text" name="price" value="${product.discount}%" class="dmField_input" readonly="readonly"> </div>
                            <div class="btn_wrap">
                                <button type="button" onclick="location.href='/admin/product/list';" class="cmBtn black sml">목록</button>
                                <button type="button" onclick="location.href='/admin/product/edit/${product.product_code}';" class="cmBtn black sml">수정</button>
                                <button type="button" onclick="" class="cmBtn black sml">삭제</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
        </body>

        </html>