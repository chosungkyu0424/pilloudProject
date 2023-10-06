<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
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
	<%
        String itemImage = request.getParameter("item_image");
        String entpName = request.getParameter("entp_name");
        String itemName = request.getParameter("item_name");
        // URL ���ڵ�
        itemImage = URLDecoder.decode(itemImage, "EUC-KR");
        entpName = URLDecoder.decode(entpName, "EUC-KR");
        itemName = URLDecoder.decode(itemName, "EUC-KR");
    %>
    
	<!-- �� ������ ��� -->
	<div class="top">
		<img src="resources/img/left.png" alt="ȭ��ǥ" id="arrow"
			onclick="history_back()" />
		<script>  
			function history_back() {
				history.back();    
				//window.location.href = 'pillSear';
			}
		</script>
		<h3 class=title>����</h3>

	</div>

	<!-- ū �̹��� �κ� -->
	<div>
		<img src="<%= itemImage %>" id="img" alt="" width="300" height="250"> 
	</div>

	<!-- ȸ���/��ǰ�� -->
	<div>
		<p>ȸ���: <%= entpName %></p>     
		<h3 class="pill_name"><%= itemName %></h3>
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