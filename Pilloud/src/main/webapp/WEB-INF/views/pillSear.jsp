<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/pillSear.css" type="text/css">
<meta charset="EUC-KR">
<title>Pill name search Page</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>  
</head>
<body>
	<header>
		<!-- 검색 창 -->
		<div>
			<a href="main" style="text-decoration-line: none;"> <img  
				src="resources/img/left_arrow.png" alt="화살표" id="arrow" /></a>
			<div id="search">
				<input type="text" placeholder="의약품명을 입력해주세요" class="text" id="inputPillNm"  onkeyup="if(window.event.keyCode==13){fn_search()}"/> <img
					src="resources/img/search.png" alt="" id="icon" onclick="fn_search()" />
			</div>
		</div>
	</header>
	
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
	<div class="footer">
		<hr style="margin-top: 0; margin-bottom: 8px;">
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" />
		</a>
	</div>

	
	<script>  
	$(document).ready(function(){     
		$('#bookmarkBtn').on('click', function() {
		    addBookmark(); // 북마크 추가 함수 호출   
		});
	});          
	
	var resultList; 
	var encodedItemImage;
	var encodedEntpName;
	var encodedItemName; 
	
	function fn_addList() {
	    var result = resultList;
	    var pillList = $('#pillList');
  
	    if (result && result.length > 0) {
	        for (var i = 0; i < result.length; i++) {
	        	  
	            let item_image = result[i].item_image;
	            let entp_name = result[i].entp_name;
	            let item_name = result[i].item_name;

	            var ul = $('<ul>');
	            var li1 = $('<li>').append($('<img>', {
	                src: item_image,
	                alt: '',
	                id: 'sub',
	                width: '80',
	                height: '50'
	            }));

	            var li2 = $('<li>').append($('<div>', {
	                class: 'company',
	                text: entp_name
	            })).append($('<div>', {
	                class: 'title',
	                text: item_name
	            }));
	            encodedItemImage = encodeURIComponent(result[i].item_image);
	        	encodedEntpName = encodeURIComponent(result[i].entp_name);
	        	encodedItemName = encodeURIComponent(result[i].item_name);    
	        	
	            var li3 = $('<li>').append($('<a>', {
	                href: 'detailPage?item_image=' + encodedItemImage + '&entp_name=' + encodedEntpName + '&item_name=' + encodedItemName,
	                style: 'display: flex; flex-direction: row; align-items: center;'
	            }).append($('<img>', {
	                src: 'resources/img/next.png',
	                width: '20',
	                height: '20',
	                id: 'next'
	            }))).append($('<button>', {
	                text: '북마크 추가',
	                id: 'bookmarkBtn',
	                style: 'margin-top: 5px;'
	            }));

	            li3.find('#bookmarkBtn').on('click', function() {
	                addBookmark(item_image, entp_name, item_name);
	            });

	            ul.append(li1).append(li2).append(li3);
	            pillList.append(ul).append('<hr>');
	        }
	    }
	}  
 
  
         
	const text = document.getElementsByClassName("text")[0];
	const btn = document.getElementById("icon");
	
	
	function fn_search() {
	    if (!text.value) {
	        alert("검색하실 의약품명을 입력해주세요.");
	        return;
	    }

	    var pillNm = $('#inputPillNm').val();

	    var data = {
	        itemNm: pillNm,
	    };
	    console.log(data);

	    $.ajax({
	        type: "post",
	        url: "/searchPillNm",
	        data: JSON.stringify(data),
	        contentType: "application/json; charset=UTF-8",
	        dataType: "json",
	        success: function (result) {
	            console.log(result);
	            resultList = result;

	            // 리스트 초기화
	            $('#pillList').empty();

	            fn_addList();

	            if (result == null) {
	                alert("약물 정보를 가져오는 데 실패했습니다.");
	                return;
	            }
	        },
	        error: function (xhr, status, error) {
	            console.error("Ajax 오류:", status, error);
	            alert("오류가 발생했습니다. 다시 시도해주세요.");
	        }
	    });
	}
	
	function addBookmark(item_image, entp_name, item_name) {
	    $.ajax({
	        type: 'POST',
	        url: 'bookmark.do',
	        data: {
	            item_image: item_image,
	            entp_name: entp_name,
	            item_name: item_name
	        },
	        success: function(response) {
	            alert('북마크가 추가되었습니다.');
	        },
	        error: function(xhr, status, error) {
	            console.error('Ajax 오류:', status, error);
	            alert('북마크 추가 중 오류가 발생했습니다.');
	        }
	    });
	}  
	</script>
</body>
</html>