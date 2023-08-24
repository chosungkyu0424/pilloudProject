<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/modify.css?after" rel="stylesheet" type="text/css">
<title>나의 정보 수정</title>
</head>
<body>
	<!-- 상단바 -->
	<header>
	<div>
	<a href="#" onclick="history.back();">
		<img src="resources/img/left.png" alt="화살표" id="arrow" /></a>
		<div class=title>나의 정보 수정</div>
	</div>
	</header>
	
	<!-- 기본 정보 입력 -->
	<div class="basic">기본 정보</div><br>
	<div class="binfo">
		<div id="email">
			이메일
			<input type="email" name="email" placeholder="nugunga@gmail.com" id="userinfo"><br>
		</div>
		<div id="nickname">
			닉네임
			<input type="text" name="nickname" placeholder="누군가" id="userinfo"><br>
		</div>
		<div id="callnum">
			전화번호
			<input type="tel" name="pnum" placeholder="010-2023-0515" id="userinfo"><br>
		</div>
		<div id="gender">
			성별
			<input type="text" name="sex" placeholder="여성" id="userinfo"><br>
		</div>
	</div>
	
	<!-- 상세 정보 입력 -->
	<div class="detail">상세 정보</div><br>
	<div class="dinfo">
		<input type="number" name="age" placeholder="나이를 입력해주세요" id="box"><br>
		<input type="text" name="allergy" placeholder="알러지 성분을 입력해주세요" id="box">
		<button type="button" name="add" class="addBtn">추가</button><br>
		<ul>
			<p>추가 된 알러지 성분 정보</p>
			<li>아세트아미노펜</li>
			<li>페니토인</li>
		</ul>
		<input type="text" name="medicine" placeholder="복용 중인 약을 입력해주세요" id="box">
		<button type="button" name="add" class="addBtn">추가</button><br>
		<ul>
			<p>추가 된 복용 중인 약 정보</p>
			<li>인슐린</li>
		</ul>
		<input type="text" name="disease" placeholder="앓고 있는 지병이 있으신가요" id="box">
		<button type="button" name="add" class="addBtn">추가</button><br>
		<ul>
			<p>추가 된 지병 정보</p>
			<li>당뇨</li>
		</ul>
		<div id="pregnant">
			임산부이신가요? <input type="checkbox" name="pregnant" id="check">
		</div>
	</div>
	
	<!-- 수정하기 버튼 -->
	<button type="button" name="edit" id="editBtn">수정하기</button>

</body>
</html>

