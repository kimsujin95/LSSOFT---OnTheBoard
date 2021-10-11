<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<!-- 메타 태그 -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- css  -->
<link href="${pageContext.request.contextPath }/assets/bootstrap/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/admin/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/admin/schedule.css" rel="stylesheet" type="text/css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>

<!-- 데이트 피커 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/assets/css/datepicker.css" rel="stylesheet" type="text/css">

<title>admin-schedule</title>

</head>
<body>

	<!-- 헤더 -->
	<c:import url="/WEB-INF/views/admin/includes/header.jsp"></c:import>
	<!-- //헤더 -->
	
	<!-- 컨텐츠 -->
	<div id="content" class="container">
		<!-- 로우 -->
		<div class="row">
		
			<!-- 어사이드 -->
			<c:import url="/WEB-INF/views/admin/includes/aside.jsp"></c:import>
			<!-- //어사이드 -->
				
			<!-- 메인 -->
			<div id="main" class="col-xs-10">
				
				<!-- 메인 타이틀 -->
				<div id="main-title">
					<h1>스케쥴 관리</h1>
				</div>
				<!-- //메인 타이틀 -->
					
				<!-- 본문 영역 -->
				<div class="content-area">
					<!-- 서브 타이틀 -->
					<div class="sub-title">
						<h2>스케쥴 입력</h2>
					</div>
					<!-- //서브 타이틀 -->
					
					<!-- 달력 영역 -->
					<div id="calendar" class="container-fluid">
						<div class="row">
							<div id="picker-container" class="date col-xs-6">
								<input id="date-input" type="hidden" name="date">
							</div>
							<div class="col-xs-6">
								<div id="table-area">
									<table id="time-table" class="font-size-14 border-default">
										<tr>
											<th>예약 가능 인원</th>
										</tr>
										<tr>
											<td>
												<div id="res-people" class="input-group pull-left">
													<label class="input-group-addon">1회 최대 예약 인원</label>
													<select class="form-control">
														<option>2</option>
														<option>3</option>
														<option>4</option>
														<option>5</option>
														<option>6</option>
													</select>
													<label class="input-group-addon">총 예약 가능 인원</label>
													<input type="number" class="form-control">
												</div>
											</td>
										</tr>
										<tr>
											<th>예약 가능 시간</th>
										</tr>
										<tr>
											<td>
												<input type="checkbox" class="btn-check" id="btn-check-09" name="times" value="09">
												<label class="btn time-select" for="btn-check-09">09:00</label>
												<input type="checkbox" class="btn-check" id="btn-check-10" name="times" value="10">
												<label class="btn time-select" for="btn-check-10">10:00</label>
												<br>
												<input type="checkbox" class="btn-check" id="btn-check-11" name="times" value="11">
												<label class="btn time-select" for="btn-check-11">11:00</label>
												<input type="checkbox" class="btn-check" id="btn-check-12" name="times" value="12">
												<label class="btn time-select" for="btn-check-12">12:00</label>
												<br>
												<input type="checkbox" class="btn-check" id="btn-check-13" name="times" value="13">
												<label class="btn time-select" for="btn-check-13">13:00</label>
												<input type="checkbox" class="btn-check" id="btn-check-14" name="times" value="14">
												<label class="btn time-select" for="btn-check-14">14:00</label>
												<br>
												<input type="checkbox" class="btn-check" id="btn-check-15" name="times" value="15">
												<label class="btn time-select" for="btn-check-15">15:00</label>
												<input type="checkbox" class="btn-check" id="btn-check-16" name="times" value="16">
												<label class="btn time-select" for="btn-check-16">16:00</label>
												<br>
												<input type="checkbox" class="btn-check" id="btn-check-17" name="times" value="17">
												<label class="btn time-select" for="btn-check-17">17:00</label>
												<input type="checkbox" class="btn-check" id="btn-check-18" name="times" value="18">
												<label class="btn time-select" for="btn-check-18">18:00</label>
												<br>
												<input type="checkbox" class="btn-check" id="btn-check-19" name="times" value="19">
												<label class="btn time-select" for="btn-check-19">19:00</label>
												<input type="checkbox" class="btn-check" id="btn-check-20" name="times" value="20">
												<label class="btn time-select" for="btn-check-20">20:00</label>
												<br>
												<input type="checkbox" class="btn-check" id="btn-check-21" name="times" value="21">
												<label class="btn time-select" for="btn-check-21">21:00</label>
												<input type="checkbox" class="btn-check" id="btn-check-22" name="times" value="22">
												<label class="btn time-select" for="btn-check-22">22:00</label>
												<br>
											</td>
										</tr>
									</table>
								</div>
							</div>
							<div class="col-xs-12 btn-area">
								<button id="scheduleCheck" type="submit" class="btn btn-lg btn-primary">스케쥴 확인</button>
								<button id="insert" type="submit" class="btn btn-lg btn-primary">등록</button>
								<button id="delete" type="submit" class="btn btn-lg btn-primary">삭제</button>
							</div>
						</div>
					</div>
					<!-- 달력 영역 -->
					
				</div>
				<!-- //본문 영역 -->

			</div>
			<!-- //메인 -->
		</div>
		<!-- //로우 -->
	</div>
	<!-- //컨텐츠 -->
