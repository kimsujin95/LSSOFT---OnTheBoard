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
													<select class="form-control" name="storeReservationMax">
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
													</select>
													<label class="input-group-addon">총 예약 가능 인원</label>
													<input type="text" class="form-control" name="storeReservationTotal" value="0">
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
											</td>
										</tr>
										<tr>
											<td>	
												<input type="checkbox" class="btn-check" id="btn-check-11" name="times" value="11">
												<label class="btn time-select" for="btn-check-11">11:00</label>
												<input type="checkbox" class="btn-check" id="btn-check-12" name="times" value="12">
												<label class="btn time-select" for="btn-check-12">12:00</label>
											</td>
										</tr>
										<tr>
											<td>
												<input type="checkbox" class="btn-check" id="btn-check-13" name="times" value="13">
												<label class="btn time-select" for="btn-check-13">13:00</label>
												<input type="checkbox" class="btn-check" id="btn-check-14" name="times" value="14">
												<label class="btn time-select" for="btn-check-14">14:00</label>
											</td>
										</tr>
										<tr>
											<td>
												<input type="checkbox" class="btn-check" id="btn-check-15" name="times" value="15">
												<label class="btn time-select" for="btn-check-15">15:00</label>
												<input type="checkbox" class="btn-check" id="btn-check-16" name="times" value="16">
												<label class="btn time-select" for="btn-check-16">16:00</label>
											</td>
										</tr>
										<tr>
											<td>
												<input type="checkbox" class="btn-check" id="btn-check-17" name="times" value="17">
												<label class="btn time-select" for="btn-check-17">17:00</label>
												<input type="checkbox" class="btn-check" id="btn-check-18" name="times" value="18">
												<label class="btn time-select" for="btn-check-18">18:00</label>
											</td>
										</tr>
										<tr>
											<td>
												<input type="checkbox" class="btn-check" id="btn-check-19" name="times" value="19">
												<label class="btn time-select" for="btn-check-19">19:00</label>
												<input type="checkbox" class="btn-check" id="btn-check-20" name="times" value="20">
												<label class="btn time-select" for="btn-check-20">20:00</label>
											</td>
										</tr>
										<tr>
											<td>
												<input type="checkbox" class="btn-check" id="btn-check-21" name="times" value="21">
												<label class="btn time-select" for="btn-check-21">21:00</label>
												<input type="checkbox" class="btn-check" id="btn-check-22" name="times" value="22">
												<label class="btn time-select" for="btn-check-22">22:00</label>
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
	window.onload = function() {
		/* div에 데이트 피커 선언 */
		$(".date").datepicker({
			format: "yyyy/mm/dd"
			,todayHighlight: true
			,multidate : true
		});
		
		/* input type="hidden"에 데이터 저장 */
		$(".date").on("changeDate", dateInsert);
	}
	
	function dateInsert() {
		$("#date-input").val($(".date").datepicker("getFormattedDate"));
		    console.log($("#date-input").val());
	};
</script>

<!-- 스케쥴 등록 및 확인 선택 -->
<script type="text/javascript">
	$("#scheduleCheck").on("click", function(){
		if($("#scheduleCheck").text() === "스케쥴 확인") {
			console.log("스케쥴 확인 클릭");
	
			$("#insert").text("수정");
			$("#scheduleCheck").text("스케쥴 일괄 변경");
			
			$(".date").datepicker({
				format: "yyyy/mm/dd"
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
	
</script>

<!-- 스케쥴 정보 등록 및 수정-->
<script type="text/javascript">
	//시간 선택 시, 해당 checkbox의 label 활성화
	$(".time-select").on("click", function(){
		
		if($(this).hasClass("btn-primary") === true) {
			$(this).removeClass("btn-primary");
		} else {
			$(this).addClass("btn-primary");
		}
	});

	//등록 버튼 클릭 시, 선택된 날짜 및 시간 정보를 ajax로 등록 요청
	$("#insert").on("click", function(){
		
	    var date = $("#date-input").val();
	    var times = [];
		var storeReservationMax = Number($("select[name=storeReservationMax]").val());
	    var storeReservationTotal = Number($("input[name=storeReservationTotal]").val());
	    
	    $("input[name='times']:checked").each(function(i) {
	    	times.push($(this).val());
	    });
		
	    console.log(date);
	    console.log(times);
	    
	    // 예외처리 
	    
	    if(date.length < 1) {
	    	alert("날짜를 선택해주세요.");
	    	console.log("날짜 미선택");
	    	return false;
	    }
	    
	    if(times.length < 1) {
	    	alert("시간을 선택해주세요.");
	    	console.log("시간 미선택");
	    	return false;
	    }
	    
	    console.log("storeReservationTotal < storeReservationMax");
    	
    	console.log(storeReservationTotal);
    	console.log(storeReservationMax);
    	
    	console.log(storeReservationTotal < storeReservationMax);
	    
	    if(storeReservationTotal < storeReservationMax) {
	    	alert("총 예약 가능 인원이 1회 최대 예약 인원보다 작을 수 없습니다.")
	    	console.log("인원 수 재설정 필요");
	    	
	    	return false;
	    }
	    
	    //예외처리 이후, data 취합
	    var allData = {
	    		date : date,
	    		times : times,
	    		storeReservationMax : storeReservationMax,
	    		storeReservationTotal : storeReservationTotal
	    };
	    
	    console.log(allData);
	    
	    //ajax로 스케쥴 데이터	 등록
	    $.ajax({
	        //요청 코드
	        url: "${pageContext.request.contextPath }/admin/scheduleInsert",				//데이터를 받을 주소를 입력
	        type: "get",				//get, post 데이터를 보낼 때, 방식을 설정
	        //contentType: "application/json",
	        data: allData	//보내는 데이터의 형식, 객체를 생성하여 집어넣어도 된다
		});
	});
</script>

</html>