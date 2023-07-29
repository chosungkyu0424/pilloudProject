<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/shapeSear.css" type="text/css">
<meta charset="EUC-KR">
<title>shape search Page</title>
</head>
<body>
	<header>
		<!-- 검색 창 -->
		<div>
			<a href="main" style="text-decoration-line: none;"> <img
				src="resources/img/left_arrow.png" alt="화살표" id="arrow" /></a>
			<div id="search">
				<input type="text" placeholder="약에 적힌 문자를 입력해주세요" /> <img
					src="resources/img/search.png" alt="" id="icon" />
			</div>
		</div>
	</header>

	<section>
		<form action="#">
			<select name="shape" id="shape_sel">
				<option value="">모양 선택</option>
				<option value="원형">원형</option>
				<option value="타원형">타원형</option>
				<option value="정방형">정방형</option>
			</select> 
			
			<select name="shape" id="formul_sel">
				<option value="">제형 선택</option>
				<option value="원형">정제</option>
				<option value="타원형">경질캡슐</option>
				<option value="정방형">연질캡슐</option>
			</select> 
			
			<select name="shape" id="div_sel">
				<option value="">분할선 선택</option>
				<option value="원형">없음</option>
				<option value="타원형">(+)형</option>
				<option value="정방형">(-)형</option>
			</select>
		</form>
	</section>

	<!-- footer -->
	<footer>
		<hr>
		<a href="main" style="text-decoration-line:none;">
		<img src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" /> </a>
	</footer>
</body>
</html>