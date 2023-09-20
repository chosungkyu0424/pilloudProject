<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/pillSear.css" type="text/css">
<meta charset="EUC-KR">
<title>Pill name search Page</title>
</head>
<body>
	<header>
		<!-- �˻� â -->
		<div>
			<a href="main" style="text-decoration-line: none;"> <img
				src="resources/img/left_arrow.png" alt="ȭ��ǥ" id="arrow" /></a>
			<div id="search">
				<input type="text" placeholder="�Ǿ�ǰ���� �Է����ּ���" class="text"/> <img
					src="resources/img/search.png" alt="" id="icon" onclick="search()" />
			</div>
		</div>
	</header>
	
	<script>
		const text = document.getElementsByClassName("text")[0];
		const btn = document.getElementById("icon");
		
		function search() {
			if(!text.value) {
				alert("�˻��Ͻ� �Ǿ�ǰ���� �Է����ּ���.");
			}
		}
	</script>
	
	<!-- footer -->
	<div class="footer">
		<hr>
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="����Ȩ" class="home" />
		</a>
	</div>
</body>
</html>