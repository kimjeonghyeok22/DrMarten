<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <script>
            document.title = "Dr.Martens";
        </script>
        <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
        <div id="container" class="main_container">
            <div id="content">
                <main id="main_wrap">
                    <!-- 배너메뉴 -->
                    <div class="banner_menu">
                        <div class="inner">
                            <div class="wrap">
                                <div class="bm">
                                    <a href="/DrMarten/benefits" class="width_100"> <img src="/resources/img/main/bm1.png" alt=""> <span class="txt">신규가입 10%쿠폰</span> </a>
                                </div>
                                <div class="bm">
                                    <a href="/DrMarten/product/best" class="width_100"> <img src="/resources/img/main/bm2.jpg" alt=""> <span class="txt">BEST 슈즈</span> </a>
                                </div>
                                <div class="bm">
                                    <a href="/DrMarten/product/category/online_only" class="width_100"> <img src="/resources/img/main/bm3.jpg" alt=""> <span class="txt">온라인 단독상품</span> </a>
                                </div>
                                <div class="bm">
                                    <a href="javascript:not_sup();" class="width_100"> <img src="/resources/img/main/bm4.jpg" alt=""> <span class="txt">콜라보레이션</span> </a>
                                </div>
                                <div class="bm">
                                    <a href="/DrMarten/product/category/MIE" class="width_100"> <img src="/resources/img/main/bm5.jpg" alt=""> <span class="txt">Made In England</span> </a>
                                </div>
                                <div class="bm">
                                    <a href="javascript:not_sup();" class="width_100"> <img src="/resources/img/main/bm6.jpg" alt=""> <span class="txt">카카오 간편가입 이벤트</span> </a>
                                </div>
                                <div class="bm">
                                    <a href="/DrMarten/notice/detail/3" class="width_100"> <img src="/resources/img/main/bm7.jpg" alt=""> <span class="txt">마일리지 정책 변경</span> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- //배너메뉴 -->
                    <!-- 메인 비쥬얼 -->
                    <div id="visual1">
                        <div class="wrap">
                            <div class="img_wrap slide1 slide_on">
                                <a href="/DrMarten/sandal"><img src="/resources/img/main/sl1.jpg" alt=""></a>
                            </div>
                            <div class="img_wrap slide2">
                                <a href="javascript:not_sup();"><img src="/resources/img/main/sl2.jpg" alt=""></a>
                            </div>
                            <div class="img_wrap slide3">
                                <a href="javascript:not_sup();"><img src="/resources/img/main/sl3.jpg" alt=""></a>
                            </div>
                        </div>
                        <div class="btn_wrap">
                            <div class="prev"><i class="fa-solid fa-chevron-left"></i></div>
                            <div class="next"><i class="fa-solid fa-chevron-right"></i></div>
                        </div>
                        <div class="pgn_wrap">
                            <div class="pgn on"></div>
                            <div class="pgn"></div>
                            <div class="pgn"></div>
                        </div>
                    </div>
                    <!-- //메인 비쥬얼 -->
                    <!-- MD 추천 -->
                    <div class="item_con sec1" id="sec1">
                        <div class="inner">
                            <h3 class="title">MD 추천</h3>
                            <ul class="btn_wrap mb60 cateBtn_wrap">
                                <li data-tab="cate1" class="btn_box cate_btn01 cate_btn"><a href="javascript:;" class="cmBtn line mid black">샌들 10%</a></li>
                                <li data-tab="cate2" class="btn_box cate_btn02 cate_btn"><a href="javascript:;" class="cmBtn line mid">베스트슈즈</a></li>
                                <li data-tab="cate3" class="btn_box cate_btn03 cate_btn"><a href="javascript:;" class="cmBtn line mid">온라인 단독</a></li>
                                <!-- <li data-tab="cate4" class="btn_box cate_btn04 cate_btn"><a href="javascript:;" class="cmBtn line mid">친환경 비건</a></li> -->
                                <li data-tab="cate5" class="btn_box cate_btn05 cate_btn"><a href="javascript:;" class="cmBtn line mid">Made In England</a></li>
                            </ul>
                            <ul id="category1">
                                <li class="on" id="cate1">
                                    <div class="category_detail on">
                                        <div class="slide_wrap">
                                            <div class="slide eq1">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">그리폰</strong> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_1-1-1.png" alt=""> <img src="/resources/img/main/md_1-1-2.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 190,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22082206';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">마일즈</strong> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_1-1-3.png" alt=""> <img src="/resources/img/main/md_1-1-4.png" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 170,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22082101';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="slide eq2">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">나틸라</strong>  </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_1-2-1.png" alt=""> <img src="/resources/img/main/md_1-2-2.png" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 170,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22082201';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">리키3-스트랩</strong> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_1-2-3.jpg" alt=""> <img src="/resources/img/main/md_1-2-4.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 190,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22082207';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="slide eq3">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">나틸라</strong>  </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_1-3-1.jpg" alt=""> <img src="/resources/img/main/md_1-3-2.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 170,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22082208';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">마일즈 DB</strong>  </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_1-3-3.jpg" alt=""> <img src="/resources/img/main/md_1-3-4.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 170,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22082205';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn_wrap">
                                            <div class="prev"><i class="fa-solid fa-chevron-left"></i></div>
                                            <div class="pgn_wrap">
                                                <div class="pgn on"></div>
                                                <div class="pgn"></div>
                                                <div class="pgn"></div>
                                            </div>
                                            <div class="next"><i class="fa-solid fa-chevron-right"></i></div>
                                        </div>
                                    </div>
                                </li>
                                <li id="cate2">베스트슈즈
                                    <div class="category_detail">
                                        <div class="slide_wrap">
                                            <div class="slide eq1">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">1461 모노</strong>  </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_2-1-1.png" alt=""> <img src="/resources/img/main/md_2-1-2.png" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 190,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22082209';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">에봇</strong></div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_2-1-3.png" alt=""> <img src="/resources/img/main/md_2-1-4.png" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 190,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090504';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="slide eq2">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">1461 쿼드</strong>  </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_2-2-1.jpg" alt=""> <img src="/resources/img/main/md_2-2-2.png" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 230,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090506';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">1461 스무스</strong> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_2-2-3.png" alt=""> <img src="/resources/img/main/md_2-2-4.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 190,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090507';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="slide eq3">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">단테</strong> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_2-3-1.jpg" alt=""> <img src="/resources/img/main/md_2-3-2.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 120,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090709';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">리더</strong> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/리더/리더_main.png" alt=""> <img src="/resources/img/리더/리더_sub1.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 140,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090509';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn_wrap">
                                            <div class="prev"><i class="fa-solid fa-chevron-left"></i></div>
                                            <div class="pgn_wrap">
                                                <div class="pgn on"></div>
                                                <div class="pgn"></div>
                                                <div class="pgn"></div>
                                            </div>
                                            <div class="next"><i class="fa-solid fa-chevron-right"></i></div>
                                        </div>
                                    </div>
                                </li>
                                <li id="cate3">온라인 단독
                                    <div class="category_detail">
                                        <div class="slide_wrap">
                                            <div class="slide eq1">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">피어슨</strong> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_3-1-1.jpg" alt=""> <img src="/resources/img/main/md_3-1-2.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 140,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22082202';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">포스터</strong> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_3-1-3.jpg" alt=""> <img src="/resources/img/main/md_3-1-4.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 120,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22082203';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="slide eq2">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">애브리</strong>  </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_3-2-1.jpg" alt=""> <img src="/resources/img/main/md_3-2-2.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 170,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090501';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">애브리</strong> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_3-2-3.jpg" alt=""> <img src="/resources/img/main/md_3-2-4.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 170,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090502';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="slide eq3">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">블레어 페이턴트</strong>  </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/블레어-페이턴트/블레어-페이턴트_main.png" alt=""> <img src="/resources/img/블레어-페이턴트/블레어-페이턴트_sub2.png" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 170,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090503';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">블레어 페이턴트</strong> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/블레어-페이턴트-화이트/블레어-페이턴트-화이트_main.png" alt=""> <img src="/resources/img/블레어-페이턴트-화이트/블레어-페이턴트-화이트_sub.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 150,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090701';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn_wrap">
                                            <div class="prev"><i class="fa-solid fa-chevron-left"></i></div>
                                            <div class="pgn_wrap">
                                                <div class="pgn on"></div>
                                                <div class="pgn"></div>
                                                <div class="pgn"></div>
                                            </div>
                                            <div class="next"><i class="fa-solid fa-chevron-right"></i></div>
                                        </div>
                                    </div>
                                </li>
                                <!-- <li id="cate4">친환경 비건
                                    <div class="category_detail">
                                        <div class="slide_wrap">
                                            <div class="slide eq1">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">블레어 비건</strong> <span><i class="fa-regular fa-heart"></i> 167</span> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_4-1-1.jpg" alt=""> <img src="/resources/img/main/md_4-1-2.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 150,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090503';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">1461 비건</strong> <span><i class="fa-regular fa-heart"></i> 534</span> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_4-1-3.png" alt="" class="wide_img"> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 170,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22082206';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="slide eq2">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">2967 비건</strong> <span><i class="fa-regular fa-heart"></i> 681</span> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_4-2-1.png" alt="" class="wide_img"> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 220,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22082206';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">1460 비건</strong> <span><i class="fa-regular fa-heart"></i> 583</span> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_4-2-2.png" alt="" class="wide_img"> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 220,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22082206';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="slide eq3">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">제이든 II 모노</strong> <span><i class="fa-regular fa-heart"></i> 984</span> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_4-3-1.png" alt=""> <img src="/resources/img/main/md_4-3-2.png" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 260,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22082206';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right"> </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn_wrap">
                                            <div class="prev"><i class="fa-solid fa-chevron-left"></i></div>
                                            <div class="pgn_wrap">
                                                <div class="pgn on"></div>
                                                <div class="pgn"></div>
                                                <div class="pgn"></div>
                                            </div>
                                            <div class="next"><i class="fa-solid fa-chevron-right"></i></div>
                                        </div>
                                    </div>
                                </li> -->
                                <li id="cate5">Made In England
                                    <div class="category_detail">
                                        <div class="slide_wrap">
                                            <div class="slide eq1">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">MIE 1461</strong> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_5-1-1.jpg" alt=""> <img src="/resources/img/main/md_5-1-2.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 300,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090505';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">MIE 1461</strong>  </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_5-1-3.jpg" alt=""> <img src="/resources/img/MIE_1461-카키/MIE_1461-카키_sub4.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 300,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090608';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="slide eq2">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">MIE 아드리안</strong> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_5-2-1.jpg" alt=""> <img src="/resources/img/main/md_5-2-2.jpg" alt="">
                                                        </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 280,000 </span>
                                                                <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090602';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">MIE 아드리안</strong>  </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_5-2-3.jpg" alt=""> <img src="/resources/img/main/md_5-2-4.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 280,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090604';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="slide eq3">
                                                <div class="wrap" style="overflow : hidden;">
                                                    <div class="item left">
                                                        <div class="info"> <strong class="product_name">MIE 빈티지 1461</strong> </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_5-3-1.png" alt=""> <img src="/resources/img/main/md_5-3-2.jpg" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 280,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090605';">바로가기</button>
                                                        </div>
                                                    </div>
                                                    <div class="item right">
                                                        <div class="info"> <strong class="product_name">MIE 빈티지 3989</strong>  </div>
                                                        <div class="wrap imgw"> <img src="/resources/img/main/md_5-3-3.png" alt=""> <img src="/resources/img/main/md_5-3-4.png" alt=""> </div>
                                                        <div class="wrap"> <span class="price"><span class="won_font">\</span> 290,000 </span>
                                                            <button type="button" onclick="location.href='/DrMarten/product/detail_product/22090606';">바로가기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn_wrap">
                                            <div class="prev"><i class="fa-solid fa-chevron-left"></i></div>
                                            <div class="pgn_wrap">
                                                <div class="pgn on"></div>
                                                <div class="pgn"></div>
                                                <div class="pgn"></div>
                                            </div>
                                            <div class="next"><i class="fa-solid fa-chevron-right"></i></div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- //MD 추천 -->
                    <!-- 신상품 -->
                    <div class="item_con sec2"></div>
                    <!-- //신상품 -->
                    <!-- 베스트 아이콘 -->
                    <div class="best_icon sec3"></div>
                    <!-- //베스트 아이콘 -->
                    <!-- 샌들 스페셜 -->
                    <div class="banner">
                        <div class="inner pt100 pb60">
                            <p class="bnr_tit"> <a href="/DrMarten/sandal" class="db fz36 fw400 mb10">
			        			닥터마틴 샌들과 함께 완성하는 트렌디한 여름 <svg width="17" height="29" version="1.1" viewBox="0 0 28 47" class="ml5"><path pid="0" fill="#111" fill-rule="evenodd" d="M5.014 46.634l-4.165-4.23L19.51 23.628.849 4.854 5.014.623l22.867 23.005L5.014 46.634z"></path></svg>
			        		</a> <strong class="db fz64 fw700 mb60">샌들 스페셜 혜택 10%</strong> </p>
                            <div class="black_line long"></div>
                            <div class="black_line short"></div>
                        </div><img src="/resources/img/main/all_access_summer.jpg" alt="">
                        <div class="inner"> <a href="/DrMarten/sandal" class="cmBtn line hover mid">자세히 보기<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a> </div>
                    </div>
                    <!-- <div id="visual2">
		        	<img src="/resources/img/main/all_access_summer.jpg" alt="">
			        <div class="inner">
			            <button type="button" class="view_more">자세히 보기 <i class="fa-solid fa-chevron-right"></i> </button>
			        </div>
			    </div> -->
                    <!-- //샌들 스페셜 -->
                    <!-- 카테고리 -->
                    <div class="category">
                        <div class="inner">
                            <div class="category_item">
                                <div class="img_wrap"> <img src="/resources/img/main/category1.jpg" alt=""> </div>
                                <div class="text"> <strong class="db fz64 fw700 cfff mb40">여성</strong> <a href="/DrMarten/product/category/female" class="cmBtn line hover mid white">바로가기<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a> </div>
                            </div>
                            <div class="category_item">
                                <div class="img_wrap"> <img src="/resources/img/main/category2.jpg" alt=""> </div>
                                <div class="text"> <strong class="db fz64 fw700 cfff mb40">남성</strong> <a href="/DrMarten/product/category/male" class="cmBtn line hover mid white">바로가기<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a> </div>
                            </div>
                            <div class="category_item">
                                <div class="img_wrap"> <img src="/resources/img/main/category3.jpg" alt=""> </div>
                                <div class="text"> <strong class="db fz64 fw700 cfff mb40">오리지널 부츠</strong> <a href="/DrMarten/product/category/boots" class="cmBtn line hover mid white">바로가기<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a> </div>
                            </div>
                            <div class="category_item">
                                <div class="img_wrap"> <img src="/resources/img/main/category4.jpg" alt=""> </div>
                                <div class="text"> <strong class="db fz64 fw700 cfff mb40">오리지널 슈즈</strong> <a href="/DrMarten/product/category/shoes" class="cmBtn line hover mid white">바로가기<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a> </div>
                            </div>
                            <!-- <div class="category_item">
                                <div class="img_wrap"> <img src="/resources/img/main/category5.jpg" alt=""> </div>
                                <div class="text"> <strong class="db fz64 fw700 cfff mb40">EXPLORE</strong> <a href="javascript:;" class="cmBtn line hover mid white">바로가기<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a> </div>
                            </div>
                            <div class="category_item">
                                <div class="img_wrap"> <img src="/resources/img/main/category6.jpg" alt=""> </div>
                                <div class="text"> <strong class="db fz64 fw700 cfff mb40">BRAND</strong> <a href="javascript:;" class="cmBtn line hover mid white">바로가기<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a> </div>
                            </div> -->
                        </div>
                    </div>
                    <!-- //카테고리 -->
                    <!-- 닥터마틴 멤버십 혜택 -->
                    <div class="membership">
                        <div class="inner"> <strong class="title big mb50">닥터마틴 멤버십 혜택</strong>
                            <div class="wrap">
                                <div class="harf"> <img src="/resources/img/main/mem1.jpg" alt="">
                                    <div class="text_wrap"> <strong class="sml">무료 사이즈 1회 교환</strong> <span class="gray">구매시 20% 적립금 사용 가능<br>구매하면 최대 20% 적립</span> <a href="/DrMarten/user/signUp" class="cmBtn line hover mid">가입하러 가기<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a> </div>
                                </div>
                                <div class="harf"> <img src="/resources/img/main/mem2.jpg" alt="">
                                    <div class="text_wrap"> <strong class="sml">친구 초대시 5천원</strong> <span class="gray">회원 가입시 추천인 아이디 입력하면<br>친구랑 나랑 모두 5천원 적립금</span> <a href="/DrMarten/benefits" class="cmBtn line hover mid">자세히 보기<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- //닥터마틴 멤버십 혜택 -->
                    <!-- WELCOME -->
                    <div class="welcome_wrap"></div>
                    <!-- //WELCOME -->
                    <!-- 부츠 -->
                    <div class="original_boots_wrap"></div>
                    <!-- //부츠 -->
                    <!-- 관리법 -->
                    <div class="banner pt100 pb60">
                        <div class="inner">
                            <p class="bnr_tit"> <a href="/DrMarten/balsam" class="db fz36 fw400 mb10">
			        			HOW TO USE WONDER BALSAM <svg width="17" height="29" version="1.1" viewBox="0 0 28 47" class="ml5"><path pid="0" fill="#111" fill-rule="evenodd" d="M5.014 46.634l-4.165-4.23L19.51 23.628.849 4.854 5.014.623l22.867 23.005L5.014 46.634z"></path></svg>
			        		</a> <strong class="db fz64 fw700 mb60">원더발삼 관리법</strong> </p>
                            <div class="black_line long"></div>
                            <div class="black_line short"></div>
                        </div><img src="/resources/img/main/how_to_use.jpg" alt="">
                        <div class="inner"> <span class="wonder_balsam">원더 발삼은 가죽을 튼튼하고 유연하게 하며, 오랫동안 신을 수 있게 해줍니다.<br>
