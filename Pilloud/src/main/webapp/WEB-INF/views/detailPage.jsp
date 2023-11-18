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
	    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	
<meta charset="EUC-KR">
<title>상세 페이지</title>
</head>
<body>
	<%
        String itemImage = request.getParameter("item_image");
        String entpName = request.getParameter("entp_name");
        String itemName = request.getParameter("item_name");
        String warnYn = request.getParameter("warnYn");
        // URL 디코딩
        itemImage = URLDecoder.decode(itemImage, "EUC-KR");
        entpName = URLDecoder.decode(entpName, "EUC-KR");
        itemName = URLDecoder.decode(itemName, "EUC-KR");  
        warnYn = URLDecoder.decode(warnYn, "EUC-KR"); 
        session.setAttribute("itemName", itemName);
    %>
    
	<!-- 상세 페이지 상단 -->
	<div class="top">
		<img src="resources/img/left_arrow.png" alt="화살표" id="arrow"
			onclick="history_back()" />
		<script>  
			function history_back() {
				history.back();    
				//window.location.href = 'pillSear';
			}
			let itemName = '<%= itemName %>'
			let warnYn = '<%= warnYn %>'
			$(document).ready(function(){
				if(warnYn=='null'){
					$("#warn").hide();
				}
				if(warnYn=='Y'&&(itemName.includes('아스피린')||itemName.includes('타이레놀'))){
					$("#warn").hide();
				}else if(itemName.includes('룩펠')){
					$("#warn").show();
				}
				
				
			});
			//if(item_name.startsWith('아스피린')||item_name.startsWith('타이레놀')){
				//$("#warn").props("disabled", true);
			//}
		</script>  
		<h3 class=title>상세정보</h3>   

	</div>
	<!-- 주의 알림 표기 -->

	<div id="warn" style="margin-top:50px;background-color:#bbbbbb;padding:10px" >
	<span style="color: red; font-size: 10px;margin:15px">●</span>복용주의 의약품으로 등록된 항목입니다.
	</div>


	<!-- 큰 이미지 부분 -->
	<div>
		<img src="<%= itemImage %>" id="img" alt="" width="300" height="250"> 
	</div>

	<!-- 회사명/약품명 -->
	<div>
		<p style="margin-left:45px;"><%= entpName %></p>     
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
		<hr style="margin-top: 0; margin-bottom: 8px;">
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" />
		</a>
	</div>
</body>
</html>