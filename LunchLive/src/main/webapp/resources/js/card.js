$(function(){
    $('.card').click(
        function(){

            var random = Math.floor((Math.random() * (6 - 1) + 1 ));
            console.log(random);
            var ra = "일식";
           if(random == 1){
            ra = "한식";
           }else if(random == 2){
            ra = "중식";
           }else if(random == 3){
            ra = "일식";
           }else if(random == 4){
            ra = "양식";
           }else if(random == 5){
            ra = "베트남 요리";
           }else if(random == 6){
            ra = "분식";
           }
           console.log(ra);
            alert('오늘의 추천 메뉴는 '+ra+' 입니다!!');
        }

    );
    
});