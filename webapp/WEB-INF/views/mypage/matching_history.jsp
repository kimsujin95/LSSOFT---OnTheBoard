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
<script src="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.js"></script>

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
			<div class="subtitle clearfix">
				<div class="context1 font-size-24">매칭내역</div>
				<div class="context2 clearfix">
					<ul>
						<li><a href="#">마이페이지</a></li>
						<li class="last-li"><a href="#">매칭내역</a></li>
					</ul>
				</div>
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

						<c:forEach items="${matchingList}" var="matchingVo" varStatus="status">
							<tr>

								<td>${matchingVo.matchingNo}</td>
								<td>${matchingVo.matchingTitle}</td>
								<td>${matchingVo.matchingRegDate}</td>
								<td>${matchingVo.matchingStatus}</td>
								<td><a href="${pageContext.request.contextPath}/matching/read?no=${matchingVo.matchingNo}">상세정보</a></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>


	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- // FOOTER -->

</body>
</html>
