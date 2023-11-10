<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/map.css" type="text/css">
<meta charset="UTF-8">
<title>약국찾기</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<body>
	<!-- 약국찾기 -->
	<header>
		<div>
			<a href="main"> <img src="resources/img/left_arrow.png" alt="화살표"
				id="arrow" /></a>
			<h3 class=title>약국찾기</div>
		</div>
	</header>
	<div id="list-top">
		<div>
			<input type="text" id="searchPharmacy" placeholder="약국명을 입력하세요">
			<img src="resources/img/search.png" alt="" id="icon" />
		</div>
		<ul class="common">

			<!-- <li>
			<select id="pageList" class="w-px80">
				<option value="10">10개씩</option>
				<option value="20">20개씩</option>
				<option value="30">30개씩</option>
			</select>
		</li> -->
			<li class="list-view"><i class="fas fa-list font-img"
				style="vertical-align: top;"></i></li>
			<li class="grid-view"><i class="fas fa-th font-img"
				style="vertical-align: top;"></i></li>
		</ul>
	</div>

	<div id="data-list"></div>

	<div class="btnSet">
		<div class="page-list"></div>
	</div>

	<div id="map-background"></div>
	<div id="map"></div>


	<script type="text/javascript">
		var viewType = "list";

		$('.dataOption a').click(function() {
			//이미 선택된 내용에 대해서는 적용하지 않으려면
			if ($(this).hasClass('btn-empty')) {
				$('.dataOption a').removeClass();
				$(this).addClass('btn-fill');
				var idx = $(this).index();
				$('.dataOption a:not(:eq(' + idx + '))').addClass('btn-empty');

				if (idx == 0) {
					pharmacy_list(1);
				} else {
					animal_list();
				}
			}
		});

		pharmacy_list(1);
		function pharmacy_list(page) {
			$.ajax({
				url : 'data/pharmacy',
				data : {
					pageNo : page,
					rows : $('#pageList').val()
				},
				success : function(data) {
					if (viewType == "list") {
						pharmacy_list_data($(data.item), 0);
					} else {
						pharmacy_grid_data($(data.item), 0);
					}

					//console.log(data) //한글이 깨지는 현상 발생해서 commonservice와 컨트롤러에서 utf-8로 인코딩해줘야함
					// 			var tag = "<table class='pharmacy'>"
					// 				+ '<tr><th class="w-px200">약국명</th><th class="w-px140" >전화번호</th><th>주소</th></tr>';
					//				
					// 			$(data.item).each(function(){
					// 				tag += "<tr>"
					// 						+ "<td><a class='map' data-x=" + this.XPos + " data-y=" + this.YPos + ">" + this.yadmNm + "</a></td><td>"
					// 						+ (this.telno ? this.telno : '-') + "</td><td class='left'>" + this.addr + "</td>"
					// 					+ "</tr>";
					// 			});

					// 			tag += "</table>";
					// 			$('#data-list').html(tag);
					makePage(data.count, page);
				},
				error : function(text, req) {
					alert(text + " : " + req.status)
				}
			});
		}

		function makePage(totalList, curPage) {
			var page = pageInfo(totalList, curPage, pageList, blockPage);
			var tag = '';

			if (page.curBlock > 1) {
				tag += "<a class='page_first' data-page=1>처음</a>"
						+ "<a class='page_prev'data-page="
						+ (page.beginPage - blockPage) + ">이전</a>";
			}

			for (var no = page.beginPage; no <= page.endPage; no++) {
				if (no == curPage) {
					tag += "<span class='page_on'>" + no + "</span>";
				} else {
					tag += "<a class='page_off' data-page=" + no + ">" + no
							+ "</a>";
				}
			}

			if (page.curBlock < page.totalBlock) {
				tag += "<a class='page_next' data-page="
						+ (page.endPage + 1)
						+ ">다음</a>"
						+ "<a class='page_last' data-page=" + page.totalPage + ">마지막</a>";
			}
			$('.page-list').html(tag);
		}

		function pageInfo(totalList, curPage, pageList, blockPage) {
			var page = new Object();
			page.totalPage = parseInt(totalList / pageList)
					+ (totalList % pageList == 0 ? 0 : 1);
			page.totalBlock = parseInt(page.totalPage / blockPage)
					+ (page.totalPage % blockPage == 0 ? 0 : 1);
			page.curBlock = parseInt(curPage / blockPage)
					+ (curPage % blockPage == 0 ? 0 : 1);
			page.endPage = page.curBlock * blockPage;
			page.beginPage = page.endPage - (blockPage - 1);
			if (page.endPage > page.totalPage) {
				page.endPage = page.totalPage;
			}
			return page;
		}

		function animal_list() {

		}

		//테이블 목록 뷰 → 그리드뷰로 변경
		function pharmacy_grid_data(data, type) {
			var tag = "<ul class='pharmacy grid'>";
			if (type == 0) {
				data
						.each(function() {
							tag += "<li>"
									+ "<div><a class='map' data-x='" + this.Xpos + "' data-y='" + this.Ypos + "'>"
									+ this.yadmNm + "</a></div>" + "<div>"
									+ (this.telno ? this.telno : '-')
									+ "</div>" + "<div>" + this.addr + "</div>"
									+ "</li>";
						});
			} else {
				data.each(function() {
					if ($(this).index() > 0) {
						$a = $(this).find('.map');
						tag += "<li>" + "<div><a class='map' data-x='"
								+ $a.data('x') + "' data-y='" + $a.data('y')
								+ "'>" + $(this).children('td:eq(0)').text()
								+ "</a></div>" + "<div>"
								+ $(this).children('td:eq(1)').text()
								+ "</div>" + "<div>"
								+ $(this).children('td:eq(2)').text()
								+ "</div>" + "</li>";
					}
				});
			}

			tag += "</ul>";
			$("#data-list").html(tag);
			$('#data-list ul').css(
					'height',
					(($('.grid li').length % 5 > 0 ? 1 : 0) + Math
							.floor($('.grid li').length / 5))
							* $('.grid li').outerHeight(true) - 20);
		}

		//그리드 뷰 → 테이블 목록 뷰로 변경
		function pharmacy_list_data(data, type) {
			var tag = "<ul class='pharmacy'>" /* + "<tr>" */
					//+ "<li class='w-px200'>약국명</li>"
					//+ "<li class='w-px140'>전화번호</li>" + "<li>주소</li>" 
					+ "</ul>";
			//type이 0이면 JSON 데이터를 가져옴, 1이면 화면의 텍스트를 가져옴
			if (type == 0) {
				data
						.each(function() {
							tag += "<div class='list'><tr>"
									+ "<td><a class='map' data-x=" + this.XPos + " data-y=" + this.YPos + "><span class='pName'>"
									+ this.yadmNm
									+ "</span></a></td><td><br><span class='pTel'>"
									+ (this.telno ? this.telno : '-')
									+ "</span><br></td><td class='left'><span class='pAddr'>"
									+ this.addr + "</span></td>"
									+ "</tr></div><hr>";
						});
			} else {
				data.each(function() {
					var $a = $(this).find('.map');
					tag += "<tr>" + "<td><a class='map' data-x='"
							+ $a.data('x') + "' data-y='" + $a.data('y') + "'>"
							+ $a.text() + "</a></td>" + "<td>"
							+ $(this).children('div:eq(1)').text() + "</td>"
							+ "<td class='left'>"
							+ $(this).children('div:eq(2)').text() + "</td>";
					tag += "</tr>";
				});
			}

			tag += "</table>";
			$("#data-list").html(tag);
		}

		//$('.map').click(function(){  }); 페이지가 다 로딩되기전에 준비되는 함수라 작동이 안될수 있다.
		$(document).on('click', '.page-list a', function() {
			pharmacy_list($(this).data('page'));

		}).on('click', '.list-view', function() {
			if (viewType == 'grid') {
				viewType = "list";
				pharmacy_list_data($('.grid li'), 1);
			}

		}).on('click', '.grid-view', function() {
			if (viewType == 'list') {
				viewType = "grid";
				pharmacy_grid_data($('.pharmacy tr'), 1);
			}

		}).on("change", "#pageList", function() {
			pageList = $(this).val();
			pharmacy_list(1);

		}).on(
				"click",
				".map",
				function() { //이런 형태로 작성해야한다.
					if ($(this).data('y') == 'undefined'
							|| $(this).data('x') == 'undefined') {
						alert("위경도가 지원되지 않아 지도에 표시할 수 없습니다!");
						return;
					}

					$("#map, #map-background").css("display", "block");
					//developers.google.com/maps/documentation/javascript/overview?_ga=2.124987530.1447651499.1595900798-1296965659.1595900772&hl=ko 구글 맵 플랫폼 자바스크립트 api
					//var pos = {lat: $(this).data('y'), lng: $(this).data('x')}
					var pos = {
						lat : Number($(this).data('y')),
						lng : Number($(this).data('x'))
					} //latitude : Xpos, 위도 longitude : Ypos, 경도
					var map = new google.maps.Map(document
							.getElementById('map'), {
						center : pos,
						zoom : 17
					});

					/*
					new google.maps.Marker({
						map:map, position: pos, title:$(this).text()
					});
					 */

					var info = new google.maps.InfoWindow();
					info.setOptions({
						content : "<div>" + $(this).text() + "</div>"
					});

					info.open(map, new google.maps.Marker({
						map : map,
						position : pos
					}));
				});

		$('#map-background').click(function() {
			$("#map, #map-background").css("display", "none");
		});

		var pageList = 10, blockPage = 10; //페이지당 보여질 목록 수, 블럭당 보여질 페이지 수

		//검색 버튼 클릭 이벤트 핸들러
		$("#searchButton").click(function() {
			// 검색어 입력 필드에서 검색어를 가져옴
			var searchTerm = $("#searchPharmacy").val(); // 검색어 필드의 ID가 "searchPharmacy"로 되어있다고 가정합니다.

			// 서버로 검색어를 전송하여 검색 요청
			$.ajax({
				url : "/data/pharmacy", // 검색을 처리하는 서버의 엔드포인트를 적절히 지정해야 합니다.
				method : "GET",
				data : {
					searchTerm : searchTerm
				},
				dataType : "json",
				success : function(data) {
					// 검색 결과를 처리하고 화면에 표시하는 함수 호출
					displaySearchResults(data);
				},
				error : function(error) {
					console.error("검색 에러:", error);
				}
			});
		});

		function displaySearchResults(results) {
			// 결과를 화면에 표시하는 로직을 여기에 추가

			// JSON 형식의 문자열을 JavaScript 객체로 파싱
			var searchResults = JSON.parse(results);

			// 검색 결과를 표시할 HTML 요소를 선택
			var resultsContainer = $("#searchResults");

			// 검색 결과를 초기화
			resultsContainer.empty();

			// 사용자가 입력한 검색어
			var searchTerm = $("#searchPharmacy").val();

			// 검색 결과를 반복하여 사용자 입력과 일치하는 약국만 표시
			for (var i = 0; i < searchResults.count; i++) {
				var pharmacy = searchResults.items[i];
				if (pharmacy.dutyName.includes(searchTerm)) {
					// 약국 이름에 검색어가 포함된 경우에만 표시
					var pharmacyName = pharmacy.dutyName;
					var pharmacyAddress = pharmacy.dutyAddr;

					// 약국 정보를 화면에 추가
					resultsContainer.append("<p><strong>약국 이름:</strong> "
							+ pharmacyName + "</p>");
					resultsContainer.append("<p><strong>주소:</strong> "
							+ pharmacyAddress + "</p>");
				}
			}

			if (resultsContainer.is(':empty')) {
				// 검색 결과가 없는 경우 메시지 출력
				resultsContainer.append("<p>검색 결과가 없습니다.</p>");
			}
		}
	</script>

	<!-- key=구글 API 키 -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCsrerDHJrp9Wu09Ij7MUELxCTPiYfxfBI">
		
	</script>

	<!--
	<div class="footer">
		<hr style="margin-top: 0; margin-bottom: 8px;">
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="메인홈" class="home" />
		</a>
	</div> -->
</body>
</html>