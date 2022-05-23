let check1 = document.getElementById('check1');
let check2 = document.getElementById('check2');
let check3 = document.getElementById('check3');

function call(){

	
	if(notCheck(check1)||notCheck(check2)||notCheck(check3)){
		
		alert("모든 약관에 동의해 주세요.");
		
		return false;
	}
	
	return true;
	
}