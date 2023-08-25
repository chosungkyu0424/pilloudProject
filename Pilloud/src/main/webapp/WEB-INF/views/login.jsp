<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/login.css?after" rel="stylesheet">
<title>로그인</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
	<!-- 로고 -->
	<img alt="logo" src="../resources/img/LOGO_FULL.png" class="logo">
	<!-- 로그인 입력 폼 -->
	<form id="login_form" action="" method="post">
		<!-- <h2>로그인</h2> -->
		<h4 class="w3">아이디</h4><br>
		<input type="text" name="id" placeholder="아이디 입력" id="id"><br>
		
		<h4 class="w4">비밀번호</h4><br>
		<input type="password" name="pw" placeholder="비밀번호 입력" id="pw">
		<br><br>  
		<c:if test = "${result == 0 }">  
                <div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
        </c:if>
		<br><br><br><br>
	  
		<!-- 로그인 버튼(메인화면으로 이동) -->  
		<button type="button" name="login" class="logBtn" onclick="location.href='main'">로그인</button>
	</form>
	
	<!-- footer -->
	<footer>
		<hr>
		<a href="main" style="text-decoration-line:none;">
		<img src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" /> </a>
	</footer> 
	 
<script>
 
    /* 로그인 버튼 클릭 메서드 */
    $("#loginBtn").click(function(){
    	/* 로그인 메서드 서버 요청 */
        $("#login_form").attr("action", "/login");
        $("#login_form").submit();
        
    });
 
</script>
</body>
</html>