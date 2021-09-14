<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 메타 태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- css  -->
<link href="${pageContext.request.contextPath }/assets/bootstrap/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/admin/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/admin/schedule.css" rel="stylesheet" type="text/css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>

<title>admin-schedule</title>

</head>
<body>
	<!-- 헤더 -->
	<c:import url="/WEB-INF/views/admin/includes/header.jsp"></c:import>
	<!-- //헤더 -->
	
	<!-- 컨텐츠 -->
	<div id="content" class="clearfix">
		<!-- 어사이드 -->
		<c:import url="/WEB-INF/views/admin/includes/aside.jsp"></c:import>
		<!-- //어사이드 -->
			
		<!-- 메인 -->
		<div id="main" class="pull-left">
			
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
	<!-- //컨텐츠 -->
</body>

</html>