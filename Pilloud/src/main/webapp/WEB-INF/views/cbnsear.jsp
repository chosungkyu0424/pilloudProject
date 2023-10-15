<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/cbnsear.css" type="text/css">
<meta charset="EUC-KR">
<title>Conbination X search Page</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>  
</head>
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

		<ul onchange="radioChangeHandler()">
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
		<input type="text" value="" id="pillName" placeholder="��ǰ���� �Է��ϼ���"/>
		<div id="submit">
			<input type="button" value="�˻��ϱ�" onclick="search()" />
		</div>
	</div>

	<script>
		const radio_sel = document.getElementsByName("select");
		function check(){
			var j = 0;
			for (var i = 0; i < radio_sel.length; i++) {
				if (radio_sel[i].checked) {
					j++;
				}
			}
			if(j<1) {
				return false;
			} else {
				return true;
			}
			
		}
		
		function search() {
			var chk = check();
			if(!chk){
				alert("�˻��Ͻ� ���ǻ��� �׸��� �������ֽʽÿ�.");
				return;
			}//���� �������� apiȣ��
			//������ ����
			var data = {}
			for (var i = 0; i < radio_sel.length; i++) {
				if (radio_sel[i].checked) {
					var selectedRadioID = radio_sel[i].id;
					switch (selectedRadioID) {
					    case "radioOne":
					        data.type = 'getOdsnAtentInfoList03'
					        break;
					    case "radioTwo":
					    	data.type = 'getUsjntTabooInfoList03'
						        break;
					    case "radioThree":
					        data.type = 'getSpcifyAgrdeTabooInfoList03'
					        break;
					    case "radioFour":
					    	data.type = 'getPwnmTabooInfoList03'
						        break;
					    case "radioFive":
					        data.type = 'getCpctyAtentInfoList03'
					        break;
					    case "radioSix":
					    	data.type = 'getMdctnPdAtentInfoList03'
						        break;
					    case "radioSeven":
					        data.type = 'getEfcyDplctInfoList03'
					        break;
					    case "radioEight":
					    	data.type = 'getSeobangjeongPartitnAtentInfoList03'
						        break;
					}
				}
			}
			data.pillName = document.getElementById("pillName").value;

			//data={pillName, type(, +pageInfo)}
			$.ajax({
		        type: "post",
		        url: "/searchPillWarn",//����
		        data: JSON.stringify(data),
		        contentType: "application/json; charset=UTF-8",
		        dataType: "json",
		        success: function (result) {
		        	console.log(result); 
		         	// �˻� ����� ���� ���丮���� ����
		            localStorage.setItem('searchResult', JSON.stringify(result));

		            //URL�� ���𷺼�  
		            window.location.href = 'list';

		            if (result == null) {
		                alert("�๰ ������ �������� �� �����߽��ϴ�.");
		            }
		        },
		        error: function (xhr, status, error) {
		            console.error("Ajax ����:", status, error);
		            alert("������ �߻��߽��ϴ�. �ٽ� �õ����ּ���.");
		        }
		    });
			
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