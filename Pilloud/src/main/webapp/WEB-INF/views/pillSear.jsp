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
		<!-- �˻� â -->
		<div>
			<a href="main" style="text-decoration-line: none;"> <img  
				src="resources/img/left_arrow.png" alt="ȭ��ǥ" id="arrow" /></a>
			<div id="search">
				<input type="text" placeholder="�Ǿ�ǰ���� �Է����ּ���" class="text" id="inputPillNm"/> <img
					src="resources/img/search.png" alt="" id="icon" onclick="fn_search()" />
			</div>
		</div>
	</header>
	
	<!-- footer -->
	<div class="footer">
		<hr>
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="����Ȩ" class="home" />
		</a>
	</div>
	
	<script>
		const text = document.getElementsByClassName("text")[0];
		const btn = document.getElementById("icon");
		
		function fn_search(){ 
			if(!text.value) {
				alert("�˻��Ͻ� �Ǿ�ǰ���� �Է����ּ���.");
			}
			
			var pillNm = $('#inputPillNm').val();
		
			
			var data = { 
						itemNm : pillNm, 
			    	   };
			console.log(data); 
			$.ajax({
			    type: "post",
			    url: "/searchPillNm", 
			    data: JSON.stringify(data), // JSON �������� �����͸� ��ȯ�Ͽ� ����
			    contentType: "application/json; charset=UTF-8", // JSON ���������� ���
			    dataType: "json",
			    success: function(result) {
			        console.log(result);
			        if (result == null) {
			            alert("�๰ ������ �������� �� �����߽��ϴ�.");
			            return;
			        }
			    },
			    error: function(xhr, status, error) {
			        console.error("Ajax ����:", status, error);
			        alert("������ �߻��߽��ϴ�. �ٽ� �õ����ּ���.");
			    }
			});   
			
		}
	</script>
</body>
</html>