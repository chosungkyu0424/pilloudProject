<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/detailPage.css"
	type="text/css">
<meta charset="EUC-KR">
<title>상세 페이지</title>
</head>
<body>
	<%
        String itemImage = request.getParameter("item_image");
        String entpName = request.getParameter("entp_name");
        String itemName = request.getParameter("item_name");
        // URL 디코딩
        itemImage = URLDecoder.decode(itemImage, "EUC-KR");
        entpName = URLDecoder.decode(entpName, "EUC-KR");
        itemName = URLDecoder.decode(itemName, "EUC-KR");
    %>
    
	<!-- 상세 페이지 상단 -->
	<div class="top">
		<img src="resources/img/left.png" alt="화살표" id="arrow"
			onclick="history_back()" />
		<script>  
			function history_back() {
				history.back();    
				//window.location.href = 'pillSear';
			}
		</script>
		<h3 class=title>제목</h3>

	</div>

	<!-- 큰 이미지 부분 -->
	<div>
		<img src="<%= itemImage %>" id="img" alt="" width="300" height="250"> 
	</div>

	<!-- 회사명/약품명 -->
	<div>
		<p>회사명: <%= entpName %></p>     
		<h3 class="pill_name"><%= itemName %></h3>
	</div>
	<hr>

	<!-- 성분/복용방법 -->
	<div class="pill_ingredient">
		<h3>성분명</h3>
		<p>성분내용</p>
	</div>
	<div class="pill_take">
		<h3>복용방법</h3>
		<p>복용방법설명</p>
	</div>
	<hr>

	<!-- 복용 시 주의사항 -->
	<div class="pill_caution">
		<h3>복용 시 주의사항</h3>
		<a href="caution" style="text-decoration-line: none;"> <img
			src="resources/img/next.png" alt="주의사항설명페이지로" id="next" /></a>
	</div>
	<hr>

	<!-- DUR -->
	<div class="pill_take">
		<h3>DUR</h3>
	</div>

	<div id="DUR">
		<h4>병용금기</h4>
		<p>없음/있음</p>

		<h4>특정연령대금기</h4>
		<p>없음/있음</p>

		<h4>임부금기</h4>
		<p>없음/있음</p>

		<h4>용량주의</h4>
		<p>없음/있음</p>

		<h4>투여기간주의</h4>
		<p>없음/있음</p>

		<h4>노인주의</h4>
		<p>없음/있음</p>

		<h4>서방정분할주의</h4>
		<p>없음/있음</p>
		<br>
	</div>
	<br>



	<!-- footer -->
	<div class="footer">
		<hr>
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" />
		</a>
	</div>
</body>
</html>