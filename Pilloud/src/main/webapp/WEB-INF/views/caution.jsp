<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
	    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<link rel="stylesheet" href="resources/css/caution.css" type="text/css">
<meta charset="EUC-KR">
<title>복용시 주의사항 내용</title>

</head>
<body>
<%
   String itemName = (String) session.getAttribute("itemName");
    %>
    
	<!-- 약품명 상단 -->
	<div class="top">
		<img src="resources/img/left_arrow.png" alt="화살표" id="arrow"
			onclick="history_back()" />
		<script>
		 document.addEventListener('DOMContentLoaded', function(){
		        // Fetch API를 사용한 Ajax 요청
		        fetch('https://apis.data.go.kr/1471000/DrbEasyDrugInfoService/getDrbEasyDrugList?serviceKey=RlP5Qs6W7JzE4R72UmPN5dqZ5zMcFWMluYCsSwarFUzSHvlUdP3ZRc8t72i4LF9oM2SbnfiD%2FF4YOVKFJvVQqw%3D%3D&pageNo=1&numOfRows=3&type=json&itemSeq=200003092') // 실제 API 엔드포인트로 대체해야 합니다.
		            .then(response => response.json())
		            .then(data => {
		                // API 응답 성공 시 실행되는 함수
		                // 받아온 데이터를 화면에 표시
		                console.log(data)
		                let showData = data.body.items[0].efcyQesitm;
		                let store = data.body.items[0].depositMethodQesitm;
		                let seQesitm = data.body.items[0].seQesitm;
		                let useMethodQesitm = data.body.items[0].useMethodQesitm;
		                console.log(JSON.stringify(store))
		                $("#warnText").val(showData);
		                $("#store").val(store);
		                $("#seQesitm").val(seQesitm);
		                $("#useMethodQesitm").val(useMethodQesitm);
		                //$("#caution").innerHTML=(JSON.stringify(showData))
		                //document.getElementById('caution').innerHTML = 'API Response: ' + JSON.stringify(data);
		            })
		        })
		            
	</script>

	
	
	<script>
	    // 페이지가 로드될 때 실행되는 함수
	   

	
		function history_back() {
				history.back()
			}
		</script>
		<h3 class=title>주의사항</h3>
	</div>
	
	<!-- 약품 주의사항 내용 -->
<!-- 	<div class="pill_caution"> -->
<!-- 	<p>내용</p> -->
<!-- 	</div> -->
<div id="caution">
<h3 style="margin-top:70px;margin-left:20px; margin-right:25px;"> 주의사항</h3>
<textArea id="warnText" readonly style="width:90%;height:100px;border:none;margin:10px 20px 20px 25px;"></textArea>
<h3 style="margin-top:10px;margin-left:20px"> 저장용법</h3>
<textArea id="store" readonly style="width:90%;height:30px;border:none;margin:10px 20px 20px 25px;"></textArea>
<h3 style="margin-top:10px;margin-left:20px"> 부작용 종류</h3>
<textArea id="seQesitm" readonly style="width:90%;height:100px;border:none;margin:10px 20px 20px 25px;"></textArea>
<h3 style="margin-top:10px;margin-left:20px"> 복용법</h3>
<textArea id="useMethodQesitm" readonly style="width:90%;height:100px;border:none;margin:10px 20px 20px 25px;"></textArea>

</div>


<!-- footer -->
	<div class="footer">
		<hr>
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" />
		</a>
	</div>
</body>
</html>
