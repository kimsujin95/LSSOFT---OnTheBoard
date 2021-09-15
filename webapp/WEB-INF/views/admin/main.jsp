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

<title>admin-main</title>

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
					<h1>메인 화면</h1>
				</div>
				<!-- //메인 타이틀 -->
	
				<!-- 예약목록 요약 -->
				<div class="content-area">
					<!-- 서브 타이틀 -->
					<div class="sub-title">
						<h2>예약 정보</h2>
						<a href="${pageContext.request.contextPath }/admin/reservation" class="list-more">더 보기</a>
					</div>
					<!-- //서브 타이틀 -->
	
					<!-- 리스트 영역 -->
					<div class="list-area">
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
								<c:forEach begin="0" end="3">	
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
						<!-- //테이블 영역 -->
					</div>
					<!-- //리스트 영역 -->
				</div>
				<!-- //예약목록 요약 -->
	
				<!-- 방문자 리뷰 요약 -->
				<div class="content-area">
					<!-- 서브 타이틀 -->
					<div class="sub-title">
						<h2>방문자 리뷰</h2>
						<a class="list-more">더 보기</a>
					</div>
					<!-- 서브 타이틀 -->
	
					<!-- 요약 테이블 영역 -->
					<div class="list-area">
						<table id="review-list" class="font-size-14">
							<thead class="bg-info">
								<tr>
									<th>예약일</th>
									<th>인원</th>
									<th>예약자</th>
									<th>핸드폰</th>
									<th>리뷰</th>
									<th>코멘트 달기</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>2021-09-01</td>
									<td>3</td>
									<td>최영교</td>
									<td>010-1111-1111</td>
									<td>사장님이 친절하셨어요</td>
									<td><a>작성하기</a></td>
								</tr>
							</tbody>
							<tr>
								<td>2021-09-01</td>
								<td>2</td>
								<td>이호진</td>
								<td>010-1111-1111</td>
								<td>서비스는 좋은데 시설이 좀 오래된 듯</td>
								<td><a>작성하기</a></td>
							</tr>
							</tbody>
						</table>
					</div>
					<!-- 요약 테이블 영역 -->
				</div>
				<!-- //방문자 리뷰 요약 -->
	
				<!-- 매출 현황 요약 -->
				<div class="content-area">
					<!-- 서브 타이틀 -->
					<div class="sub-title">
						<h2>매출 현황</h2>
						<a class="list-more">더 보기</a>
					</div>
					<!-- //서브 타이틀 -->
					
					<!-- 요약 그래프 영역 -->
					
					<!-- //요약 그래프 영역 -->
	
				</div>
				<!-- //매출 현황 요약 -->
	
			</div>
			<!-- //메인 -->
		</div>
		<!-- //로우 -->
	</div>
	<!-- //컨텐츠 -->
	
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
	$(".user_name").on("click", function(){
		console.log("유저 이름 클릭");	
		$("#addModal").modal();
	});
</script>

</html>