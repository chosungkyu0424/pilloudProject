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
				<input type="text" placeholder="�Ǿ�ǰ���� �Է����ּ���" /> <img
					src="resources/img/search.png" alt="" id="icon" />
			</div>
		</div>
	</header>
	<div style="margin-top:50px;">
	<p><span style="color:red; font-size:5px;">��</span>�������</p>
	<!-- List -->
	<div id="pillList">
		<ul>
			<li><img src="resources/img/LOGO_FULL.png" alt="" id="sub"
				width="100" height="50"></li>
			<li>
				<div class="company">ȸ���̸�</div>
				<div class="title">���̸�</div>
			</li>
			<li><img src="resources/img/next.png" width="25" height="25" id="next"></li>
		</ul>
		<hr>
	</div>
	</div>
	<!-- footer -->
	<div class="footer">
		<hr>
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="����Ȩ" class="home" />
		</a>
	</div>
</body>
</html>