<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/signup.css?after" rel="stylesheet">
<title>회원가입</title>
</head>
<body>
	<!-- 로고 -->
	<img alt="logo" src="../resources/img/LOGO_FULL.png">
	<!-- 회원가입 입력 폼 -->
	<form action="" method="post">
		<!-- <h2>회원가입</h2> -->
		<h4 class="w3">아이디</h4><br>
		<input type="text" name="id" placeholder="아이디 입력" id="id">
		<button type="button" name="checkId" class="checkid">중복 확인</button><br>
		
		<h4 class="w4">비밀번호</h4><br>
		<input type="password" name="pw" placeholder="8자리 이상" id="pw"><br>
		
		<h4 class="w6">비밀번호 확인</h4><br>
		<input type="password" name="pw" placeholder="비밀번호 확인" id="pwpw"><br>
		
		<h4 class="w2">이름</h4><br>
		<input type="text" name="name" placeholder="이름 입력" id="name"><br>
		
		<h4 class="w4">생년월일</h4><br>
		<input type="number" name="birth" placeholder="8자리 입력" id="birth"><br>
		
		<h4 class="w3">이메일</h4><br>
		<input type="email" name="email" placeholder="이메일 입력" id="em"><br>
		
		<h4 class="w2">성별</h4><br>
		<div class="text">
		여<input type="checkbox" name="sex" id="cb1">
		남<input type="checkbox" name="sex" id="cb2">
		</div><br><br><br><br>
		
		<!-- 가입하기 버튼 (로그인 화면 이동) -->
		<button type="button" name="signup" class="signBtn" onclick="location.href='http://localhost:9090/login'">가입하기</button>
	</form>
</body>
</html>