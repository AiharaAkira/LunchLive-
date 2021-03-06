$(function() {
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center : new kakao.maps.LatLng(37.556567, 126.943366), //지도의 중심좌표.
			level : 3
		//지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

		var roadviewContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
		var roadview = new kakao.maps.Roadview(roadviewContainer); //로드뷰 객체
		var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

		var position = new kakao.maps.LatLng(37.556567, 126.943366);

		// 특정 위치의 좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
		roadviewClient.getNearestPanoId(position, 50, function(panoId) {
			roadview.setPanoId(panoId, position); //panoId와 중심좌표를 통해 로드뷰 실행
		});

		function setZoomable(zoomable) {
		    // 마우스 휠로 지도 확대,축소 가능여부를 설정합니다
		    map.setZoomable(zoomable);    
		}
		
		setZoomable(false);
		
		//https://dapi.kakao.com/v2/local/search/keyword.json?

		$("#search").keyup(function(e) {
							if (e.keyCode == 13) {
								let search = $(this).val();

								$.ajax({
											url : "https://dapi.kakao.com/v2/local/search/keyword.json",
											data : {
												query : search,
												x : 37.556567,
												y : 126.943366,
												radius : 5000
											},
											beforeSend : function(req) {
												req.setRequestHeader(
																"Authorization",
																"KakaoAK 0172b72d9317e5bbb5d67b16667edd8a");
											},
											success : function(result) {
												console.log(result);
												console.log(JSON
														.stringify(result));
												let newY = 0;
												let newX = 0;
												newY = result.documents[0].y;
												newX = result.documents[0].x;

												$.each(result.documents,
																function(i, l) {
																	console.log(l.place_name);
																	console.log()

																	// 마커를 생성합니다
																	var marker = new kakao.maps.Marker(
																			{
																				map : map,
																				// 마커가 표시될 위치입니다 
																				position : new kakao.maps.LatLng(l.y,l.x)
																			});
																	
																	// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
																	var content = '<div class="customoverlay">' +
																	    '  <a href='+l.place_url+' target="_blank">' +
																	    l.place_name +
																	    '  </a>' +
																	    '</div>';

																	// 커스텀 오버레이가 표시될 위치입니다 
																	var position = new kakao.maps.LatLng(l.y,l.x);  

																	// 커스텀 오버레이를 생성합니다
																	var customOverlay = new kakao.maps.CustomOverlay({
																	    map: map,
																	    position: position,
																	    content: content,
																	    yAnchor: 1 
																	});
																});

												// 이동할 위도 경도 위치를 생성합니다 
												var moveLatLon = new kakao.maps.LatLng(newY, newX);
												// 지도 중심을 이동 시킵니다
												map.setCenter(moveLatLon);
											    // 지도 중심을 부드럽게 이동시킵니다
											    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
											    map.panTo(moveLatLon); 
												

												// 마커가 지도 위에 표시되도록 설정합니다
												//marker.setMap(map);

												// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
												// marker.setMap(null);    

											}

										});

							}
						});

	});