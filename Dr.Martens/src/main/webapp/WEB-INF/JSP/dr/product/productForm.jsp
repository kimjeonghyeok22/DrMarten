<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>관리자 페이지 : 공지사항 목록</title>
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
            <link rel="stylesheet" href="/resources/css/admin.css">
            <script src="/resources/js/main.js"></script>
        </head>

        <body>
            <header id="admin_header">
                <div class="inner">
                    <div class="img_wrap">
                        <a href="/admin/main"><img src="/resources/img/logo.svg" alt=""> </a>
                    </div>
                    <div class="title_wrap"> <span>닥터마틴 관리자페이지</span> </div>
                    <div class="controller_wrap">
                        <div class="log_out">
                            <div class="welcome"> <span class="time sml gray">로그인 : ${time}</span> <span>관리자님 안녕하세요 : )</span> </div>
                            <button type="button">로그아웃</button>
                        </div>
                        <div class="search_box">
                            <div class="dmField_input_box">
                                <input name="userid" type="text" class="dmField_input" placeholder="검색">
                                <button type="button" class="cmBtn line yellow">검색</button>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <div class="wrap">
                <div id="gnb">
                    <ul id="menu">
                        <li> <span>고객 관리</span> <span class="off"><i class="fa-solid fa-chevron-down"></i></span> <span class="on"><i class="fa-solid fa-chevron-up"></i></span>
                            <div class="sub_wrap">
                                <ul id="sub_menu">
                                    <li><a href="#">서브1</a></li>
                                    <li><a href="#">서브2</a></li>
                                    <li><a href="#">서브3</a></li>
                                    <li><a href="#">서브4</a></li>
                                </ul>
                            </div>
                        </li>
                        <li> <span>게시판 관리</span> <span class="off"><i class="fa-solid fa-chevron-down"></i></span> <span class="on"><i class="fa-solid fa-chevron-up"></i></span>
                            <div class="sub_wrap">
                                <ul id="sub_menu">
                                    <li><a href="/admin/notice/list">공지사항 관리</a></li>
                                    <li><a href="/admin/notice/write">공지사항 작성</a></li>
                                    <li><a href="/admin/myqna/list">1:1문의 관리</a></li>
                                    <li><a href="/admin/qa/write">자주묻는 질문 작성</a></li>
                                    <li><a href="/admin/qa/list">자주묻는 질문 관리</a></li>
                                </ul>
                            </div>
                        </li>
                        <li> <span>상품 관리</span> <span class="off"><i class="fa-solid fa-chevron-down"></i></span> <span class="on"><i class="fa-solid fa-chevron-up"></i></span>
                            <div class="sub_wrap">
                                <ul id="sub_menu">
                                    <li><a href="/admin/product/form">상품 등록</a></li>
                                    <li><a href="/admin/product/list">상품 목록</a></li>
                                </ul>
                            </div>
                        </li>
                        <li> <span>주문 관리</span> <span class="off"><i class="fa-solid fa-chevron-down"></i></span> <span class="on"><i class="fa-solid fa-chevron-up"></i></span>
                            <div class="sub_wrap">
                                <ul id="sub_menu">
                                    <li><a href="#">전체주문목록</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><span>통계분석</span></li>
                    </ul>
                </div>
            </div>
            <div id="admin_main">
                <div class="container">
                    <div class="inner">
                        <!-- 제품 등록 폼 입니다. -->
                        <form action="/DrMarten/product/files/add" method="post" enctype="multipart/form-data" id="product_form">
                            <h2 class="title">제품 등록</h2>
                            <div class="dmField dmInput w10">
                                <label class="dmField_label">분류</label>
                                <select name="gender" class="dmField_select">
                                    <option>남성</option>
                                    <option>여성</option>
                                    <option selected>혼용</option>
                                </select>
                            </div>
                            <div class="dmField dmInput w10">
                                <label class="dmField_label">카테고리</label>
                                <select name="category" class="dmField_select">
                                    <option>SANDALS</option>
                                    <option>BOOTS</option>
                                    <option>SHOES</option>
                                </select>
                            </div>
                            <div class="dmField dmInput name">
                                <label class="dmField_label">제품이름</label>
                                <input type="text" name="name" value="" class="dmField_input" placeholder="제품_이름을_입력해주세요"> </div>
                            <div class="dmField dmInput mb30">
                                <label class="dmField_label">제품 이미지</label>
                                <input type="file" name="files" multiple="multiple" class="dmField_input"> </div>
                            <div class="dmField dmInput w33">
                                <label class="dmField_label">제조국가</label>
                                <input type="text" name="made" value="" class="dmField_input" placeholder="제조국가"> </div>
                            <div class="dmField dmInput w33">
                                <label class="dmField_label">원재료</label>
                                <input type="text" name="material" value="" class="dmField_input" placeholder="원재료"> </div>
                            <div class="dmField dmInput w33">
                                <label class="dmField_label">색상</label>
                                <select name="color" class="dmField_select">
                                    <option>black</option>
                                    <option>brown</option>
                                    <option>gray</option>
                                    <option>white</option>
                                    <option>beige</option>
                                    <option>green</option>
                                    <option>yellow</option>
                                    <option>deep-brown</option>
                                    <option>khaki</option>
                                    <option>burgundy</option>
                                </select>
                            </div>
                            <div class="dmField dmInput">
                                <label class="dmField_label">가격</label>
                                <input type="text" name="price" value="" class="dmField_input" placeholder="가격"> </div>
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
                                <select name="onlineonly" class="dmField_select">
                                    <option selected>아니요</option>
                                    <option>예</option>
                                </select>
                            </div>
                            <!-- 친환경 제품 -->
                            <div class="dmField dmInput w33">
                                <label class="dmField_label">친환경 제품</label>
                                <select name="vegan" class="dmField_select">
                                    <option selected>아니요</option>
                                    <option>예</option>
                                </select>
                            </div>
                            <!-- 할인율 -->
                            <div class="dmField dmInput w33">
                                <label class="dmField_label">할인율</label>
                                <input type="text" name="discount" value="0" class="dmField_input"> 
                            </div>
                            <div class="btn_wrap">
                                <button type="reset" class="cmBtn black sml">취소</button>
                                <button type="submit" class="cmBtn black sml">저장</button>
                            </div>
                        </form>
                </div>
            </div>
            </div>
        </body>

        </html>