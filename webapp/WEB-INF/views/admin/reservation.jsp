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
<link href="${pageContext.request.contextPath }/assets/css/admin/reservation.css" rel="stylesheet" type="text/css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/bootstrap.js"></script>

<!-- 데이트 피커 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
<link href="${pageContext.request.contextPath }/assets/css/datepicker.css" rel="stylesheet" type="text/css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />

<title>admin-reservation management</title>

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
					<h1>예약 관리</h1>
				</div>
				<!-- //메인 타이틀 -->
				
				<!-- 본문 영역 -->
				<div class="content-area">
					<!-- 서브 타이틀 -->
					<div class="sub-title">
						<h2>예약 정보</h2>
					</div>
					<!-- //서브 타이틀 -->
					
					<!-- 검색 영역 -->
					<div id="search-bar" class="border-default">
						<!-- 날짜 선택 영역 -->
						<div id="date-area" class="clearfix">
							<!-- 시작일 -->
							
							<div id="date-picker" class="input-daterange input-group pull-left">
							  	<span class="input-group-addon">예약일</span>
							  	<input type="text" class="form-control" name="start" placeholder="📅">
								<span class="input-group-addon">부터</span>
								<input type="text" class="form-control" name="end" placeholder="📅">
							</div>
							
							<!-- 버튼 그룹 -->
							<div id="date-btn" class="btn-group btn-group pull-left">
								<button type="button" class="btn">전체</button>
								<button type="button" class="btn">오늘</button>
								<button type="button" class="btn">내일</button>
								<button type="button" class="btn">일주일</button>
							</div>
							<!-- 버튼 그룹 -->
						</div>
						<!-- //날짜 선택 영역-->
					
						<!-- 검색어 입력 영역 -->
						<div id="search-area">
							<div id="select-area">
								<!-- 정렬 -->
								<select>
									<option>정렬</option>
									<option>오름차순</option>
									<option>내림차순</option>
								</select>
								<!-- 진행도 -->
								<select>
									<option>진행 단계</option>
									<option>예약 완료</option>
									<option>결제중</option>
									<option>예약 취소</option>
								</select>
							</div>
							
							<!-- 검색어 입력 -->
							<div id="keyword-area">
								<!-- 검색어 선택 -->
								<select>
									<option>전체</option>
									<option>예약자명</option>
									<option>핸드폰</option>
								</select>
								<!-- //검색어 선택 -->
								<input type="search" placeholder="검색어를 입력해주세요.">
								<button class="btn btn-sm btn-primary" type="submit">조회</button>
							</div>
						</div>
						<!-- 검색어 입력 영역 -->
					</div>
					<!-- 검색 영역 -->
					
					<!-- 리스트 영역 -->
					<div class="list-area">
						
						<!-- 예정 위치 리스트 표현 갯수 선택 -->
						
						<!-- //리스트 표현 갯수 선택 -->
						
						<!-- 테이블 영역 -->
						<table id="reservation-list" class="font-size-14">
							<thead class="bg-info">
								<tr>
									<th>예약일</th>
									<th>인원</th>
									<th>예약 시간</th>
									<th>예약자</th>
									<th>핸드폰</th>
									<th>진행단계</th>
									<th>금액</th>
									<th>결제인원</th>
									<th>잔여금액</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach begin="0" end="14">	
									<tr>
										<td>2021-09-01</td>
										<td>4</td>
										<td>12:00 ~ 16:00</td>
										<td class="user_name"><a>최영교</a></td>
										<td>010-1111-1111</td>
										<td>결제중</td>
										<td>40000</td>
										<td>3</td>
										<td>10000</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- 테이블 영역 -->
						
						<!-- 페이징 -->
						<div id="paging">
							  <ul class="pagination">
							    <li class="page-item">
							      <a class="page-link" href="#" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							    <li class="page-item"><a class="page-link" href="#">1</a></li>
							    <li class="page-item"><a class="page-link" href="#">2</a></li>
							    <li class="page-item"><a class="page-link" href="#">3</a></li>
							    <li class="page-item">
							      <a class="page-link" href="#" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
							  </ul>
						</div>
						<!-- 페이징 -->
						
					</div>
					<!-- 리스트 영역 -->
						
				</div>
				<!-- 본문 영역 -->
			
			</div>
			<!-- //메인 -->
		</div>
		<!-- //로우 -->
	</div>
	<!-- 컨텐츠 -->

	<!-- 예약 상세 팝업(모달)창 -->
	<div class="modal fade" id="addModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- 모달 헤더 -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">예약 상세</h4>
				</div>
				<!-- //모달 헤더 -->

				<!-- 모달 바디 -->
				<div class="modal-body">
					<!-- 예약 정보 -->
					<table class="reservation-detail border-default font-size-14">
						<tr>
							<th>예약번호</th><td>1234</td>
							<th>예약일</th><td>2021-09-01</td>
						</tr>
						<tr>
							<th>예약자</th><td>최영교</td>
							<th>핸드폰</th><td>010-1111-1111</td>
						</tr>
						<tr>
							<th>인원</th><td>4</td>
							<th>금액</th><td>40000</td>
						</tr>
						<tr>
							<th>결제 인원</th>
							<td>3/4</td>
							<th>잔금</th>
							<td>10000</td>
						</tr>
					</table>
					<!-- //예약 정보 -->
					
					<!-- 진행 사항 -->
					<table class="reservation-progress border-default font-size-14">
						<tr>
							<th>진행 사항</th>
							<td>
								<input class="form-check-input" id="reserv-ok" type="radio" name="reservation-status">
								<label class="form-check-label" for="reserv-ok">예약 완료</label>
								<input class="form-check-input" id="reserv-ing" type="radio" name="reservation-status">
								<label class="form-check-label" for="reserv-ing">결제중</label>
								<input class="form-check-input" id="reserv-cancel" type="radio" name="reservation-status">
								<label class="form-check-label" for="reserv-cancel">예약 취소</label>
							</td>
						</tr>
						<tr>
							<th>
								<label id="label-cancel" for="cancel-reason">취소 사유</label>
							</th>
							<td>
								<select id="cancel-reason">
									<option>중복 예약</option>
									<option>요금 미납</option>
									<option id="cancel-etc">기타</option>
								</select>
							</td>
						</tr>
					</table>
					<!-- //진행 사항 -->
				</div>
				<!-- //모달 바디 -->
				
				<!-- 모달 푸터 -->
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary" id="btn-modify">수정하기</button>
					<button type="submit" class="btn" id="btn-close" data-dismiss="modal" aria-label="Close">닫기</button>
				</div>
				<!-- //모달 푸터 -->

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

</body>

<script type="text/javascript">
	/* 예약 상세 보기 */
	$(".user_name").on("click", function(){
		console.log("유저 이름 클릭");	
		$("#addModal").modal();
	});
	
	$(".input-daterange").datepicker({
		format: "yyyy/mm/dd",
	    autoclose: true
	});
	
</script>

</html>