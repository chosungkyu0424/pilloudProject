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
	<h4 class="caution">�����ؾ� �� �׸��� �������ּ���.</h4>
	
	<!-- üũ�ڽ� -->
	<div class="cau_chk">
  <ul>
    <li><input type="checkbox" id="checkboxOne" value="older" ><label for="checkboxOne">����</label></li>
    <li><input type="checkbox" id="checkboxTwo" value="ban" ><label for="checkboxTwo">����ݱ�</label></li>
    <li><input type="checkbox" id="checkboxThree" value="age" ><label for="checkboxThree">���ɴ�</label></li>
    <li><input type="checkbox" id="checkboxFour" value="preg" ><label for="checkboxFour">�Ӻ�</label></li>
    <li><input type="checkbox" id="checkboxFive" value="volume" ><label for="checkboxFive">�뷮</label></li>
        <li><input type="checkbox" id="checkboxSix" value="period" ><label for="checkboxSix">�����Ⱓ</label></li>
    <li><input type="checkbox" id="checkboxSeveen" value="effic" ><label for="checkboxSeveen">ȿ�ɱ�</label></li>
    <li><input type="checkbox" id="checkboxEight" value="split" ><label for="checkboxEight">��������</label></li>
  </ul>
</div>

	<!-- üũ�ڽ� -->
	<div class="chkbox">
	
	<form >
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">����</label>
		</div>
		<div>
			<input type="checkbox" id="no" name="no" /> <label for="no">����ݱ�</label>
		</div>
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">���ɴ�</label>
		</div>
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">�Ӻ�</label>
		</div>
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">�뷮</label>
		</div>
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">�����Ⱓ</label>
		</div>
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">ȿ�ɱ�
				�ߺ�</label>
		</div>
		<div>
			<input type="checkbox" id="older" name="older" /> <label for="older">��������</label>
		</div>
	</form>
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