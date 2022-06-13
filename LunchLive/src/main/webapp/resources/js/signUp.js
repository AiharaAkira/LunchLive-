let cntId = 2;
let cntNick = 2;

$(function() {
// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
	$("#idck").click(function() {
		var u_id = $('#u_id').val();
		$.ajax({
			url : 'http://alsdn3795.cafe24.com/account.idCheck?u_id=' + u_id,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : " + data);
				
				if (data == 1) {
					// 1 : 아이디가 중복되는 문구
					cntId == 1;
					alert("사용중인 아이디입니다 .");
				} else {
					cntId = 0;
					alert("사용가능한 아이디입니다 .");
				}
			},
			error : function() {
				console.log("실패");
			}
		});
	});
	
	//닉네임 중복성 검사
	$("#nicknameck").click(function() {
		var u_nickname = $('#u_nickname').val();
		$.ajax({
			url : 'http://alsdn3795.cafe24.com/account.nicknameCheck?u_nickname=' + u_nickname,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : " + data);

				if (data == 1) {
					// 1 : 아이디가 중복되는 문구
					cntNick==1;
					alert("사용중인 닉네임입니다 .");
				} else {
					cntNick = 0;
					alert("사용가능한 닉네임입니다 .");
				}
			},
			error : function() {
				console.log("실패");
			}
		});
	});
	
	$('#u_id').keyup(function() {
		cntId = 2;
		
	});
	
	$('#u_nickname').keyup(function() {
		cntNick = 2;
		
	});
	
	
});



