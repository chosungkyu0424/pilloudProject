<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/detailPage.css"
	type="text/css">
<meta charset="EUC-KR">
<title>�� ������</title>
</head>
<body>
	<!-- �� ������ ��� -->
	<div class="top">
		<img src="resources/img/left.png" alt="ȭ��ǥ" id="arrow"
			onclick="history_back()" />
		<script>
			function history_back() {
				history.back()
			}
		</script>
		<h3 class=title>����</h3>

	</div>

	<!-- ū �̹��� �κ� -->
	<div>
		<img src="resources/img/LOGO_FULL.png" alt="" id="img" width="300"
			height="250">
	</div>

	<!-- ȸ���/��ǰ�� -->
	<div>
		<p class="company">ȸ���</p>
		<h3 class="pill_name">��ǰ��</h3>
	</div>
	<hr>

	<!-- ����/������ -->
	<div class="pill_ingredient">
		<h3>���и�</h3>
		<p>���г���</p>
	</div>
	<div class="pill_take">
		<h3>������</h3>
		<p>����������</p>
	</div>
	<hr>

	<!-- ���� �� ���ǻ��� -->
	<div class="pill_caution">
		<h3>���� �� ���ǻ���</h3>
		<a href="caution" style="text-decoration-line: none;"> <img
			src="resources/img/next.png" alt="���ǻ��׼�����������" id="next" /></a>
	</div>
	<hr>

	<!-- DUR -->
	<div class="pill_take">
		<h3>DUR</h3>
	</div>

	<div id="DUR">
		<h4>����ݱ�</h4>
		<p>����/����</p>

		<h4>Ư�����ɴ�ݱ�</h4>
		<p>����/����</p>

		<h4>�Ӻαݱ�</h4>
		<p>����/����</p>

		<h4>�뷮����</h4>
		<p>����/����</p>

		<h4>�����Ⱓ����</h4>
		<p>����/����</p>

		<h4>��������</h4>
		<p>����/����</p>

		<h4>��������������</h4>
		<p>����/����</p>
		<br>
	</div>
	<br>



	<!-- footer -->
	<div class="footer">
		<hr>
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="����Ȩ" class="home" />
		</a>
	</div>
</body>
</html>