</body>

<!-- 데이트 피커 -->
<script type="text/javascript">
	/* div에 데이트 피커 선언 */
	$(".date").datepicker({
		format: "yyyy/mm/dd"
		,todayHighlight: true
		,multidate : true
	});
	
	/* input type="hidden"에 데이터 저장 */
	$(".date").on("changeDate", function() {
	    $("#date-input").val(
	        $(".date").datepicker("getFormattedDate")
	    );
	   
	    console.log($("#date-input").val());
	    
	});
</script>

<!-- 스케쥴 등록 ajax -->
<script type="text/javascript">
	$("#scheduleCheck").on("click", function(){
		if($("#scheduleCheck").text() === "스케쥴 확인") {
			console.log("스케쥴 확인 클릭");
	
			$("#insert").text("수정");
			$("#scheduleCheck").text("스케쥴 일괄 변경");
			
			$(".date").datepicker({
				format: "yyyy-mm-dd"
				,todayHighlight: true
			});
			
		} else if ($("#scheduleCheck").text() === "스케쥴 일괄 변경") {
			console.log("스케쥴 일괄 변경");
	
			$("#insert").text("등록");
			$("#scheduleCheck").text("스케쥴 확인");
			
			$(".date").datepicker({
				format: "yyyy/mm/dd"
				,todayHighlight: true
				,multidate : true
			});
		}
		
		
	});
	
	$(".time-select").on("click", function(){
		
		if($(this).hasClass("btn-primary") === true) {
			$(this).removeClass("btn-primary");
		} else {
			$(this).addClass("btn-primary");
		}
		
	});
	
	$("#insert").on("click", function(){
		
	    var date = $("#date-input").val();
	    var times = [];
	    
	    $("input[name='times']:checked").each(function(i) {
	    	times.push($(this).val());
	    });
		
	    console.log(date);
	    console.log(times);
	    
	    var allData = {
	    		"date" : date,
	    		"times" : times
	    };
	    
	    console.log(allData);
	    
	    $.ajax({
	        //요청 코드
	        url: "${pageContext.request.contextPath }/admin/scheduleInsert",				//데이터를 받을 주소를 입력
	        type: "get",				//get, post 데이터를 보낼 때, 방식을 설정
	        //contentType: "application/json",
	        data: allData,	//보내는 데이터의 형식, 객체를 생성하여 집어넣어도 된다
	        
	        //데이터를 받는 코드
	        /* dataType: "json",			//데이터를 받는 형식, 일반적인 java코드를 이해하지 못하기 때문에 json으로 번역하여 받는다
	        success: function(resultData) {
	            // TODO : 결과로 받은 resultData로 작업 !
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	            // 에러 로그는 아래처럼 확인해볼 수 있다. 
	            alert("업로드 에러\ncode : " + jqXHR.status + "\nerror message : " + jqXHR.responseText);
	        } */
		});
	    
	});
</script>
</html>