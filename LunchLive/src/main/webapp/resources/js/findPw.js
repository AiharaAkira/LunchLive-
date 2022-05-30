$(function() {
	//비번찾기 확인
	$("#fp_submit_btn").click(function() {
		var u_id = $("#u_id").val();
		$.ajax({
			url : 'http://localhost/lunchlive/account.idCheckOnFind?u_id=' + u_id,
			type : 'post',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : " + data);
				if (data == 0 && u_id) {
					alert("존재하지 않는 아이디 입니다.");
					location.href='http://localhost/lunchlive/findPw.go';
				}else{
					console.log("비번찾기");
					
					
				}
			},
			error : function() {
				console.log("실패");
			}
		});
	});
});




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


