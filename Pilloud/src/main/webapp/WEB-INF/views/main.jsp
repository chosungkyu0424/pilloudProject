<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/main.css" type="text/css">
<meta charset="EUC-KR">
<title>Main Page</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>

<body>
	<!-- 로고 + 검색 창 -->
	<header>
		<!-- 로그인 하지 않은 상태 
	 <c:if test="${ user == null }">
		<a href = "login">로그인</a>    
		<a href = "signup">회원가입</a>  
	</c:if> -->

		<!-- 로그인한 상태    
     <c:if test="${ user != null }"> 
     	<span>${user.nm}님입니다.</span>
     	<a href="/logout.do">로그아웃</a> 
    </c:if>  -->

		<div>
			<img src="resources/img/LOGO_FULL.png" alt="" id="logo" />
			<div id="search">
				<input type="text" placeholder="약품명을 입력해주세요" class="text"
					id="inputPillNm"
					onkeyup="if(window.event.keyCode==13){fn_search()}" /> <img
					src="resources/img/search.png" alt="" id="icon"
					onclick="fn_search()" />
			</div>
		</div>
	</header>


	<!-- 1번째 줄 메뉴 -->
	<div id="fmenu">
		<a href="cbnsear" style="text-decoration-line: none;"> <img
			src="resources/img/main/menu1.png" alt="주의사항" class="menu1" />
		</a> <a href="pillSear" style="text-decoration-line: none;"> <img
			src="resources/img/main/menu2.png" alt="의약품 검색" class="menu2" />
		</a> <a href="shapeSear" style="text-decoration-line: none;"> <img
			src="resources/img/main/menu3.png" alt="모양으로 검색" class="menu3" />
		</a>
	</div>

	<!-- 2번째 줄 메뉴 -->
	<div id="fmenu">
		<a href="map" style="text-decoration-line: none;"> <img
			src="resources/img/main/menu4.png" alt="약국찾기" class="menu4" /></a> <a
			href="notice" style="text-decoration-line: none;"> <img
			src="resources/img/main/menu5.png" alt="공지사항" class="menu5" />
		</a> <a href="modify" style="text-decoration-line: none;"></a>
		<c:if test="${ user != null }">
			<a href="modify" style="text-decoration-line: none;"> <img
				src="resources/img/main/menu6.png" alt="건강정보추가" class="menu6" /></a>
		</c:if>
		<c:if test="${ user == null }">
			<a href="signlog" style="text-decoration-line: none;"> <img
				src="resources/img/main/menu6.png" alt="건강정보추가" class="menu6" />
			</a>
		</c:if>
	</div>

	<!-- 하단 바 -->
	<footer>
		<hr style="background-color: lightgrey">
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/main/home.png" alt="메인홈" class="home" /></a> <a
			href="news" style="text-decoration-line: none;"> <img
			src="resources/img/main/news.png" alt="컬럼/시사" class="news" /></a>

		<c:if test="${ user != null }">
			<a href="mypage" style="text-decoration-line: none;"> <img
				src="resources/img/main/my.png" alt="마이" class="my" /></a>
		</c:if>
		<c:if test="${ user == null }">
			<a href="signlog" style="text-decoration-line: none;"> <img
				src="resources/img/main/my.png" alt="마이" class="my" /></a>
		</c:if>
	</footer>

	<script>
	const text = document.getElementsByClassName("text")[0];
	const btn = document.getElementById("icon");

	function fn_search() {
		if (!text.value) {
			alert("검색하실 의약품명을 입력해주세요.");
			return;
		}

		var pillNm = $('#inputPillNm').val();

		var data = {
			itemNm : pillNm,
		};
		console.log(data);

		$.ajax({
			type : "post",
			url : "/searchPillNm",
			data : JSON.stringify(data),
			contentType : "application/json; charset=UTF-8",
			dataType : "json",
			success : function(result) {
				console.log(result);
				resultList = result;

				// 검색 결과를 로컬 스토리지에 저장
				localStorage
						.setItem('searchResult', JSON.stringify(result));

				//URL로 리디렉션  
				window.location.href = 'list';

				if (result == null) {
					alert("약물 정보를 가져오는 데 실패했습니다.");
				}
			},
			error : function(xhr, status, error) {
				console.error("Ajax 오류:", status, error);
				alert("오류가 발생했습니다. 다시 시도해주세요.");
			}
		});
	}
	</script>
</body>
</html>