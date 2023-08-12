<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/signlog.css?after" rel="stylesheet">
<title>로그인회원가입시작화면</title>
</head>
<body>
	<!-- 뒤로가기 -->
	<img alt="" src="../resources/img/back_btn.png" class="backBtn">

	<div class="container">
		<p class="header">
			<span style="color:#c4d89dff">의약품 검색</span>부터 <br>
			<span style="color:#c4d89dff">개인맞춤형 추천</span>까지 <br>
			편하게 누려보세요
		</p>
	</div>
	
	<!-- 카톡, 네이버, 애플로 시작하기 버튼 -->
	<div class="btns">
		<button type="button" name="kakao" class="kBtn">
			<img alt="logo" src="../resources/img/kakao.png">
			카카오톡으로 시작하기
		</button><br>
		
		<button type="button" name="naver" class="nBtn">
			<img alt="logo" src="../resources/img/naver.png">
			네이버로 시작하기
		</button><br>
		
		<button type="button" name="apple" class="aBtn">
			<img alt="logo" src="../resources/img/apple.png">
			Apple로 시작하기
		</button><br>
	</div>
	
	<div class="bottom">
		<a href="http://localhost:9090/ex/views/signup.jsp">이메일로 시작하기</a><br><br>
		이미 계정이 있으신가요? <a href="http://localhost:9090/ex/views/login.jsp">로그인하기</a>
	</div>

</body>
</html>