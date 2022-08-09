
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
		$("html, body").css({height:h});
		$("#nav").stop().show();
	})
	//nav_close
	$("#nav .gnb_close").on("click", function(){
		document.documentElement.style.overflowY = "auto";
		$("html, body").css({height:'100%'});
		$("#nav").stop().hide();
	})
	
	
})