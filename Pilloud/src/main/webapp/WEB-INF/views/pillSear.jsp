<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/pillSear.css" type="text/css">
<meta charset="EUC-KR">
<title>Pill name search Page</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>  
</head>
<body>
	<header>
		<!-- 검색 창 -->
		<div>
			<a href="main" style="text-decoration-line: none;"> <img  
				src="resources/img/left_arrow.png" alt="화살표" id="arrow" /></a>
			<div id="search">
				<input type="text" placeholder="의약품명을 입력해주세요" class="text" id="inputPillNm"/> <img
					src="resources/img/search.png" alt="" id="icon" onclick="fn_search()" />
			</div>
		</div>
	</header>
	
	<!-- footer -->
	<div class="footer">
		<hr>
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" />
		</a>
	</div>
	
	<script>
		const text = document.getElementsByClassName("text")[0];
		const btn = document.getElementById("icon");
		
		function fn_search(){ 
			if(!text.value) {
				alert("검색하실 의약품명을 입력해주세요.");
			}
			
			var pillNm = $('#inputPillNm').val();
		
			
			var data = { 
						itemNm : pillNm, 
			    	   };
			console.log(data); 
			$.ajax({
			    type: "post",
			    url: "/searchPillNm", 
			    data: JSON.stringify(data), // JSON 형식으로 데이터를 변환하여 전송
			    contentType: "application/json; charset=UTF-8", // JSON 데이터임을 명시
			    dataType: "json",
			    success: function(result) {
			        console.log(result);
			        if (result == null) {
			            alert("약물 정보를 가져오는 데 실패했습니다.");
			            return;
			        }
			    },
			    error: function(xhr, status, error) {
			        console.error("Ajax 오류:", status, error);
			        alert("오류가 발생했습니다. 다시 시도해주세요.");
			    }
			});   
			
		}
	</script>
</body>
</html>