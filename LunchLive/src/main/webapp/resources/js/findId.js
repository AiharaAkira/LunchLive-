let u_nickname = document.getElementById('u_nickname');

function call(){

	
	if(isEmpty(u_nickname)){
		alert("닉네임을 입력해주세요.");
		u_nickname.value = "";
		u_nickname.focus();
		return false;
	}
	
	return true;
	
}


$(function() {
	//아이디 pw확인
	$("#login_btn").click(function() {
		var u_nickname = $('#u_nickname').val();
		$.ajax({
			url : 'http://localhost/lunchlive/account.nicknameCheckOnFind?u_nickname=' + u_nickname,
			type : 'post',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : " + data);
				if (data == 0) {
					alert("존재하지 않는 닉네임 입니다.");
					location.href='http://localhost/lunchlive/findId.go';
				}else{
					console.log("성공");
					
				}
			},
			error : function() {
				console.log("실패");
			}
		});
	});
});