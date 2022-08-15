function down_btn() {
	var temp = document.getElementById('count').value;
	var intemp = Number(temp)-1;
	if(intemp<=0){
		document.getElementById('count').setAttribute("value",0);
	}else{
	document.getElementById('count').setAttribute("value",intemp);
	}
}
function up_btn() {
	var temp = document.getElementById('count').value;
	var intemp = Number(temp)+1;
	document.getElementById('count').setAttribute("value",intemp);
	
}