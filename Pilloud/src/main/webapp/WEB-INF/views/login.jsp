<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/login.css?after" rel="stylesheet">
<title>로그인</title>
</head>
<body>
	<!-- 뒤로가기 -->
	<img alt="" src="../resources/img/back_btn.png" class="backBtn">

	<!-- 로고 -->
	<img alt="logo" src="../resources/img/LOGO_FULL.png" class="logo">
	<!-- 로그인 입력 폼 -->
	<form action="" method="post">
		<!-- <h2>로그인</h2> -->
		<h4 class="w3">아이디</h4><br>
		<input type="text" name="id" placeholder="아이디 입력" id="id"><br>
		
		<h4 class="w4">비밀번호</h4><br>
		<input type="password" name="pw" placeholder="비밀번호 입력" id="pw">
		<br><br><br><br>
	
		<!-- 로그인 버튼(메인화면으로 이동) -->
		<button type="button" name="login" class="logBtn">로그인</button>
	</form>
</body>
</html>