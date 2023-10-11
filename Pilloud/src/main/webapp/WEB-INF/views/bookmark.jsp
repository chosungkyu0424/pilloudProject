<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>    
<!DOCTYPE html> 
<html>
<head>
<meta charset="EUC-KR">   
<link rel="stylesheet" href="resources/css/bookmark.css" type="text/css">
<title>자주 찾아보는 의약품</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>    
</head>
<body>
	<!-- 상단바 -->
	<header>
	<div>
	<a href="#" onclick="history.back();">
		<img src="resources/img/left.png" alt="화살표" id="arrow" /></a>
		<div class=title>자주 찾아보는 의약품</div>
	</div>
	</header>
	<hr>
	
	<div class="scrollBar">
		<div style="margin-top: 50px;">
			<p>
				<span style="color: red; font-size: 5px;">●</span>복용금지
			</p>
			<hr>
			<!-- List -->
			<div id="pillList">
				<!-- <ul>
					<li><img src="resources/img/LOGO_FULL.png" alt="" id="sub"
						width="100" height="50"></li>
					<li>
						<div class="company" id="company">회사이름</div>
						<div class="title" id="itemName">약이름</div>
					</li>
					<li><img src="resources/img/next.png" width="25" height="25"
						id="next"></li>
				</ul>   
				<hr> -->  
			</div>
		</div> 
	</div><br><br><br>
	
	<!-- footer -->
	<footer>
		<hr>
		<a href="main" style="text-decoration-line:none;">
		<img src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" /> </a>
	</footer>
	
	<script>
	
	$(document).ready(function(){   
		fn_selectBookmark();
	});      
	
	var resultList;     
	function fn_selectBookmark() {
	    $.ajax({  
	        type: "post",
	        url: "selectBookmark",   
	        contentType: "application/json; charset=UTF-8",
	        dataType: "json",   
	        success: function(result) {
	            console.log("Success!");
	            console.log(result);   
	            resultList = result;
	            fn_addList(); 

	            if (result == null) {
	                alert("북마크 리스트를 가져오는 데 실패했습니다.");
	                return;
	            }
	        },
	        error: function(xhr, status, error) {
	            //console.error("Ajax 오류:", status, error);
	            alert("오류가 발생했습니다. 다시 시도해주세요.");
	        }
	    });
	}   
	
	function fn_addList() {
	    var result = resultList;
	    var pillList = $('#pillList'); 
	    if (result && result.length > 0) {
	        // 결과가 있으면 리스트를 생성
	        for (var i = 0; i < result.length; i++) {
	            // ul 요소 생성
	            var ul = $('<ul>');

	            // li 요소 생성
	            var li1 = $('<li>').append($('<img>', {
	                src: result[i].item_image,
	                alt: '',
	                id: 'sub',
	                width: '80',
	                height: '50'
	            }));

	            var li2 = $('<li>').append($('<div>', {
	                class: 'company',
	                text: result[i].entp_name
	            })).append($('<div>', {
	                class: 'title',
	                text: result[i].item_name
	            }));
     
	            var li3 = $('<li>').append($('<a>', {
	                href: 'detailPage?item_image=' + encodeURIComponent(result[i].item_image) + '&entp_name=' + encodeURIComponent(result[i].entp_name) + '&item_name=' + encodeURIComponent(result[i].item_name),
	            }).append($('<img>', {
	                src: 'resources/img/next.png',
	                width: '20',
	                height: '20',
	                id: 'next'
	            })));

	            // ul에 li들 추가
	            ul.append(li1).append(li2).append(li3);

	            // pillList에 ul 추가
	            pillList.append(ul).append('<hr>');
	        }
	    } else {
	        // 결과가 없을 때 처리 (예: 메시지 출력 또는 다른 동작 수행)
	        pillList.append('<p>북마크된 의약품이 없습니다.</p>');
	    }
	}
	
	</script>
</body>
</html>