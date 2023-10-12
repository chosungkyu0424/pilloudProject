<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>    
<!DOCTYPE html> 
<html>
<head>
<meta charset="EUC-KR">   
<link rel="stylesheet" href="resources/css/bookmark.css" type="text/css">
<title>���� ã�ƺ��� �Ǿ�ǰ</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>    
</head>
<body>
	<!-- ��ܹ� -->
	<header>
	<div>
	<a href="#" onclick="history.back();">
		<img src="resources/img/left.png" alt="ȭ��ǥ" id="arrow" /></a>
		<div class=title>���� ã�ƺ��� �Ǿ�ǰ</div>
	</div>
	</header>
	<hr>
	
	<div class="scrollBar">
		<div style="margin-top: 50px;">
			<p>
				<span style="color: red; font-size: 5px;">��</span>�������
			</p>
			<hr>
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
	</div><br><br><br>
	
	<!-- footer -->
	<footer>
		<hr>
		<a href="main" style="text-decoration-line:none;">
		<img src="resources/img/LOGO_FULL.png" alt="����Ȩ" class="home" /> </a>
	</footer>
	
	<script>
	
	$(document).ready(function(){   
		fn_selectBookmark();
	});      
	
	var resultList;     
	function fn_selectBookmark() {
	    $.ajax({  
	        type: "post",
	        url: "selectBookmark",   
	        contentType: "application/json; charset=UTF-8",
	        dataType: "json",   
	        success: function(result) {
	            console.log("Success!");
	            console.log(result);   
	            resultList = result;
	            console.log(resultList); 
	            fn_addList(); 

	            if (result == null) {
	                alert("�ϸ�ũ ����Ʈ�� �������� �� �����߽��ϴ�.");
	                return;
	            }
	        },
	        error: function(xhr, status, error) {
	            //console.error("Ajax ����:", status, error);
	            alert("������ �߻��߽��ϴ�. �ٽ� �õ����ּ���.");
	        }
	    });
	}   
	
	function fn_addList() {
	    var result = resultList;
	    var pillList = $('#pillList'); 
	    if (result && result.length > 0) {
	        // ����� ������ ����Ʈ�� ����
	        for (var i = 0; i < result.length; i++) {
	            // ul ��� ����
	            var ul = $('<ul>');

	            // li ��� ����
	            var li1 = $('<li>').append($('<img>', {
	                src: result[i].item_image,
	                alt: '',
	                id: 'sub',
	                width: '80',
	                height: '50'
	            }));

	            var li2 = $('<li>').append($('<div>', {
	                class: 'company',
	                text: result[i].entp_name
	            })).append($('<div>', {
	                class: 'title',
	                text: result[i].item_name
	            }));
     
	            var li3 = $('<li>').append($('<a>', {
	                href: 'detailPage?item_image=' + encodeURIComponent(result[i].item_image) + '&entp_name=' + encodeURIComponent(result[i].entp_name) + '&item_name=' + encodeURIComponent(result[i].item_name),
	            }).append($('<img>', {
	                src: 'resources/img/next.png',
	                width: '20',
	                height: '20',
	                id: 'next'
	            }))).append($('<button>', {
	                text: '����',  
	                id: 'deleteBtn',
	                style: 'margin-top: 5px;'
	            }));

	         	// ���� ��ư�� Ŭ�� �̺�Ʈ ������ ���
	            li3.find('#deleteBtn').on('click', function() {
	                var index = $(this).closest('ul').index(); // ���� ��ư�� ���� ����Ʈ�� �ε���
	                var itemSeq = resultList[index].item_seq; // ������ �Ǿ�ǰ�� item_seq

	                // ������ ���� ��û ������
	                $.ajax({
	                    type: "post",  
	                    url: "deleteBookmark",   
	                    data: JSON.stringify({ item_seq: itemSeq }),     
	                    contentType: "application/json; charset=utf-8",
	                    success: function(response) {
	                        // ���������� �����Ǹ� �ش� ����Ʈ�� ȭ�鿡���� ����
	                        resultList.splice(index, 1); // ����Ʈ���� �ش� �ε����� ��� ����
	                        alert("�����Ǿ����ϴ�.");
	                        $('#pillList').empty(); // ����Ʈ ����
	                        fn_addList(); // ������Ʈ�� ����Ʈ�� �ٽ� �߰�
	                    },
	                    error: function(xhr, status, error) {
	                        console.error("Ajax ����:", status, error);
	                        alert("���� �� ������ �߻��߽��ϴ�.");
	                    }
	                });
	            });
	            
	            // ul�� li�� �߰�
	            ul.append(li1).append(li2).append(li3);

	            // pillList�� ul �߰�
	            pillList.append(ul).append('<hr>');
	        }
	    } else {
	        // ����� ���� �� ó�� (��: �޽��� ��� �Ǵ� �ٸ� ���� ����)
	        pillList.append('<p>�ϸ�ũ�� �Ǿ�ǰ�� �����ϴ�.</p>');
	    }
	}
	
	</script>
</body>
</html>