<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/cbnsear.css" type="text/css">
<meta charset="EUC-KR">
<title>Conbination X search Page</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>  
</head>
</head>
<body>
	<!-- 검색 창 -->
	<div id="searcher">
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/left_arrow.png" alt="화살표" id="arrow" /></a>
		<h3 class=title>주의사항 검색</h3>
	</div>


	<!-- 라디오박스 -->
	<div class="chkradio">

		<ul onchange="radioChangeHandler()">
			<li><input type="radio" id="radioOne" name="select" /> <label
				for="radioOne">노인</label></li>
			<li><input type="radio" id="radioTwo" name="select" /> <label
				for="radioTwo">병용금기</label></li>
			<li><input type="radio" id="radioThree" name="select" /> <label
				for="radioThree">연령대</label></li>
			<li><input type="radio" id="radioFour" name="select" /> <label
				for="radioFour">임부</label></li>
			<li><input type="radio" id="radioFive" name="select" /> <label
				for="radioFive">용량</label></li>
			<li><input type="radio" id="radioSix" name="select" /> <label
				for="radioSix">투여기간</label></li>
			<li><input type="radio" id="radioSeven" name="select" /> <label
				for="radioSeven">효능군 중복</label></li>
			<li><input type="radio" id="radioEight" name="select" /> <label
				for="radioEight">분할주의</label></li>
		</ul>
		<input type="text" value="" id="pillName" placeholder="약품명을 입력하세요"/>
		<div id="submit">
			<input type="button" value="검색하기" onclick="search()" />
		</div>
	</div>

	<script>
		const radio_sel = document.getElementsByName("select");
		function check(){
			var j = 0;
			for (var i = 0; i < radio_sel.length; i++) {
				if (radio_sel[i].checked) {
					j++;
				}
			}
			if(j<1) {
				return false;
			} else {
				return true;
			}
			
		}
		
		function search() {
			var chk = check();
			if(!chk){
				alert("검색하실 주의사항 항목을 선택해주십시오.");
				return;
			}//선택 됐을때만 api호출
			//데이터 가공
			var data = {}
			for (var i = 0; i < radio_sel.length; i++) {
				if (radio_sel[i].checked) {
					var selectedRadioID = radio_sel[i].id;
					switch (selectedRadioID) {
					    case "radioOne":
					        data.type = 'getOdsnAtentInfoList03'
					        break;
					    case "radioTwo":
					    	data.type = 'getUsjntTabooInfoList03'
						        break;
					    case "radioThree":
					        data.type = 'getSpcifyAgrdeTabooInfoList03'
					        break;
					    case "radioFour":
					    	data.type = 'getPwnmTabooInfoList03'
						        break;
					    case "radioFive":
					        data.type = 'getCpctyAtentInfoList03'
					        break;
					    case "radioSix":
					    	data.type = 'getMdctnPdAtentInfoList03'
						        break;
					    case "radioSeven":
					        data.type = 'getEfcyDplctInfoList03'
					        break;
					    case "radioEight":
					    	data.type = 'getSeobangjeongPartitnAtentInfoList03'
						        break;
					}
				}
			}
			data.pillName = document.getElementById("pillName").value;

			//data={pillName, type(, +pageInfo)}
			$.ajax({
		        type: "post",
		        url: "/searchPillWarn",//수정
		        data: JSON.stringify(data),
		        contentType: "application/json; charset=UTF-8",
		        dataType: "json",
		        success: function (result) {
		        	console.log(result); 
		         	// 검색 결과를 로컬 스토리지에 저장
		            localStorage.setItem('searchResult', JSON.stringify(result));

		            //URL로 리디렉션  
		            window.location.href = 'list';

		            if (result == null) {
		                alert("약물 정보를 가져오는 데 실패했습니다.");
		            }
		        },
		        error: function (xhr, status, error) {
		            console.error("Ajax 오류:", status, error);
		            alert("오류가 발생했습니다. 다시 시도해주세요.");
		        }
		    });
			
		}
	</script>

	<!-- footer -->
	<div class="footer">
		<hr>
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" />
		</a>
	</div>
</body>
</html>