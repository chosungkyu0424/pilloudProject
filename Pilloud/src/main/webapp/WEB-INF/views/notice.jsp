<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/notice.css" type="text/css">
<meta charset="E/UC-KR">
<title>Main Page</title>
</head>

<body>
	<!-- 공지사항 -->
	<header>
		<div>
		<a href="#" onclick="history.back();">
			<img src="resources/img/left_arrow.png" alt="화살표" id="arrow" /></a>
			<h3 class=title>공지사항</h3>
		</div>
	</header>
	
	<!-- 내용이 들어갈 list 공간 -->
	<div class="nlist">
		<ul>
			<li id="title">Pilloud 약관 변경 안내</li>
			<a href="javascript:doDisplay1();">
			<li><img src="resources/img/down.png" id="down"/></li>
			</a>
			<p id="answer1" style="display: none;">
				안녕하세요 pilloud 입니다.<br><br>
				이용자의 개인정보 수집 및 이용 동의 항목과, 서비스 이용약관 및 개인정보 처리방침이 개정되어 변경된 내용과 적용 일정을 알려 드립니다.<br><br>
				1. 이용자의 개인정보 수집 및 이용에 관한 동의 항목 변경<br><br>
				- 변경 사유: 개인정보보호법 상 동의가 불필요한 항목, 중복 동의 항목 제거<br><br>
				- 적용 일정: 2023년 1월 9일부터<br><br>
				감사합니다.
			</p>
		</ul><hr>
		<ul>
			<li id="title">Pilloud 개인정보 처리방침 변경 안내</li>
			<a href="javascript:doDisplay2();">
			<li><img src="resources/img/down.png" id="down"/></li>
			</a>
			<p id="answer2" style="display: none;">
				안녕하세요 pilloud 입니다.<br><br>
				9/1부터 '개인정보 처리방침'이 일부 변경될 예정입니다.<br>
				pilloud는 회원님의 개인정보를 안전하게 활용하고 보호하기 위한 노력과 관련 법규 준수에 최선을 다하고 있습니다.<br><br>
				정부의 정책 및 정보보호 유관법령 또는 보안 기술의 변경에 따라 '개인정보 처리방침'의 내용이 추가/수정/삭제될 경우, 개정 최소 7일 전에 미리 알려드리겠습니다.<br><br>
				감사합니다.
			</p>
		</ul><hr>
		<ul>
			<li id="title">서비스 이용약관 변경 안내</li>
			<a href="javascript:doDisplay3();">
			<li><img src="resources/img/down.png" id="down"/></li>
			</a>
			<p id="answer3" style="display: none;">
				안녕하세요 pilloud 입니다.<br><br>
				pilloud 약관 변경에 따라 개정 사항 공지해드립니다.<br>
				주요 약관 개정 사항은 아래와 같습니다.<br><br>
				- 아래 - <br>	<br>					
				1. 개인정보 제공 동의에 포함하였던 민감정보 및 고유식별정보를 별도 항목으로 동의받을 수 있도록 변경 하였습니다.<br><br>	
				2. 회사는 수집한 개인정보를 제3자에게 제공하지 않으므로 개인정보 처리방침 내 제3자 제공에 관한 내용은 모두 삭제 조치하였습니다.<br><br>	
				3. 개인정보 처리방침 내 '개인정보의 위탁에 관한 사항'을 추가하였습니다.<br><br>	
				4. 개인정보 처리방침 내 '개인정보 보호책임자 성명과 연락처'를 추가하였습니다.<br><br>	 
 				5. 개인정보 처리방침 내 '처리하는 개인정보의 항목'을 수정하였습니다.<br><br>
				6. 개정 시행일: 2023.10.7.<br><br>	
				7. 약관 개정 사전 고지 기간 내(7일) 명시적으로 거부의 의사표시를 하지 아니한 회원은 개정 약관에 동의한 것으로 간주됩니다.<br><br> 
				감사합니다.<br><br><br>
			</p>
		</ul><hr>
	</div>
	
	<!-- footer -->
	<div class="footer">
		<hr style="margin-top: 0; margin-bottom: 8px;">
		<a href="main" style="text-decoration-line: none;"> 
			<img src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" />
		</a>
	</div>
	
	
	
	<script>
		function doDisplay1(){
			var ans1 = document.getElementById("answer1");
			
			if(ans1.style.display=='none'){
				ans1.style.display = 'block';
			} else {
				ans1.style.display='none';
			}
		}
		
		function doDisplay2(){
			var ans2 = document.getElementById("answer2");
			
			if(ans2.style.display=='none'){
				ans2.style.display = 'block';
			} else {
				ans2.style.display='none';
			}
		}
		
		function doDisplay3(){
			var ans3 = document.getElementById("answer3");
			
			if(ans3.style.display=='none'){
				ans3.style.display = 'block';
			} else {
				ans3.style.display='none';
			}
		}

	</script>
	
</body>
</html>
