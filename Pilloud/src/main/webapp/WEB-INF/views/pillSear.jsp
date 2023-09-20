<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/pillSear.css" type="text/css">
<meta charset="EUC-KR">
<title>Pill name search Page</title>
</head>
<body>
	<header>
		<!-- 검색 창 -->
		<div>
			<a href="main" style="text-decoration-line: none;"> <img
				src="resources/img/left_arrow.png" alt="화살표" id="arrow" /></a>
			<div id="search">
				<input type="text" placeholder="의약품명을 입력해주세요" class="text"/> <img
					src="resources/img/search.png" alt="" id="icon" onclick="search()" />
			</div>
		</div>
	</header>
	
	<script>
		const text = document.getElementsByClassName("text")[0];
		const btn = document.getElementById("icon");
		
		function search() {
			if(!text.value) {
				alert("검색하실 의약품명을 입력해주세요.");
			}
		}
	</script>
	
	<!-- footer -->
	<div class="footer">
		<hr>
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" />
		</a>
	</div>
</body>
</html>