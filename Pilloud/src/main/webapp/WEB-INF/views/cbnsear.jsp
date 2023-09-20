<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/cbnsear.css" type="text/css">
<meta charset="EUC-KR">
<title>Conbination X search Page</title>
</head>
<body>
	<!-- �˻� â -->
	<div id="searcher">
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/left_arrow.png" alt="ȭ��ǥ" id="arrow" /></a>
		<h3 class=title>���ǻ��� �˻�</h3>
	</div>


	<!-- �����ڽ� -->
	<div class="chkradio">

		<ul>
			<li><input type="radio" id="radioOne" name="select" /> <label
				for="radioOne">����</label></li>
			<li><input type="radio" id="radioTwo" name="select" /> <label
				for="radioTwo">����ݱ�</label></li>
			<li><input type="radio" id="radioThree" name="select" /> <label
				for="radioThree">���ɴ�</label></li>
			<li><input type="radio" id="radioFour" name="select" /> <label
				for="radioFour">�Ӻ�</label></li>
			<li><input type="radio" id="radioFive" name="select" /> <label
				for="radioFive">�뷮</label></li>
			<li><input type="radio" id="radioSix" name="select" /> <label
				for="radioSix">�����Ⱓ</label></li>
			<li><input type="radio" id="radioSeven" name="select" /> <label
				for="radioSeven">ȿ�ɱ� �ߺ�</label></li>
			<li><input type="radio" id="radioEight" name="select" /> <label
				for="radioEight">��������</label></li>
		</ul>
		<div id="submit">
			<input type="button" value="�˻��ϱ�" onclick="search()" />
		</div>
	</div>

	<script>
		const radio_sel = document.getElementsByName("select");

		function search() {
			var j = 0;
			for (var i = 0; i < radio_sel.length; i++) {
				if (radio_sel[i].checked) {
					j++;
				}
			}
			if(j<1) {
				alert("�˻��Ͻ� ���ǻ��� �׸��� �������ֽʽÿ�.");
			} else {
				return true;
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