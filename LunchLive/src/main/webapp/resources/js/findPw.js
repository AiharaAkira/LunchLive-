var cnt = 0;

let u_id = document.getElementById('u_id');
let u_pw = document.getElementById('u_pw');
let u_pwCheck = document.getElementById('u_pwCheck');

function call(){
	
	if(isEmpty(u_id)){
		alert("아이디를 입력해주세요.");
		u_id.value = "";
		u_id.focus();
		return false;
	}
	
	if(isEmpty(u_pw)||CheckPassword(u_pw.value)){
		alert("비밀번호를 확인해주세요.");
		u_pw.value = "";
		u_pw.focus();
		return false;
	}
	
	if(isEmpty(u_pwCheck)||equalCheck(u_pw, u_pwCheck)){
		alert("비밀번호를 확인해주세요.");
		u_pwCheck.value = "";
		u_pwCheck.focus();
		return false;
	}
	
	let result = confirm('비밀번호를 변경하시겠습니까?');
	
	return result;
	
}


$(function() {
	//비번찾기 확인
	
	$('#u_pw').keyup(function() {
		cnt = 0;
	});
	
	$('#u_pwCheck').keyup(function() {
		cnt = 0;
	});
	
	$("#fp_submit_btn").click(function() {
		var u_id = $("#u_id").val();
		$.ajax({
			url : 'http://alsdn3795.cafe24.com/account.idCheckOnFind?u_id=' + u_id,
			type : 'post',
			success : function(data) {
				
				if (data == 0 && u_id &&u_pw && u_pwCheck) {
					cnt = 0;
					alert("존재하지 않는 아이디 입니다.");
					location.href='http://alsdn3795.cafe24.com/findPw.go';
				}else{
					
					cnt = 1;
					
				}
				
			},
			error : function() {
				console.log("실패");
			}
		});
	});
	
	
	
	
});







