
 $(window).ready(function(){
	
	//scrollTop
	$("#footer .gotoTop").on("click", function(e){
		e.preventDefault();
		$('html, body').animate({scrollTop: 0}, 300);
	})
	
	
	//nav_open
	var h = $(window).innerHeight();
	$("#header .category_menu").on("click", function(){
		document.documentElement.style.overflowY = "hidden";
		document.documentElement.style.overflowX = "hidden";
		$("html, body").css({height:h});
		$("#nav").stop().show();
	})
	//nav_close
	$("#nav .gnb_close").on("click", function(){
		document.documentElement.style.overflowY = "auto";
		document.documentElement.style.overflowX = "auto";
		$("html, body").css({height:'100%'});
		$("#nav").stop().hide();
	})
	
	
	//gnb_scroll - menu
	var swiper = new Swiper("#MainGnb .gnb_menu_wrap", {
		direction: "vertical",
		slidesPerView: "auto",
		freeMode: true,
		scrollbar: {
		  el: ".gnb_menu_scroll",
		},
		mousewheel: true,
	});
	
	$(".swiper-vertical .swiper-scrollbar-drag").hide();
	$("#MainGnb .gnb_menu").on('mousewheel', function() {
		$(".swiper-vertical .swiper-scrollbar-drag").stop().fadeIn(100);
	});
	
	//gnb_scroll - evt
	var swiper = new Swiper("#MainGnb .gnb_evt_wrap", {
		direction: "horizontal",
		slidesPerView: "auto",
		freeMode: true,
		scrollbar: {
		  el: ".gnb_menu_scroll",
		},
		mousewheel: true,
	});
	
	
	//gnb slideToggle
	/*
	$("#MainGnb .gnb_list li > ul").hide();
	$("#MainGnb .gnb_list li > p").click(function(){
		if ($(this).next("ul").css("display")=="none" ) {
	        $(this).next("ul").slideDown();
	    }
	    else {
	        $(this).next("ul").slideUp();
	    }
	})
	*/
	
	
})