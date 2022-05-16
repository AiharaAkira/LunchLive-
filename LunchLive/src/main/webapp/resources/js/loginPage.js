let u_id = document.getElementById('input_login_id');
let u_pw = document.getElementById('input_login_pw');

function call(){

	
	if(isEmpty(u_id)){
		alert("아이디를 입력해주세요.");
		u_id.value = "";
		u_id.focus();
		return false;
	}
	if(isEmpty(u_pw)){
		alert("비밀번호를 입력해주세요.");
		u_pw.value = "";
		u_pw.focus();
		return false;
	}
	return true;
	
}


$(function() {
	//아이디 pw확인
	$("#login_btn").click(function() {
		var u_id = $('#input_login_id').val();
		var u_pw = $('#input_login_pw').val();
		$.ajax({
			url : 'http://localhost/lunchlive/account.idPwCheck?u_id=' + u_id+'&u_pw='+u_pw,
			type : 'post',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : " + data);
				if (data == 0) {
					alert("아이디 혹은 비밀번호가 잘못 되었습니다.");
					location.href='http://localhost/lunchlive/login.do';
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








