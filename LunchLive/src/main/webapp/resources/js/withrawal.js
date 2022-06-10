let cnt = 0;

$(function() {
	
	//중복 id pw확인
	$("#withdrawal_btn").click(function() {
		var u_id = $("#u_id").val();
		var u_nickname = $("#u_nickname").val();
		$.ajax({
			url : 'http://alsdn3795.cafe24.com/account.idPwNicknameCheck?u_id=' + u_id + '&u_nickname=' + u_nickname,
			type : 'post',
			success : function(data) {
				cnt = 0;
				console.log("1 = 중복o / 0 = 중복x : " + data);
				if (data == 0 && u_id && u_nickname ) {
					
					cnt = 0;
					alert("존재하지 않는 회원 입니다.");
					location.href='http://alsdn3795.cafe24.com/lunchlive/withdrawal.go';
				}else{
					
					cnt = 1;
					
					
				}
			},
			error : function() {
				cnt = 0;
				console.log("실패");
			}
		});
	});
});



let u_id = document.getElementById('u_id');
let u_nickname = document.getElementById('u_nickname');

function call() {
	
	//아이디
	if(isEmpty(u_id) ){
		alert("아이디를 확인해 주세요");
		u_id.value = "";
		u_id.focus();
		return false;
	}
	
	
	
	//닉네임: 빈칸x 한글+영어+숫자 공백x 10자~20자
	if (isEmpty(u_nickname)) {
		alert("닉네임을 확인해주세요.");
		u_nickname.value = "";
		u_nickname.focus();
		return false;
	}
	
	if(cnt == 0){
		return false;
	}
	
	let result = confirm('회원탈퇴 하시겠습니까? \n 그동안의 정보는 모두 삭제됩니다!');
	
	if(result == false){
		cnt = 0;
		return result;
	}else{
		
		return result;
	}
	
}




