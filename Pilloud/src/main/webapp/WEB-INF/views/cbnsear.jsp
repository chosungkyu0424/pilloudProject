<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/cbnsear.css" type="text/css">
<meta charset="EUC-KR">
<title>Conbination X search Page</title>
</head>
<body>
	<!-- 검색 창 -->
	<div id="searcher">
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/left_arrow.png" alt="화살표" id="arrow" /></a>
		<h3 class=title>주의사항 검색</h3>
	</div>
	<h4 class="caution">주의해야 할 항목을 선택해주세요.</h4>
	
	<!-- 체크박스 -->
	<div class="cau_chk">
  <ul>
    <li><input type="checkbox" id="checkboxOne" value="older" ><label for="checkboxOne">노인</label></li>
    <li><input type="checkbox" id="checkboxTwo" value="ban" ><label for="checkboxTwo">병용금기</label></li>
    <li><input type="checkbox" id="checkboxThree" value="age" ><label for="checkboxThree">연령대</label></li>
    <li><input type="checkbox" id="checkboxFour" value="preg" ><label for="checkboxFour">임부</label></li>
    <li><input type="checkbox" id="checkboxFive" value="volume" ><label for="checkboxFive">용량</label></li>
        <li><input type="checkbox" id="checkboxSix" value="period" ><label for="checkboxSix">투여기간</label></li>
    <li><input type="checkbox" id="checkboxSeveen" value="effic" ><label for="checkboxSeveen">효능군</label></li>
    <li><input type="checkbox" id="checkboxEight" value="split" ><label for="checkboxEight">분할주의</label></li>
  </ul>
</div>

	<!-- 체크박스 -->
	<div class="chkbox">
	
	<form >
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">노인</label>
		</div>
		<div>
			<input type="checkbox" id="no" name="no" /> <label for="no">병용금기</label>
		</div>
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">연령대</label>
		</div>
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">임부</label>
		</div>
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">용량</label>
		</div>
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">투여기간</label>
		</div>
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">효능군
				중복</label>
		</div>
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">분할주의</label>
		</div>
	</form>
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