<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/shapeSear.css" type="text/css">
<meta charset="EUC-KR">
<title>shape search Page</title>
</head>
<body>
	<header>
		<!-- �˻� â -->
		<div>
			<a href="main" style="text-decoration-line: none;"> <img
				src="resources/img/left_arrow.png" alt="ȭ��ǥ" id="arrow" /></a>
			<div id="search">
				<input type="text" placeholder="�࿡ ���� ���ڸ� �Է����ּ���" /> <img
					src="resources/img/search.png" alt="" id="icon" />
			</div>
		</div>
	</header>

	<section>
		<form action="#">
			<select name="shape" id="shape_sel">
				<option value="">��� ����</option>
				<option value="����">����</option>
				<option value="Ÿ����">Ÿ����</option>
				<option value="������">������</option>
			</select> 
			
			<select name="shape" id="formul_sel">
				<option value="">���� ����</option>
				<option value="����">����</option>
				<option value="Ÿ����">����ĸ��</option>
				<option value="������">����ĸ��</option>
			</select> 
			
			<select name="shape" id="div_sel">
				<option value="">���Ҽ� ����</option>
				<option value="����">����</option>
				<option value="Ÿ����">(+)��</option>
				<option value="������">(-)��</option>
			</select>
		</form>
	</section>

	<!-- footer -->
	<footer>
		<hr>
		<a href="main" style="text-decoration-line:none;">
		<img src="resources/img/LOGO_FULL.png" alt="����Ȩ" class="home" /> </a>
	</footer>
</body>
</html>