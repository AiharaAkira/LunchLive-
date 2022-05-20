
let u_id = document.getElementById('u_id');
let u_pw = document.getElementById('u_pw');
let u_pwCheck = document.getElementById('u_pwCheck');
let u_nickname = document.getElementById('u_nickname');

function call() {
	
	//아이디
	if(isEmpty(u_id) ){
		alert("아이디를 확인해 주세요");
		u_id.value = "";
		u_id.focus();
		return false;
	}
	
	//비밀번호: 빈칸x 영어+숫자+특수문자 + 공백x 8자이상
	if (isEmpty(u_pw) ) {
		alert("비밀번호를 확인해 주세요");
		u_pw.value = "";
		u_pw.focus();
		return false;
	}
	//비밀번호확인
	if (equalCheck(u_pw, u_pwCheck)||isEmpty(u_pwCheck)) {
		alert("상위의 비밀번호와 동일한 값을 입력해 주세요.");
		u_pwCheck.value = "";
		u_pwCheck.focus();
		return false;
	}
	
	//닉네임: 빈칸x 한글+영어+숫자 공백x 10자~20자
	if (isEmpty(u_nickname)) {
		alert("닉네임을 확인해주세요.");
		u_nickname.value = "";
		u_nickname.focus();
		return false;
	}
	
	
	alert('회원탈퇴 되었습니다. 감사합니다!');
	return true;
	
}



$(function() {
	//중복 id pw확인
	$("#withdrawal_btn").click(function() {
		var u_id = $("#u_id").val();
		var u_pw = $("#u_pw").val();
		var u_pwCheck = $("#u_pwCheck").val();
		var u_nickname = $("#u_nickname").val();
		$.ajax({
			url : 'http://localhost/lunchlive/account.idPwNicknameCheck?u_id=' + u_id+'&u_pw='+u_pw+'&u_pwCheck='+u_pwCheck+'&u_nickname='+u_nickname,
			type : 'post',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : " + data);
				if (data == 0 && u_id && u_pw && u_nickname && u_pwCheck) {
					alert("존재하지 않는 회원 입니다.");
					location.href='http://localhost/lunchlive/withdrawal.go';
				}else{
					
				}
			},
			error : function() {
				console.log("실패");
			}
		});
	});
});


