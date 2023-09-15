<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/shapeSear.css"
	type="text/css">
<meta charset="EUC-KR">
<title>��� �˻� ������</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
	<!-- ��� -->
	<div id="searcher">
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/left_arrow.png" alt="ȭ��ǥ" id="arrow" /></a>
		<h3 class=title>������� �˻�</h3>
	</div>

	<!-- ����Ʈ �ڽ� -->
	<section>
		<div class="select">
			<form action="#">
				<select name="shape" id="shape_sel">
					<option value="">��� ����</option>
				</select> <select name="shape" id="formul_sel">
					<!-- <option value="">���� ����</option>
					<option value="����">����</option>
					<option value="Ÿ����">����ĸ��</option> 
					<option value="������">����ĸ��</option> -->
				</select> <select name="shape" id="div_sel">
					<option value="���Ҽ�">���Ҽ� ����</option> 
					<option value="">����</option>
					<option value="+">(+)��</option>  
					<option value="-">(-)��</option> 
				</select>
				<div id="submit">
					<input type="button" value="�˻��ϱ�"/>
				</div>
			</form>
		</div>
	</section>


	<!-- footer -->
	<div class="footer">
		<hr>
		<a href="main" style="text-decoration-line: none;"> <img
			src="resources/img/LOGO_FULL.png" alt="����Ȩ" class="home" />
		</a>
	</div>
	
	
	<script>
	// ���� ����
	jQuery().ready(function () { 
		   
	    $.ajax({ 
	        type: "post", 
	        url: "/selectShape",   
	        data: {},       
	        dataType: "json", // JSON ������ �������� ������ ������ ���
	        contentType : 'application/json;charset=UTF-8',   
	        beforeSend : function(xhr){
	            xhr.setRequestHeader('Content-Type', 'application/json;charset=UTF-8');
	        },   
	        success: function(result) { 
	            console.log(result);  
	 			if(result == null){
	 				alert("��� ������ �������� �� �����߽��ϴ�.");	
	 				return;
	 			}
	            fn_dataBind(result);
	        },
	        error: function(xhr, status, error) {   
	            console.error("Ajax ����:", status, error);
	            alert("������ �߻��߽��ϴ�. �ٽ� �õ����ּ���.");
	        }
	    });
	    
	});
	
	function fn_dataBind(shapeList){
		$('#shape_sel').empty();
		let appendHtml = '';
		appendHtml += '<option value="">��缱��</option>';
		$.each(shapeList, (index, item)=>{
			appendHtml += '<option value="'+ item +'">'+ item +'</option>';
		});
		$('#shape_sel').append(appendHtml);
	}
	
	</script>
</body>
</html>