<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="resources/css/list.css" type="text/css">
<title>약 리스트</title>
</head>
<body>
	<header>
		<!-- 검색 창 -->
		<div>
			<a href="main" style="text-decoration-line: none;"> <img
				src="resources/img/left_arrow.png" alt="화살표" id="arrow"
				onclick="history_back()" /></a>
			<script>
				function history_back() {
					history.back()
				}
			</script>
			<div id="search">
				<input type="text" placeholder="의약품명을 입력해주세요" class="text" /> <img
					src="resources/img/search.png" alt="" id="icon" onclick="search()" />
			</div>
		</div>
	</header>
	<div style="margin-top: 50px;">
		<p>
			<span style="color: red; font-size: 5px;">●</span>복용금지
		</p>
		<!-- List -->
		<div id="pillList">
			<ul>
				<li><img src="resources/img/LOGO_FULL.png" alt="" id="sub"
					width="100" height="50"></li>
				<li>
					<div class="company">회사이름</div>
					<div class="title">약이름</div>
				</li>
				<li><img src="resources/img/next.png" width="25" height="25"
					id="next"></li>
			</ul>
			<hr>
		</div>
	</div>

	<script>
		const text = document.getElementsByClassName("text")[0];
		const btn = document.getElementById("icon");

		function search() {
			if (!text.value) {
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