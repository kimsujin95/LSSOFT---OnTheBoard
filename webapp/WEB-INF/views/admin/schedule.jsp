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
								<input id="date-input" type="hidden">
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
												<button class="btn time-select">09:00</button>
												<button class="btn time-select">10:00</button>
												<br>
												<button class="btn time-select">11:00</button>
												<button class="btn time-select">12:00</button>
												<br>
												<button class="btn time-select">13:00</button>
												<button class="btn time-select">14:00</button>
												<br>
												<button class="btn time-select">15:00</button>
												<button class="btn time-select">16:00</button>
												<br>
												<button class="btn time-select">17:00</button>
												<button class="btn time-select">18:00</button>
												<br>
												<button class="btn time-select">19:00</button>
												<button class="btn time-select">20:00</button>
												<br>
												<button class="btn time-select">21:00</button>
												<button class="btn time-select">22:00</button>
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

<script type="text/javascript">
	
	/* div에 데이트 피커 선언 */
	$(".date").datepicker({
		format: "yyyy-mm-dd"
		,todayHighlight: true
		,multidate : true
	});
	
	/* input type="hidden"에 데이터 저장 */
	$(".date").on("changeDate", function() {
	    $("#date-input").val(
	        $(".date").datepicker("getFormattedDate")
	    );
	    
	    var date = $("#date-input").val();
	    
	    console.log(date);
	    
	});
	
	$("#scheduleCheck").on("click", function(){
		console.log("스케쥴 확인 클릭");
		if($("#scheduleCheck").text() === "스케쥴 확인") {
			$("#insert").text("수정");
			$("#scheduleCheck").text("스케쥴 일괄 변경");
			
			$(".date").datepicker({
				format: "yyyy-mm-dd"
				,todayHighlight: true
			});
			
		} else if ($("#scheduleCheck").text() === "스케쥴 일괄 변경") {
			$("#insert").text("등록");
			$("#scheduleCheck").text("스케쥴 확인");
			
			$(".date").datepicker({
				format: "yyyy-mm-dd"
				,todayHighlight: true
				,multidate : true
			});
		}
		
		
	});
	
	$(".time-select").on("click", function(){
		console.log($(this).text());
		
		if($(this).hasClass("btn-primary") === true) {
			$(this).removeClass("btn-primary");
		} else {
			$(this).addClass("btn-primary");
		}
		
	});
	
	
</script>

</html>