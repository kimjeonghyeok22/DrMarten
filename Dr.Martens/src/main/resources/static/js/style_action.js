
 $(window).ready(function(){
	
	//console.log("test");
	$("#footer .gotoTop").on("click", function(e){
		e.preventDefault();
		$('html, body').animate({ scrollTop: 0 }, 400);
	})
	
	
})