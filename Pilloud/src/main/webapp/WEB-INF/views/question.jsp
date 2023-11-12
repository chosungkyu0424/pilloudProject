<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/question.css" rel="stylesheet">
<title>자주 하는 질문</title>
</head>
<body>
	<!-- 상단바 -->
	<header>
		<div>
		<a href="#" onclick="history.back();">
			<img src="resources/img/left_arrow.png" alt="화살표" id="arrow" /></a>
			<h3 class=title>자주 하는 질문</h3>
		</div>
	</header>
	<hr>
	
	<!-- 질문 리스트 -->
	<div class="qlist">
		<ul>
			<li id="title">[검색문의] 이름이 기억나지 않을 때는 어떻게 하나요?</li>
			<a href="javascript:doDisplay1();">
			<li><img src="resources/img/down.png" id="down"/></li>
			</a>
			<p id="answer1" style="display: none;">
				[모양으로 검색]을 통해 검색 할 수 있습니다.
				또한 정확한 의약품명을 입력하지 않아도 검색 할 수 있습니다.
			</p>
		</ul><hr>
		<ul>
			<li id="title">[검색문의] 약국 찾기는 어떻게 이용하나요?</li>
			<a href="javascript:doDisplay2();">
			<li><img src="resources/img/down.png" id="down"/></li>
			</a>
			<p id="answer2" style="display: none;">
				메인 화면에 있는 '주변약국 찾기'에서 다양한 필터를 통해
				내 근처 약국, 원하는 지역에 해당되는 약국을 찾을 수 있습니다.</p>
		</ul><hr>
		<ul>
			<li id="title">[이용문의] 휴대폰 번호 변경은 어떻게 하나요?</li>
			<a href="javascript:doDisplay3();">
			<li><img src="resources/img/down.png" id="down"/></li>
			</a>
			<p id="answer3" style="display: none;">
				회원 정보 수정 또는 휴대폰 번호 변경은 메인 화면에 있는
				'건강정보 추가'에 들어가서 수정 부탁드립니다.</p>
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