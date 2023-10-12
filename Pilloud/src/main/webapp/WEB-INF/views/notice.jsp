<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/notice.css" type="text/css">
<meta charset="E/UC-KR">
<title>Main Page</title>
</head>

<body>
	<!-- �������� -->
	<header>
		<div>
		<a href="#" onclick="history.back();">
			<img src="resources/img/left_arrow.png" alt="ȭ��ǥ" id="arrow" /></a>
			<h3 class=title>��������</h3>
		</div>
	</header>
	
	<!-- ������ �� list ���� -->
	<div class="nlist">
		<ul>
			<li id="title">Pilloud ��� ���� �ȳ�</li>
			<a href="javascript:doDisplay1();">
			<li><img src="resources/img/down.png" id="down"/></li>
			</a>
			<p id="answer1" style="display: none;">
				�ȳ��ϼ��� pilloud �Դϴ�.<br><br>
				�̿����� �������� ���� �� �̿� ���� �׸��, ���� �̿��� �� �������� ó����ħ�� �����Ǿ� ����� ����� ���� ������ �˷� �帳�ϴ�.<br><br>
				1. �̿����� �������� ���� �� �̿뿡 ���� ���� �׸� ����<br><br>
				- ���� ����: ����������ȣ�� �� ���ǰ� ���ʿ��� �׸�, �ߺ� ���� �׸� ����<br><br>
				- ���� ����: 2023�� 1�� 9�Ϻ���<br><br>
				�����մϴ�.
			</p>
		</ul><hr>
		<ul>
			<li id="title">Pilloud �������� ó����ħ ���� �ȳ�</li>
			<a href="javascript:doDisplay2();">
			<li><img src="resources/img/down.png" id="down"/></li>
			</a>
			<p id="answer2" style="display: none;">
				�ȳ��ϼ��� pilloud �Դϴ�.<br><br>
				9/1���� '�������� ó����ħ'�� �Ϻ� ����� �����Դϴ�.<br>
				pilloud�� ȸ������ ���������� �����ϰ� Ȱ���ϰ� ��ȣ�ϱ� ���� ��°� ���� ���� �ؼ��� �ּ��� ���ϰ� �ֽ��ϴ�.<br><br>
				������ ��å �� ������ȣ �������� �Ǵ� ���� ����� ���濡 ���� '�������� ó����ħ'�� ������ �߰�/����/������ ���, ���� �ּ� 7�� ���� �̸� �˷��帮�ڽ��ϴ�.<br><br>
				�����մϴ�.
			</p>
		</ul><hr>
		<ul>
			<li id="title">���� �̿��� ���� �ȳ�</li>
			<a href="javascript:doDisplay3();">
			<li><img src="resources/img/down.png" id="down"/></li>
			</a>
			<p id="answer3" style="display: none;">
				�ȳ��ϼ��� pilloud �Դϴ�.<br><br>
				pilloud ��� ���濡 ���� ���� ���� �����ص帳�ϴ�.<br>
				�ֿ� ��� ���� ������ �Ʒ��� �����ϴ�.<br><br>
				- �Ʒ� - <br>	<br>					
				1. �������� ���� ���ǿ� �����Ͽ��� �ΰ����� �� �����ĺ������� ���� �׸����� ���ǹ��� �� �ֵ��� ���� �Ͽ����ϴ�.<br><br>	
				2. ȸ��� ������ ���������� ��3�ڿ��� �������� �����Ƿ� �������� ó����ħ �� ��3�� ������ ���� ������ ��� ���� ��ġ�Ͽ����ϴ�.<br><br>	
				3. �������� ó����ħ �� '���������� ��Ź�� ���� ����'�� �߰��Ͽ����ϴ�.<br><br>	
				4. �������� ó����ħ �� '�������� ��ȣå���� ����� ����ó'�� �߰��Ͽ����ϴ�.<br><br>	 
 				5. �������� ó����ħ �� 'ó���ϴ� ���������� �׸�'�� �����Ͽ����ϴ�.<br><br>
				6. ���� ������: 2023.10.7.<br><br>	
				7. ��� ���� ���� ���� �Ⱓ ��(7��) ��������� �ź��� �ǻ�ǥ�ø� ���� �ƴ��� ȸ���� ���� ����� ������ ������ ���ֵ˴ϴ�.<br><br> 
				�����մϴ�.<br><br><br>
			</p>
		</ul><hr>
	</div>
	
	<!-- footer -->
	<div class="footer">
		<hr style="margin-top: 0; margin-bottom: 8px;">
		<a href="main" style="text-decoration-line: none;"> 
			<img src="resources/img/LOGO_FULL.png" alt="����Ȩ" class="home" />
		</a>
	</div>
	
	
	
	<script>
		function doDisplay1(){
			var ans1 = document.getElementById("answer1");
			
			if(ans1.style.display=='none'){
				ans1.style.display = 'block';
			} else {
				ans1.style.display='none';
			}
		}
		
		function doDisplay2(){
			var ans2 = document.getElementById("answer2");
			
			if(ans2.style.display=='none'){
				ans2.style.display = 'block';
			} else {
				ans2.style.display='none';
			}
		}
		
		function doDisplay3(){
			var ans3 = document.getElementById("answer3");
			
			if(ans3.style.display=='none'){
				ans3.style.display = 'block';
			} else {
				ans3.style.display='none';
			}
		}

	</script>
	
</body>
</html>
