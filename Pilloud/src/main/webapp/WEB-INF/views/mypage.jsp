<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/mypage.css?after" rel="stylesheet">
<title>마이페이지</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>  
</head>
<body>
	<!-- 상단 부분 -->
	<div class="background">
		<!-- 뒤로가기 버튼 -->
		<a href="#" onclick="history.back();" style="text-decoration-line: none;"> 
			<img src="resources/img/left_arrow.png" alt="화살표" id="arrow" />
		</a>
		<p id="header">마이페이지</p>
	</div>
	
	<!-- 메인 -->
	<div class="main">
		<!-- 프로필 -->
		<img alt="" src="../resources/img/profile.png" class="profile">
		<!-- 이름 -->
		<span id="name" style="margin: 50px 0 0 70px;font-size:18px;font-weight:bold;">${user.nm}님</span>  
		<!-- 지병 -->
		<div id="d">
			<p class="di" id="my1">페니토인</p>
	 		<p class="di" id="my2">인슐린</p>
			<p class="di" id="my3">당뇨병</p>
	 	</div>
	 	
	 	<hr style="width:90%;margin-bottom:15px;">
	 	
	 	<a href="modify" style="margin:0px 100px 0 70px;">나의 정보 수정</a>
	 	<a href="subscribe" style="margin-left:20px;">컬럼구독</a>
 	</div>

		
	
	<button type="button" name="subBtn" class="subBtn" onclick="location.href='bookmark'">
		<span style="font-size:18px;">자주 찾아보는 의약품</span><br>
		지금까지 저장한 의약품들을 한 번에 볼 수 있어요
	</button>
	<hr style="width:90%;">
	<div class="list">
		<a href="question">자주 하는 질문</a><br><br><br>
		<a href="notice">공지사항</a><br><br><br>
		<a href="termsOfService">약관 및 정책</a><br><br><br>
		<a href="" onclick="alert('현재 버전 7.1.0')">버전 정보</a><br><br><br>
		<a href="/logout.do" onclick="fn_logout()">로그아웃</a><br><br><br> 
		<a href="" onclick="fn_deleteUser()">탈퇴하기</a><br>
	</div><br>
	
	<!-- 하단바 -->
	<footer>
		<hr style="background-color:lightgrey">
		<a href="main" style="text-decoration-line:none;">
		<img src="resources/img/main/home.png" alt="메인홈" class="home" /></a>
		<a href="news" style="text-decoration-line:none;">
		<img src="resources/img/main/news.png" alt="컬럼/시사" class="news" /></a>
		<a href="mypage" style="text-decoration-line:none;">
		<img src="resources/img/main/my.png" alt="마이" class="my" /></a> 
	</footer>
	
<script type="text/javascript">

	jQuery().ready(function () {
		var id = '<c:out value="${sessionScope.user.id}" />';  
		var data = {
		        id: id
		    };
		
		$.ajax({  
	        type: "post",
	        url: "/selectMyInfo",        
	        data: JSON.stringify(data),  // 객체를 JSON 문자열로 변환하여 전송
	        contentType: "application/json; charset=UTF-8",
	        dataType: "json",       
	        success: function(result) { 
	        	$('#my1').text(result.allergy);
	            $('#my2').text(result.medicine);
	            $('#my3').text(result.disease);  
	            console.log('성공 여부: ' + result);
	        },
	        error: function() {
	            alert("서버 오류가 발생했습니다. 다시 시도해주세요.");
	        }   
	    });  
		
	});  
	
	function fn_deleteUser(){
		var id = '<c:out value="${sessionScope.user.id}" />';  
		
		 $.ajax({
		        type: "post",
		        url: "deleteUser",
		        data: JSON.stringify({ id: id }),
		        contentType: "application/json; charset=utf-8",
		        success: function(response) {
		            if (response === "success") {
		                // 성공적으로 삭제되면 알림창을 보여줌
		                alert("회원탈퇴되었습니다. 이용해주셔서 감사합니다.");
		                
		                // 메인 페이지로 리다이렉트
		                window.location.href = "main";
		            } else {
		                // 탈퇴에 실패한 경우의 처리
		                alert("탈퇴 중 오류가 발생했습니다.");
		            }
		        },
		        error: function(xhr, status, error) {
		            console.error("Ajax 오류:", status, error);
		            alert("탈퇴 중 오류가 발생했습니다.");
		        }
		    });    
	}
	
</script>
</body>
</html>

