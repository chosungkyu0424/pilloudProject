<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" session="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/main.css" type="text/css">
<meta charset="EUC-KR">
<title>Main Page</title>
</head>

<body>
	<!-- 로고 + 검색 창 -->
	<header>
	<div>
		<img src="resources/img/LOGO_FULL.png" alt="" id="logo" />
		<div id="search">
			<input type="text" placeholder="약품명을 입력해주세요" /> <img
				src="resources/img/search.png" alt="" id="icon" />
		</div>
	</div>
	</header>


	<!-- 1번째 줄 메뉴 -->
	<div id="fmenu">
		<a href="cbnsear" style="text-decoration-line:none;">
		<img src="resources/img/main/menu1.png" alt="주의사항" class="menu1" /> </a>
		<a href="pillSear" style="text-decoration-line:none;">
		<img src="resources/img/main/menu2.png" alt="의약품 검색" class="menu2" /> </a> 
		<a href="shapeSear" style="text-decoration-line:none;">
		<img src="resources/img/main/menu3.png" alt="모양으로 검색" class="menu3" /> </a>
	</div>
	
	<!-- 2번째 줄 메뉴 -->
	<div id="fmenu">
	
		<img src="resources/img/main/menu4.png" alt="약국찾기" class="menu4" />
		<a href="notice" style="text-decoration-line:none;">
		<img src="resources/img/main/menu5.png" alt="공지사항" class="menu5" /> </a>
		<img src="resources/img/main/menu6.png"  alt="건강정보추가" class="menu6" />
	</div>
	
	<!-- 하단 바 -->
	<footer>
		<hr style="background-color:lightgrey">
		<a href="main" style="text-decoration-line:none;">
		<img src="resources/img/main/home.png" alt="메인홈" class="home" /></a>
		<a href="news" style="text-decoration-line:none;">
		<img src="resources/img/main/news.png" alt="컬럼/시사" class="news" /></a>
		<img src="resources/img/main/my.png" alt="마이" class="my" />
	</footer>
</body>
</html>