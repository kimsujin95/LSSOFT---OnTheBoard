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
<link href="${pageContext.request.contextPath }/assets/css/datepicker.css" rel="stylesheet" type="text/css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />

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
						<h2>날짜 선택</h2>
					</div>
					<!-- //서브 타이틀 -->
					
					<!-- 달력 영역 -->
					<div id="calendar">
						<div id="datepicker" class="date"></div>
					</div>
					<!-- 달력 영역 -->
					
				</div>
				<!-- //본문 영역 -->

				<!-- 본문 영역 -->
				<div class="content-area">
					<!-- 서브 타이틀 -->
					<div class="sub-title">
						<h2>예약 세부 설정</h2>
					</div>
					<!-- //서브 타이틀 -->					
				
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
	$('.date').datepicker({
		multidate: true,
		format: 'yyyy-mm-dd'
	});
</script>

</html>