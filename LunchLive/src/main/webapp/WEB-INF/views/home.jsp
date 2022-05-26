<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="resources/img/web_icon_ll.png">
	<title>LunchLive!</title>
	
	<link rel="stylesheet" href="resources/css/index.css">
    <link rel="stylesheet" href="resources/css/reset.css">
    
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dfb25f228d48f48fad51c0abe872c7f1"></script>

    <script src="resources/js/jquery-3.6.0.min.js"></script>
    <script src="resources/js/scroll.js"></script>
    <script src="resources/js/map_cons.js"></script>
    <script src="resources/js/kakaomap.js"></script>
    
</head>
<body>
	<div id="wrap">
        <header class="header">
            <label onclick="fnMove('1')">
              <img src="resources/img/lunchlive_logo.png" style="width: 70px;">
            </label>
            <div class="right-items">
                <button class="header_btn" onclick="fnMove('1')" >Main</button>
                <button class="header_btn" onclick="fnMove('2')" >Map</button>
                <button class="header_btn" onclick="fnMove('3')" >Game</button>
                <button class="header_btn" onclick="fnMove('4')" >Comunity</button>
                <button class="header_btn" onclick="fnMove('5')" >FAQ</button>
                <button id="login_btn" class="header_btn" onclick="" >Login</button>
            </div>
        </header>
        <!-- main 페이지 -->
        <div id="div1" class="contents">
            <div class="back">
            	<p>LunchLive!</p>
            </div>
            <img src="resources/img/sky.jpg">
        </div>

        <!-- Map, MapRoadView 페이지 -->
        <div id="div2"  class="contents">
            <div class="map_wrap">
                <div id="map1">
                	<div id="map" style="width: 100%; height: 100%;"></div>
                </div>
                <div id="map2">
                	<div id="roadview" style="width: 100%; height: 100%"></div>
                </div>
            </div>
            <div>
                <button onclick="halfSize()" >RoadView 보기</button>
                <button onclick="defaultSize()" >RoadView 닫기</button>
            </div>
        </div>

        

        <!-- 게임 페이지 -->
        <div id="div3"  class="contents">
            <ul class="slides">
                <input type="radio" name="radio-btn" id="img-1" checked />
                <li class="slide-container">
                <div class="slide">
                  <img src="resources/img/slide01.jpg" />
                    </div>
                <div class="nav">
                  <label for="img-3" class="prev">&#x2039;</label>
                  <label for="img-2" class="next">&#x203a;</label>
                </div>
                </li>
            
                <input type="radio" name="radio-btn" id="img-2" />
                <li class="slide-container">
                    <div class="slide">
                      <img src="resources/img/slide02.jpg" />
                    </div>
                <div class="nav">
                  <label for="img-1" class="prev">&#x2039;</label>
                  <label for="img-3" class="next">&#x203a;</label>
                </div>
                </li>
            
                <input type="radio" name="radio-btn" id="img-3" />
                <li class="slide-container">
                    <div class="slide">
                      <img src="resources/img/slide03.jpg" />
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
        <div id="div4"  class="contents">Comunity</div>
        
        <!-- FAQ 페이지 -->
        <div id="div5"  class="contents">FAQ</div>
    </div>
</body>
<script>
function halfSize(){
    map1.style.width="50%";
    map1.style.height="100%";
    map2.style.width="50%";
    map2.style.height="100%";
    map1.style.transition=".5s";
    map2.style.transition=".5s";
}
function defaultSize(){
    map1.style.width="100%";
    map1.style.height="100%";
    map2.style.width="0";
    map2.style.height="0";
    div2.style.transition=".5s";
    map1.style.transition=".5s";
    map2.style.transition=".5s";
}
</script>
</html>