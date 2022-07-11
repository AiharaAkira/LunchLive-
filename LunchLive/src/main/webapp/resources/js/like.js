
$(function() {
	
	
	$('.like_btn_first').click(function() {
		var u_id = $('#like_hidden_u_id').val();
		var c_no = $(this).val();
		console.log(c_no);
		
		
		$.ajax({
			url : "http://alsdn3795.cafe24.com/like.do?c_no=" + c_no + "&u_id="
					+ u_id,
			type : "get",
			success : function(data) {
				if (data == '1') {
					console.log('좋아요~');
					location.reload();
					return;
				} else if (data == '2') {
					console.log('좋아요~다운');
					location.reload();
					return;
				}
			},
			error : function() {
				alert('서버 통신 실패');
			}
		});
	});
});
 




function likeDo(c_no, u_id) {
	var c_no = c_no;
	var u_id = u_id;
	
}


