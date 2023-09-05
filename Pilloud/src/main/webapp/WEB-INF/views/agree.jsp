<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/agree.css?after" rel="stylesheet">
<title>약관 동의</title>
</head>
<body>
	<!-- 로고 -->
	<img alt="logo" src="../resources/img/LOGO_FULL.png" class="logo">



	<!-- 약관 동의 -->
	<form action="" method="get">
		<div class="boxs">
			<!-- 이용약관 -->
			<div class="box1">
				<h4>이용약관</h4>
				<input type="text" name="text1" class="text1"><br> <br>
				<label> <input type="checkbox" name="agree1" class="check1" onclick="check()"/>
					<span>이용약관에 동의합니다.</span>
				</label>
			</div>

			<!-- 개인정보 수집 및 이용 -->
			<div class="box2">
				<h4>개인정보 수집 및 이용</h4>
				<input type="text" name="text2" class="text2"><br> <br>
				<label> <input type="checkbox" name="agree2" class="check2" onclick="check()"/>
					<span>개인정보 수집 및 이용에 동의합니다.</span>
				</label>
			</div>
		</div>

		<!-- 버튼 -->
		<button type="button" name="ok" class="okBtn">동의하고
			계속하기</button>
	</form>

	<script>
		const agree1 = document.getElementsByClassName("check1")[0];
		const agree2 = document.getElementsByClassName("check2")[0];
		const btn = document.getElementsByName("ok")[0];
		
		agree1.addEventListener("keyup", check);
		agree2.addEventListener("keyup", check);
		function check() {
			if(agree1.checked && agree2.checked) {
				btn.disabled = false;
				btn.style.cursor = "pointer";
				btn.classList.add("btnCheck");
			} else {
				btn.disabled = true;
				btn.classList.remove("btnCheck");
			}
		}
	</script>


	<!-- footer -->
	<footer>
		<hr>
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" />
		</a>
	</footer>
</body>
</html>