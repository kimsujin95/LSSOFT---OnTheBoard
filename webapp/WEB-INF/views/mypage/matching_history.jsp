<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- 합쳐지고 최소화된 최신 CSS -->

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.css">

<!-- jQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/matching_history.css" type="text/css">




<title>온 더 보드: 매칭내역</title>

</head>

<body>

	<!-- HEADER -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- // HEADER -->

	<div class="container">

		<!-- SUB TITLE -->
		<div class="container sub-container">

			<div class="subtitle">
				<h3>매칭내역</h3>
				<div class="context">매칭내역을 확인 할 수 있습니다.</div>
			</div>

		</div>
		<!-- // SUB TITLE -->

		<div class="table-container">
			<table class="table table-hover">

				<thead>
					<tr>
						<th>번호</th>
						<th>글제목</th>
						<th>매칭날짜</th>
						<th>비고</th>
						<th>상세정보</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>할리갈리 하실분</td>
						<td>2021-08-03</td>
						<td>매칭중</td>
						<td>상세정보</td>
					</tr>
					<tr>
						<td>2</td>
						<td>할리갈리 하실분</td>
						<td>2021-08-03</td>
						<td>매칭완료</td>
						<td>상세정보</td>
					</tr>
					<tr>
						<td>3</td>
						<td>할리갈리 하실분</td>
						<td>2021-08-03</td>
						<td>매칭취소</td>
						<td>상세정보</td>
					</tr>
					<tr>
						<td>4</td>
						<td>할리갈리 하실분</td>
						<td>2021-08-03</td>
						<td>매칭완료</td>
						<td>상세정보</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div id="paging-wrap" class="text-center">
			<div id="paging">
				<ul>

					<li>‹</li>
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>›</li>

				</ul>
			</div>
		</div>


	</div>

	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- // FOOTER -->

</body>
</html>
