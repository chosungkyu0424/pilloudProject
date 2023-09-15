<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/shapeSear.css"
	type="text/css">
<meta charset="EUC-KR">
<title>모양 검색 페이지</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
	<!-- 상단 -->
	<div id="searcher">
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/left_arrow.png" alt="화살표" id="arrow" /></a>
		<h3 class=title>모양으로 검색</h3>
	</div>

	<!-- 셀렉트 박스 -->
	<section>
		<div class="select">
			<form action="#">
				<select name="shape" id="shape_sel">
					<option value="">모양 선택</option>
				</select> <select name="shape" id="formul_sel">
					<!-- <option value="">제형 선택</option>
					<option value="원형">정제</option>
					<option value="타원형">경질캡슐</option> 
					<option value="정방형">연질캡슐</option> -->
				</select> <select name="shape" id="div_sel">
					<option value="분할선">분할선 선택</option> 
					<option value="">없음</option>
					<option value="+">(+)형</option>  
					<option value="-">(-)형</option> 
				</select>
				<div id="submit">
					<input type="button" value="검색하기"/>
				</div>
			</form>
		</div>
	</section>


	<!-- footer -->
	<div class="footer">
		<hr>
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" />
		</a>
	</div>
	
	
	<script>
	// 최초 실행
	jQuery().ready(function () { 
		   
	    $.ajax({ 
	        type: "post", 
	        url: "/selectShape",   
	        data: {},       
	        dataType: "json", // JSON 데이터 형식으로 응답을 받음을 명시
	        contentType : 'application/json;charset=UTF-8',   
	        beforeSend : function(xhr){
	            xhr.setRequestHeader('Content-Type', 'application/json;charset=UTF-8');
	        },   
	        success: function(result) { 
	            console.log(result);  
	 			if(result == null){
	 				alert("모양 정보를 가져오는 데 실패했습니다.");	
	 				return;
	 			}
	            fn_dataBind(result);
	        },
	        error: function(xhr, status, error) {   
	            console.error("Ajax 오류:", status, error);
	            alert("오류가 발생했습니다. 다시 시도해주세요.");
	        }
	    });
	    
	});
	
	function fn_dataBind(shapeList){
		$('#shape_sel').empty();
		let appendHtml = '';
		appendHtml += '<option value="">모양선택</option>';
		$.each(shapeList, (index, item)=>{
			appendHtml += '<option value="'+ item +'">'+ item +'</option>';
		});
		$('#shape_sel').append(appendHtml);
	}
	
	</script>
</body>
</html>