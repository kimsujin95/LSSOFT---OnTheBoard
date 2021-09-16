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
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath }/assets/css/mypage/mypage.css" rel="stylesheet" type="text/css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/bootstrap.js"></script>

<title>온 더 보드: 마이페이지</title>

</head>
<body>

	<!-- 헤더 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더 -->



	<!-- 컨텐츠 -->
	<div id="content" class="clearfix">

		<!-- SUB TITLE -->
		<div class="sub-container">

			<div class="subtitle">
				<h3>마이페이지</h3>
				<div class="context">프로필 및 정보를 수정 할 수 있습니다.</div>
			</div>

		</div>
		<!-- // SUB TITLE -->

		<!-- 메인 -->

		<div id="main" class="container">



			<h3>손흥민's Profile Card</h3>
			<div class="card w-50">

				<img id="profile_pic" src="${pageContext.request.contextPath}/assets/images/son.png" width="200px">
				<div class="card-body">
					<h3 class="card-title">손흥민</h3>
					<p class="card-text">
						<span class="font-size-16">성별: 남</span><br> <span class="font-size-16">연령: 20대</span><br> <span class="font-size-16">가입일:
							2021-09-01</span>
					</p>

					<a href="${pageContext.request.contextPath }/mypage/modifyProfile" class="btn btn-primary">수정하기</a> <br> <br> <br>


				</div>

			</div>

			<!-- 방문자 리뷰 요약 -->
			<div class="content-area">
				<!-- 서브 타이틀 -->
				<div class="sub-title">
					<h2>예약내역</h2>
					<a href="${pageContext.request.contextPath }/mypage/history">더 보기</a>
				</div>
				<!-- 서브 타이틀 -->

				<!-- 요약 테이블 영역 -->
				<div class="table-container">
					<table class="table table-hover">

						<thead>
							<tr>
								<th>번호</th>
								<th>매장명</th>
								<th>예약일</th>
								<th>비고</th>
								<th>상세정보</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>레드버튼</td>
								<td>2021-08-03</td>
								<td>예약완료</td>
								<td>상세정보</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- 요약 테이블 영역 -->
			</div>
			<!-- //방문자 리뷰 요약 -->

		</div>
		<!-- //메인 -->


	</div>
	<!-- //컨텐츠 -->

	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- // FOOTER -->


</body>

</html>