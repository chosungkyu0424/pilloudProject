<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
	    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<link rel="stylesheet" href="resources/css/caution.css" type="text/css">
<meta charset="EUC-KR">
<title>����� ���ǻ��� ����</title>

</head>
<body>
<%
   String itemName = (String) session.getAttribute("itemName");
    %>
    
	<!-- ��ǰ�� ��� -->
	<div class="top">
		<img src="resources/img/left_arrow.png" alt="ȭ��ǥ" id="arrow"
			onclick="history_back()" />
		<script>
		 document.addEventListener('DOMContentLoaded', function(){
		        // Fetch API�� ����� Ajax ��û
		        fetch('https://apis.data.go.kr/1471000/DrbEasyDrugInfoService/getDrbEasyDrugList?serviceKey=RlP5Qs6W7JzE4R72UmPN5dqZ5zMcFWMluYCsSwarFUzSHvlUdP3ZRc8t72i4LF9oM2SbnfiD%2FF4YOVKFJvVQqw%3D%3D&pageNo=1&numOfRows=3&type=json&itemSeq=200003092') // ���� API ��������Ʈ�� ��ü�ؾ� �մϴ�.
		            .then(response => response.json())
		            .then(data => {
		                // API ���� ���� �� ����Ǵ� �Լ�
		                // �޾ƿ� �����͸� ȭ�鿡 ǥ��
		                console.log(data)
		                let showData = data.body.items[0].efcyQesitm;
		                let store = data.body.items[0].depositMethodQesitm;
		                let seQesitm = data.body.items[0].seQesitm;
		                let useMethodQesitm = data.body.items[0].useMethodQesitm;
		                console.log(JSON.stringify(store))
		                $("#warnText").val(showData);
		                $("#store").val(store);
		                $("#seQesitm").val(seQesitm);
		                $("#useMethodQesitm").val(useMethodQesitm);
		                //$("#caution").innerHTML=(JSON.stringify(showData))
		                //document.getElementById('caution').innerHTML = 'API Response: ' + JSON.stringify(data);
		            })
		        })
		            
	</script>

	
	
	<script>
	    // �������� �ε�� �� ����Ǵ� �Լ�
	   

	
		function history_back() {
				history.back()
			}
		</script>
		<h3 class=title>���ǻ���</h3>
	</div>
	
	<!-- ��ǰ ���ǻ��� ���� -->
<!-- 	<div class="pill_caution"> -->
<!-- 	<p>����</p> -->
<!-- 	</div> -->
<div id="caution">
<h3 style="margin-top:70px;margin-left:20px; margin-right:25px;"> ���ǻ���</h3>
<textArea id="warnText" readonly style="width:90%;height:100px;border:none;margin:10px 20px 20px 25px;"></textArea>
<h3 style="margin-top:10px;margin-left:20px"> ������</h3>
<textArea id="store" readonly style="width:90%;height:30px;border:none;margin:10px 20px 20px 25px;"></textArea>
<h3 style="margin-top:10px;margin-left:20px"> ���ۿ� ����</h3>
<textArea id="seQesitm" readonly style="width:90%;height:100px;border:none;margin:10px 20px 20px 25px;"></textArea>
<h3 style="margin-top:10px;margin-left:20px"> �����</h3>
<textArea id="useMethodQesitm" readonly style="width:90%;height:100px;border:none;margin:10px 20px 20px 25px;"></textArea>

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
