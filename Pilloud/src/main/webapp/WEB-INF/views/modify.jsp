<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/modify.css?after" rel="stylesheet" type="text/css">
<title>나의 정보 수정</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>  
</head>
<body>
	<!-- 상단바 -->
	<header>
	<div>
	<a href="#" onclick="history.back();">
		<img src="resources/img/left_arrow.png" alt="화살표" id="arrow" /></a>
		<h3 class=title>나의 정보 수정</h3>
	</div>
	</header>
	
	<!-- 기본 정보 입력 -->
	<div class="basic">기본 정보</div><br>
	<div class="binfo">
		<div id="email">
			이메일 
			<input type="email" name="email" id="emailInput"><br>  
		</div>
		<div id="nickname">
			닉네임
			<input type="text" name="nickname" id="nmInput" ><br>
		</div>
		<div id="callnum">
			전화번호
			<input type="tel" name="pnum" placeholder="010-2023-0515" id="telInput" ><br>
		</div>
		<div id="gender">
			성별 
			<input type="text" name="sex" id="sexInput"><br>   
		</div>
	</div>
	
	<!-- 상세 정보 입력 -->
	<div class="detail">상세 정보</div><br>
	<div class="dinfo">
		<input disabled type="number" class="box" name="age" placeholder="나이를 입력해주세요" id="ageInput"><br>
		<input type="text" class="box" name="allergy" placeholder="알러지 성분을 입력해주세요" id="allergyInput">
		<button type="button" name="add" class="addBtn" id="addBtn1">추가</button><br>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;-추가된 알러지 성분 정보-</p>    
		<ul id="allergyList">  
			  
		</ul>
		<input type="text" class="box" name="medicine" placeholder="복용 중인 약을 입력해주세요" id="medicineInput">
		<button type="button" name="add" class="addBtn" id="addBtn2">추가</button><br>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;-추가된 복용 중인 약 정보-</p>
		<ul id="medicineList">
			
 		</ul>
		<input type="text"  class="box" name="disease" placeholder="앓고 있는 지병이 있으신가요" id="diseaseInput">
		<button type="button" name="add" class="addBtn" id="addBtn3">추가</button><br>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;-추가된 지병 정보-</p> 
		<ul id="diseaseList">
			  
		</ul>
		<div id="pregnant">   
			-임산부이신가요? <input type="checkbox" name="pregnant" id="pregYn">
		</div>
	</div>
	
	<!-- 수정하기 버튼 -->
	<button type="button" name="edit" id="editBtn">수정하기</button>

	<script>
	// 최초 실행
	var allergies = []; // 알러지 정보를 담을 배열
    var medicines = []; // 복용 중인 약 정보를 담을 배열
    var diseases = []; // 지병 정보를 담을 배열

	jQuery().ready(function () {
	    // 세션 값 가져오기 
	    var id = '<c:out value="${sessionScope.user.id}" />';  
	    var birth = '<c:out value="${sessionScope.user.birth}" />'; 
	      
	    var data = {
	        id: id
	    };
	  
	    $.ajax({
	        type: "post",
	        url: "/selectInfo",
	        data: data,
	        dataType: "json",
	        success: function(result) { 
	            if (result != null) {
	                // 서버에서 받은 JSON 데이터를 사용
	                $('#emailInput').val(result.email);
	                $('#nmInput').val(result.nm);
	                $('#telInput').val(result.tel);  
	                $('#sexInput').val(result.sex); 
	                var age = fn_age(birth);     
	                $('#ageInput').val(age);            
	                console.log(result.preg_yn);  
	                if(result.preg_yn == "Y"){
	                	$('#pregYn').prop('checked', true);
	                } else{   
	                	$('#pregYn').prop('checked', false);
	                } 
   
	                // 알러지 정보를 콤마로 분리하여 리스트에 추가
	                console.log(result.allergy);  
	                var allergyItems = result.allergy.split(',');
	                var allergyList = $('#allergyList');
	                //allergyList.empty(); // 리스트 초기화  
	                if(result.allergy){ 
	                	allergyItems.forEach(function(item) {  
		                    var listItem = $('<li>').text(item);
		                    allergyList.append(listItem);
		                    allergies.push(item);   
		                });
	                }
	                

	                // 복용 중인 약 정보를 콤마로 분리하여 리스트에 추가
	                var medicineItems = result.medicine.split(',');
	                var medicineList = $('#medicineList');
	                //medicineList.empty(); // 리스트 초기화
	                if(result.medicine){ 
	                	medicineItems.forEach(function(item) {
		                    var listItem = $('<li>').text(item);
		                    medicineList.append(listItem);
		                    medicines.push(item);
		                });
	                }

	                // 지병 정보를 콤마로 분리하여 리스트에 추가
	                var diseaseItems = result.disease.split(',');
	                var diseaseList = $('#diseaseList');
	                //diseaseList.empty(); // 리스트 초기화   
	                if(result.disease){ 
	                	diseaseItems.forEach(function(item) {
		                    var listItem = $('<li>').text(item);
		                    diseaseList.append(listItem);
		                    diseases.push(item);   
		                });
	                }   
	            } else {
	                alert("유저 정보를 가져오는 데 실패했습니다.");
	            }
	        },
	        error: function() {
	            alert("서버 오류가 발생했습니다. 다시 시도해주세요.");
	        }
	    });    
	     
	});
	
	// 상세정보 추가버튼 
    $('#addBtn1').on('click', function() { 
        var allergyInputVal = $('#allergyInput').val(); // 입력된 값을 가져옴
        if (allergyInputVal && allergyInputVal.trim() != '') {
            allergies.push(allergyInputVal); // 알러지 정보를 배열에 추가
            $('#allergyList').append($('<li>').text(allergyInputVal)); 
            $('#allergyInput').val(''); // 입력란 비우기
        }
        
        
    });

    $('#addBtn2').on('click', function() {
        var medicineInputVal = $('#medicineInput').val(); // 입력된 값을 가져옴 
        if (medicineInputVal && medicineInputVal.trim() != '') {  
            medicines.push(medicineInputVal); // 복용 중인 약 정보를 배열에 추가
            $('#medicineList').append($('<li>').text(medicineInputVal));
            $('#medicineInput').val(''); // 입력란 비우기
        }
    });
   
    $('#addBtn3').on('click', function() {
        var diseaseInputVal = $('#diseaseInput').val(); // 입력된 값을 가져옴
        if (diseaseInputVal && diseaseInputVal.trim() != '') {
            diseases.push(diseaseInputVal); // 지병 정보를 배열에 추가
            $('#diseaseList').append($('<li>').text(diseaseInputVal));   
            $('#diseaseInput').val(''); // 입력란 비우기
        }
    }); 
    
 	// 유저정보수정
	$('#editBtn').on('click', function() {
    // 배열을 콤마로 구분된 문자열로 변환
    var allergy = allergies.join(',');
    var medicine = medicines.join(',');
    var disease = diseases.join(',');

    // 나머지 데이터를 가져오는 코드도 여기에 추가 
    var email = $('#emailInput').val();
    var nm = $('#nmInput').val();
    var tel = $('#telInput').val();
    var sex = $('#sexInput').val();
    var id = '<c:out value="${sessionScope.user.id}" />';
    var age = $('#ageInput').val();
    var pregYn = ""
    if($('#pregYn').is(':checked')){
    	pregYn = "Y";
    } else {
    	pregYn = "N";     
    }
    
    var data = {
        id: id, 
        email: email,
        nm: nm,
        tel: tel,
        sex: sex,
        allergy: allergy,
        medicine: medicine,
        disease: disease,
        pregnant: pregYn  
    };

    // AJAX 요청 및 서버로 데이터 전송
    $.ajax({
        type: 'post',
        url: '/updateInfo',
        data: data,
        success: function(result) {
            console.log('성공 여부: ' + result);
            alert('성공적으로 저장되었습니다.');
         	//새로고침   
            location.reload();
        },
        error: function() {
            alert('서버 오류가 발생했습니다. 다시 시도해주세요.');
        }
    });
});  
 	
	// 생년월일 만 나이 개산
	function fn_age(birthday) {

	   birthday = Number(birthday.replace(/-/gi,'')); // '-' 문자 모두 '' 변경
	   
	   let today = new Date(); // 오늘 날짜를 가져옴
	   let yearNow = String(today.getFullYear()); // Date 객체의 년도를 가져옵니다.
	   let monthNow = String(today.getMonth() + 1); // 객체의 월 정보를 가져옵니다. 1월은 0으로 표현됨을 주의해야 합니다. (0~11)
	   let dayNow = String(today.getDate()); // Date 객체의 일자 정보를 가져옵니다. (0~31)
	   
	   monthNow = (monthNow < 10) ? '0' + monthNow : monthNow;
	   dayNow = (dayNow < 10) ? '0' + dayNow : dayNow;
	   
	   today = Number(yearNow + monthNow + dayNow);   // 오늘날짜 숫자형으로 변환

	   let age = Math.floor((today - birthday) / 10000);  // 소수점 버림

	   return age;
	}

 	
	</script>
</body>
</html>

