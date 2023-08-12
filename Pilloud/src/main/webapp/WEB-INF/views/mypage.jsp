<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/mypage.css?after" rel="stylesheet">
<title>마이페이지</title>
</head>
<body>
	<!-- 상단 부분 -->
	<div class="background">
		<!-- 뒤로가기 버튼 -->
		<img src="../resources/img/back_btn.png" class="backBtn">
		<p id="header">마이페이지</p>
	</div>
	
	<!-- 메인 -->
	<div class="main">
		<!-- 프로필 -->
		<img alt="" src="../resources/img/profile.png" class="profile">
		<!-- 이름 -->
		<span style="margin: 50px 0 0 70px;font-size:18px;font-weight:bold;">누군가</span>
		<!-- 지병 -->
		<div id="d">
			<P class="di">페니토인</P>
	 		<p class="di">인슐린</p>
			<p class="di">당뇨병</p>
	 	</div>
	 	
	 	<hr style="width:90%;margin-bottom:15px;">
	 	
	 	<a href="modify" style="margin:0px 100px 0 70px;">나의 정보 수정</a>
	 	<a href="subscribe" style="margin-left:70px;">컬럼구독</a>
 	</div>

		
	
	<button type="button" name="subBtn" class="subBtn" onclick="location.href='bookmark.jsp'">
		<span style="font-size:18px;">자주 찾아보는 의약품</span><br>
		지금까지 저장한 의약품들을 한 번에 볼 수 있어요
	</button>
	<hr style="width:90%;">
	<div class="list">
		<a href="question.jsp">자주 하는 질문</a><br><br><br>
		<a href="">공지사항</a><br><br><br>
		<a href="termsOfService.jsp">약관 및 정책</a><br><br><br>
		<a href="">버전 정보</a><br><br><br>
		<a href="">로그아웃</a><br><br><br>
		<a href="">탈퇴하기</a><br>
	</div><br>
	
	<!-- 하단바 -->
	<hr>
	<img alt="home" src="../resources/img/home.png" class="footerBtn">
	<img alt="doc" src="../resources/img/doc.png" class="footerBtn">
	<img alt="user" src="../resources/img/user.png" class="footerBtn">
</body>
</html>

