function down_btn() {
	var temp = document.getElementById('count').value;
	console.log(temp);
	var intemp = Number(temp)-1;
	if(intemp<=0){
		document.getElementById('count').value=1;
	}else{
	document.getElementById('count').value=intemp;
	}
	
	var str_price = document.getElementById('set_price').value.replace(/,/g,"");
	var int_price = Number(str_price)*intemp;
	var res = new Intl.NumberFormat().format(int_price);
	
	document.getElementById('res_price').textContent=res;
}
function up_btn() {
	var temp = document.getElementById('count').value;
	var intemp = Number(temp)+1;
	document.getElementById('count').value=intemp;
	
	var str_price = document.getElementById('set_price').value.replace(/,/g,"");
	var int_price = Number(str_price)*intemp;
	var res = new Intl.NumberFormat().format(int_price);
	
	document.getElementById('res_price').textContent=res;
}
function price_key(){
	var temp = Number(document.getElementById('count').value);
	var str_price = document.getElementById('set_price').value.replace(/,/g,"");
	var int_price = Number(str_price)*temp;
	var res = new Intl.NumberFormat().format(int_price);
	
	document.getElementById('res_price').textContent=res;
}
$(function(){
	$('.haveSize').on('click', function(){
		var size = $(this).text();
		$('#product_size').val(size);
		console.log($('#product_size').val());
	});

	
});