단계별 관리 방법을 알아보세요!</span>
                            <br> <a href="/DrMarten/balsam" class="cmBtn line hover mid">자세히 보기<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a> </div>
                    </div>
                    <!-- //관리법 -->
                    <!-- 역사 -->
                    <div class="drmarten_history"></div>
                    <!-- //역사 -->
                    <!-- 신규회원 -->
                    <div class="new_join_wrap">
                        <div class="main_inner cf">
                            <div class="new_join_left">
                                <p class="new_join_tit fz36 fw700 cfff">신규가입 혜택</p>
                                <p class="new_join_txt fz18 c999">신규 회원으로 가입하고 10% 쿠폰과 최신 소식을 받아보세요.</p>
                            </div>
                            <div class="new_join_right"> <a href="/DrMarten/user/signUp" class="cmBtn yellow fz18 fw700">회원가입</a> </div>
                        </div>
                    </div>
                    <!-- //신규회원 -->
                </main>
            </div>
            <div class="addCart_modal">
                <div class="modal_window">
                    <div class="modal_wrap">
                        <p class="modal_sub_title fz20">장바구니 담기</p>
                        <br>
                        <div class="product_info"> </div>
                        <div class="size_wrap">
                            <div class="modal_close_btn"><i class="fa-solid fa-xmark"></i></div>
                            <p class="modal_sub_title bold_line">사이즈</p>
                            <br>
                            <div class="fz16 fw500 size_btn">220</div>
                            <div class="fz16 fw500 size_btn">230</div>
                            <div class="fz16 fw500 size_btn">240</div>
                            <div class="fz16 fw500 size_btn">250</div>
                            <div class="fz16 fw500 size_btn">260</div>
                            <div class="fz16 fw500 size_btn">270</div>
                            <div class="fz16 fw500 size_btn">280</div>
                            <div class="fz16 fw500 size_btn">290</div>
                            <br>
                            <p class="modal_sub_title bold_line">수량</p>
                            <br>
                            <input type="number" name="product_count" id="count" class="count" min="1" value="1" onkeyup="javascript:price_key()">
                            <button type="button" class="count_btn fz36" onclick="javascript:down_btn()">-</button>
                            <button type="button" class="count_btn fz36" onclick="javascript:up_btn()">+</button>
                            <br>
                            <p class="modal_sub_title bold_line">가격
                                <p>
                                    <div class="price_wrap">
                                        <p class="modal_sub_title"><span class="price">170,000</span>원</p>
                                        <br>
                                        <button type="button" class="cart_btn">장바구니 담기</button>
                                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //메인 끝 -->
        <!--  -->
        <jsp:include page="/WEB-INF/JSP/include/footer.jsp" />