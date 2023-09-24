<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="resources/css/list.css" type="text/css">
<title>�� ����Ʈ</title>
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
				src="resources/img/left_arrow.png" alt="ȭ��ǥ" id="arrow"
				onclick="history_back()" /></a>
			<script>
				function history_back() {
					history.back()
				}
			</script>
			<div id="search">
				<input type="text" placeholder="�Ǿ�ǰ���� �Է����ּ���" class="text" /> <img
					src="resources/img/search.png" alt="" id="icon" onclick="search()" />
			</div>
		</div>
	</header>
	<div style="margin-top: 50px;">
		<p>
			<span style="color: red; font-size: 5px;">��</span>�������
		</p>
		<!-- List -->
		<div id="pillList">
			<!-- <ul>
				<li><img src="resources/img/LOGO_FULL.png" alt="" id="sub"
					width="100" height="50"></li>
				<li>
					<div class="company" id="company">ȸ���̸�</div>
					<div class="title" id="itemName">���̸�</div>
				</li>
				<li><img src="resources/img/next.png" width="25" height="25"
					id="next"></li>
			</ul>   
			<hr> -->  
		</div>
	</div>

	<script>
	$(document).ready(function () {
        // ���� ���丮������ ��� ��������
        var result = JSON.parse(localStorage.getItem('searchResult'));
        var pillList = $('#pillList');

        if (result && result.length > 0) {
            // ����� ������ ����Ʈ�� ����
            for (var i = 0; i < result.length; i++) {
                // ul ��� ����
                var ul = $('<ul>');

                // li ��� ����
                var li1 = $('<li>').append($('<img>', {
                    src: 'resources/img/LOGO_FULL.png',
                    alt: '',
                    id: 'sub',
                    width: '100',
                    height: '50'
                }));

                var li2 = $('<li>').append($('<div>', {
                    class: 'company',
                    text: result[i].entp_name // ���� ���丮������ entp_name ��������
                })).append($('<div>', {
                    class: 'title',
                    text: result[i].item_name // ���� ���丮������ item_name ��������
                }));

                var li3 = $('<li>').append($('<img>', {
                    src: 'resources/img/next.png',
                    width: '25',
                    height: '25',
                    id: 'next'
                }));

                // ul�� li�� �߰�
                ul.append(li1).append(li2).append(li3);

                // pillList�� ul �߰�
                pillList.append(ul).append('<hr>');
            }
        }
    });
	   
		const text = document.getElementsByClassName("text")[0];
		const btn = document.getElementById("icon");

		function search() {
			if (!text.value) {
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