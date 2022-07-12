<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="resources/img/web_icon_ll.png">
<title>LunchLive!</title>

<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/reset.css">

 <link rel="stylesheet" href="resources/css/card.css">
 <link rel="stylesheet" href="resources/css/loginBtn.css">
 <link rel="stylesheet" href="resources/css/faq.css">
 <link rel="stylesheet" href="resources/css/rullet.css">
 <link rel="stylesheet" href="resources/css/sadari.css">

<!-- NotoSans font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<!-- NotoSans font End-->

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=60d3d5b568586bcc670fec01a1366483"></script>

<script src="resources/js/scroll.js"></script>
<!--  <script src="/js/jquery-3.6.0.min.js"></script>-->
<!-- <script src="/js/map_cons.js"></script> -->
<script src="resources/js/kakaomap.js"></script>
<script src="resources/js/card.js"></script>
<script src="resources/js/rullet.js"></script>
<script src="resources/js/sadari.js"></script>
<script src="resources/js/faq.js" type="text/javascript"></script>
<script src="resources/js/like.js" type="text/javascript"></script>

<!--<script src="resources/js/sadariGame.js"></script>  -->

</head>
<body>
	<div id="wrap">
		<header class="header">
			<label onclick="fnMove('1')"> <img
				src="resources/img/ll_logo.png" style="width: 70px;">
			</label>
			<div class="right-items">
				<button class="header_btn" onclick="fnMove('1')">LunchLive</button>
				<button class="header_btn" onclick="fnMove('2')">Map</button>
				<button class="header_btn" onclick="fnMove('3')">Game</button>
				<button class="header_btn" onclick="fnMove('4')">Comunity</button>
				<button class="header_btn" onclick="fnMove('5')">FAQ</button>
				<!--  <button id="login_btn" class="header_btn" onclick="location.href='http://localhost:8080/lunchlive/login.do'" >Login</button> -->
				<jsp:include page="${login}"></jsp:include>
			</div>
		</header>
		<!-- main 페이지 -->
		<div id="div1" class="contents">
			<div class="back">
				<p>LunchLive!!</p>
			</div>
			<img src="resources/img/sky.jpg">
		</div>
		
		<!-- Map, MapRoadView 페이지 -->
		<div id="div2" class="contents">
			<input id="search" placeholder="검색!!" style="margin-top: 70px;">
			<div class="map_wrap">
				<div id="map1">
					<div id="map" style="width: 100%; height: 100%;"></div>
				</div>
				<div id="map2">
					<div id="roadview" style="width: 100%; height: 100%"></div>
				</div>
			</div>
			<div>
				<button onclick="halfSize()">RoadView 보기</button>
				<button onclick="defaultSize()">RoadView 닫기</button>
			</div>
		</div>
		
		<!-- 게임 페이지 -->
		<div id="div3" class="contents">
			<!-- 카드 -->
			<ul class="slides">
				<input type="radio" name="radio-btn" id="img-1" checked />
				<li class="slide-container">
					<div class="slide">
						<div id="g_form" style="margin-top: 120px">
							<button id="kfood" class="card" name="pw" value="한식">
								<img alt="" src="resources/img/cardImg.png">
							</button>

							<button id="cfood" class="card" name="pw" value="중식">
								<img alt="" src="resources/img/cardImg.png">
							</button>

							<button id="jfood" class="card" name="pw" value="일식">
								<img alt="" src="resources/img/cardImg.png">
							</button>

							<button id="efood" class="card" name="pw" value="양식">
								<img alt="" src="resources/img/cardImg.png">
							</button>

							<button id="vfood" class="card" name="pw" value="베트남">
								<img alt="" src="resources/img/cardImg.png">
							</button>

							<button id="mfood" class="card" name="pw" value="분식">
								<img alt="" src="resources/img/cardImg.png">
							</button>
						</div>
					</div>
					<div class="nav">
						<label for="img-3" class="prev">&#x2039;</label> <label
							for="img-2" class="next">&#x203a;</label>
					</div>
				</li>

				<!-- 룰렛 -->
				<input type="radio" name="radio-btn" id="img-2" />
				<li class="slide-container">
					<div class="slide">
						<div class="rouletter">
							<div class="rouletter-bg">
								<div class="rouletter-wacu"></div>
							</div>
							<div class="rouletter-arrow"></div>
							<button class="rouletter-btn">start</button>
						</div>
					</div>
					<div class="nav">
						<label for="img-1" class="prev">&#x2039;</label> <label
							for="img-3" class="next">&#x203a;</label>
					</div>
				</li>

				<!-- 사다리 -->
				<input type="radio" name="radio-btn" id="img-3" />
				<li class="slide-container">
					<div class="slide">
                      	<div class="wrap">
						    <div id="div_step1">
						        <div class="label">사다리 게임!</div>
						        <div class="p_num">
						            <label>인원수 선택</label>
						            <select id="sel_num">
						                <option value="2">2명</option>  
						                <option value="3">3명</option>
						                <option value="4" selected >4명</option>
						                <option value="5">5명</option>
						                <option value="6">6명</option>
						            </select>
						            <button class="c_btn" type="button" value="만들기" onclick="Yl.init();">
						            	만들기
						            </button>
						        </div>
						        
						    </div>
						    
						    <div id="div_step2" style="display:none; text-align: center;">
						        <div class="label">사다리 게임!</div>
						        <div class="p_start">
						            	입력후 게임 시작 <button class="c_btn" type="button" value="시작" onclick="Yl.create();">
						            					시작
						            				</button>
						        </div>
						        
						    </div>
						     
						    <div id="div_body" style="width:1000px;height:450px;border:1px solid #CCCCCC;position:relative;"></div>
						</div>
                    </div>
                <div class="nav">
                  <label for="img-2" class="prev">&#x2039;</label>
                  <label for="img-1" class="next">&#x203a;</label>
                </div>
                </li>
            
                <li class="nav-dots">
                  <label for="img-1" class="nav-dot" id="img-dot-1"></label>
                  <label for="img-2" class="nav-dot" id="img-dot-2"></label>
                  <label for="img-3" class="nav-dot" id="img-dot-3"></label>
                </li>
            </ul>
        </div>
        
        <!-- 커뮤니티 -->
        <div id="div4"  class="contents">
        	<table border="1">
				<c:forEach var="c" items="${ communities}">
					<tr>
						<td onclick="location.href='http://alsdn3795.cafe24.com/detail.go?c_no='+${c.c_no}">|${c.c_title}</td>
						<td>|${c.c_contents}</td>
						
						<td>
						<input id="like_hidden_c_no" type="hidden" value="${c.c_no}">
						<input id="like_hidden_u_id" type="hidden" value="${sessionScope.loginAccount.u_id}">
						|
						<c:choose>
						
					<%-- 	<c:when test="${not empty likeChecked}">
						
						<button  class ="like_btn_first" value="${c.c_no}">
						<img id="like_img" src="resources/img/likeon.png" style="width:30px">
						</button>
						
						</c:when> --%>
						
						<c:when test="${sessionScope.loginAccount != null}">
						
						<button  class ="like_btn_first" value="${c.c_no}">
						<img id="like_img" src="resources/img/likeon.png" style="width:30px">
						</button>

						</c:when>
						<c:otherwise>
						<button>
						<img id="like_img${c.c_no}" src="resources/img/likeon.png" style="width:30px">
						</button>

						</c:otherwise>
						</c:choose>
						 <span id="c_like${c.c_no}">${c.c_like}</span>
						</td>
						<td>|<fmt:formatDate value="${c.c_date}" pattern="yyyy.MM.dd"/></td>
					</tr>
				</c:forEach>
			</table>
			
			<c:if test="${sessionScope.loginAccount != null}"><div><button onclick = "location.href='http://alsdn3795.cafe24.com/write.go'">글쓰기</button></div></c:if>
        </div>
        
        <!-- FAQ 페이지 -->
        <div id="div5"  class="contents">
        	<div id="box_qna">
        		<ul>
		            <li class="faq_question">
		                <span class="faq_txt">❔회원탈퇴를 하고 싶어요!</span>
		            </li>
		            <li class="faq_answer">
		                <span class="faq_txt"> 
		                	✔탈퇴를 하시기 위해서는 보안상의 문제로 인하여, 반드시 로그인을 하셔야 회원탈퇴가 가능합니다. ※로그인 후의 이 자리에 있는 탈퇴버튼으로 탈퇴 하실 수 있습니다.
		                    <c:if test="${sessionScope.loginAccount != null}">
		                    <button id="withdrawal_Btn" onclick="location.href='http://alsdn3795.cafe24.com/withdrawal.go'">회원탈퇴</button>
		                    </c:if>
		                </span>
		            </li>
		            
		            <li class="faq_question">
		                <span class="faq_txt">❔회원탈퇴 후 유저 정보가 보관되는 기간에 대해서 궁금합니다. </span>
		            </li>
		            <li class="faq_answer">
		                <span class="faq_txt">
		                	✔런치라이브는 회원탈퇴된 유저정보를 보관하고 있지 않습니다. 회원 탈퇴된 순간과 동시에 유저정보는 삭제 됩니다.
		                </span>
		            </li>
		            
		            <li class="faq_question">
		                <span class="faq_txt">❔버그제보는 어디서 하나요? </span>    
		            </li>
		            <li class="faq_answer">
		                <span class="faq_txt">
		                	✔런치라이브에서는 커뮤니티페이지에서 버그제보에대해서 작성하시면 런치라이브 관리자가 확인 후 담당자에게 전달됩니다.(최대 1달 소요)
		                </span>
		            </li>
		            
		            <li class="faq_question">
		                <span class="faq_txt">❔회원 가입시 입력한 개인 정보는 상업적으로 이용되나요? </span>
		            </li>
		            <li class="faq_answer">
		                <span class="faq_txt">
		                	✔런치라이브에서는 유저분들의 회원정보를 절대로 상업적으로 이용하지 않습니다.                    
		                </span>
		            </li>
		            
            		<li class="faq_question">
	            		<span class="faq_txt">❔부적절한 게시물을 발견하였습니다.</span>
            		</li>
		            <li class="faq_answer">
			            <span class="faq_txt">
			            	✔부적절한 게시물(자극적이며 성적인 컨텐츠, 폭력적인 게시물, 종교적인 내용을 지닌 게시물, 남을 비하하는 게시물 등)은 신속히 제거할려고 조치하고 있습니다. 혹시라도 대처가 늦게 되어, 유저 여러분들에게 불쾌감을 드린 점은 사과드립니다.
			            </span>
		            </li>
		            
            		<li class="faq_question">
	            		<span class="faq_txt">❔런치라이브에서 제공하는 서비스에 대해서 궁금합니다.</span>
            		</li>
		            <li class="faq_answer">
		            	<span class="faq_txt">
		            		✔런치라이브는 직장인, 학생분들과 같이 점심 메뉴를 고르기 힘들어 하는 분들을 위해서 점심메뉴를 편하게 결정하기 위한 서비스를 제공하고 있습니다. 먼저, 가게명을 알고 계실 경우 가게 위치를 찾을 수 있는
		                	지도 기능을 제공해 드리고 있습니다. 또한, 점심메뉴의 결정을 돕기위한 여러 게임들 또한 서비스의 일부 입니다. 마지막으로, 회원이신 유저 여러분의 의견을 수렴 받기 위하여 커뮤니티 기능을 제공하고 있습니다.
		            	</span>
		            </li>
		            
            		<li class="faq_question">
            			<span class="faq_txt">❔회원 복구에 관하여 궁금합니다.</span>
            		</li>
            		<li class="faq_answer">
            			<span class="faq_txt">
            				✔런치라이브에서는 절대로 회원 탈퇴한 유저 여러분들의 정보를 보관하고 있지 않습니다.  따라서, 회원 탈퇴후에는 이전과 동일한 닉네임과 아이디로 재가입 하시는 것 외에는 어떠한 경우에도 
			               	복구를 받으실 수 없다는 점 양해부탁드립니다.
			       		</span>
			       	</li>
        		</ul>
        	</div>
        </div>
    </div>
</body>
<script>
	function halfSize() {
		map1.style.width = "50%";
		map1.style.height = "100%";
		map2.style.width = "50%";
		map2.style.height = "100%";
		map1.style.transition = ".5s";
		map2.style.transition = ".5s";
	}
	function defaultSize() {
		map1.style.width = "100%";
		map1.style.height = "100%";
		map2.style.width = "0";
		map2.style.height = "0";
		div2.style.transition = ".5s";
		map1.style.transition = ".5s";
		map2.style.transition = ".5s";
	}
</script>



</html>