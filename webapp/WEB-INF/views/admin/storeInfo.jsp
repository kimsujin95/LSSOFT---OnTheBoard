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
<link href="${pageContext.request.contextPath }/assets/css/admin/storeInfo.css" rel="stylesheet" type="text/css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>

<title>admin-storeInfo</title>

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
					<h1>매장 관리</h1>
				</div>
				<!-- //메인 타이틀 -->
					
				<!-- 본문 영역 -->
				<div class="content-area">
					<!-- 서브 타이틀 -->
					<div class="sub-title">
						<h2>매장 정보</h2>
					</div>
					<!-- //서브 타이틀 -->
	
					<!-- 리스트 영역 -->
					<div class="list-area">
						<!-- 테이블 영역 -->
						<table id="storeInfo-table" class="font-size-14">
							<tr>
								<th>업종</th>
								<td>
									<input class="form-check-input" id="store-board" type="radio" name="store-status">
									<label class="form-check-label" for="store-board">보드게임 카페</label>
									<input class="form-check-input" id="store-general" type="radio" name="store-status">
									<label class="form-check-label" for="store-general">일반 자영업</label>
								</td>
							</tr>
							<tr>
								<th>
									<label for="store-name">매장명</label>
								</th>
								<td>
									<input id="store-name" type="text" placeholder="매장 이름을 등록해주세요">
								</td>
							</tr>
							<tr>
								<th>
									<label for="store-number">사업자 번호</label>
								</th>
								<td>
									<input id="store-number" type="text" placeholder="사업자 번호를 등록해주세요">
								</td>
							</tr>
							<tr>
								<th>매장 위치</th>
								<td>
									<label for="adress-search">
										<input id="adress" type="text" placeholder="주소를 입력해주세요">
									</label>
									<input type="button" id="adress-search" class="btn" value="주소찾기">
									<br><input id="adress-detail" type="text" placeholder="상세 주소를 입력해주세요">
								</td>
							</tr>
							<tr>
								<th>대표 전화</th>
								<td>
									<input id="rep-phone-number" type="text" placeholder="대표 전화를 입력해주세요">
								</td>
							</tr>
							<tr>
								<th>핸드폰</th>
								<td>
									<input id="phone-number" type="text" placeholder="핸드폰 번호를 입력해주세요">
								</td>
							</tr>
							<tr>
								<th>매장 이용 요금</th>
								<td>
									<label for="weekday-rate">평일</label>
									<input id="weekday-rate" type="number" placeholder="금액만 입력해주세요">
									<br>
									<label for="weekend-rate">주말</label>
									<input id="weekend-rate" type="number" placeholder="금액만 입력해주세요">
								</td>
							</tr>
							<tr>
								<th>매장 이미지</th>
								<td></td>
							</tr>
							<tr>
								<th>매장 소개</th>
								<td>
									<textarea rows="" cols=""></textarea>
								</td>
							</tr>
						</table>
						<!-- //테이블 영역 -->
						<div class=btn-area>
							<button class="btn btn-primary">수정하기</button>
							<button class="btn">돌아가기</button>
						</div>
					</div>
					<!-- //리스트 영역 -->
					
				</div>
				<!-- //본문 영역 -->
				
				</div>
				<!-- //메인 -->
		</div>
		<!-- //로우 -->
	</div>
	<!-- //컨텐츠 -->
	
</body>
</html>