<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.css">

<!-- jQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/matching/matching.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/matching/matching_tab_content.css" type="text/css">

<title>MATCHING</title>
</head>

<body>

	<!-- HEADER -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- // HEADER -->

	<!-- CONTENT -->
	<div id="content" class="container">
		<!-- SUB TITLE -->
		<div class="container sub-container">
			<div class="subtitle clearfix">
				<div class="context1 font-size-24">매칭게시판</div>
				<div class="context2 clearfix">
					<ul>
						<li><a href="#">매칭게시판</a></li>
						<li class="last-li"><a href="#">매칭리스트</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // SUB TITLE -->

		<!-- SELECT OPTION -->
		<div id="select-option" class="container">
			<!-- TAB CONTENT -->
			<c:import url="/WEB-INF/views/matching/matching_tab_content.jsp"></c:import>
			<!-- // TAB CONTENT -->

			<div>
				<table id="select-option-checkbox">
					<colgroup>
						<col width="320px">
						<col width="550px">
						<col width="330px">
					</colgroup>
					<thead>
						<tr>
							<th>성별제한</th>
							<th>나이제한</th>
							<th>매칭상태</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input class="margin-left-none" type="checkbox" id="male" value="male" name="sex-limit"> <label for="male">남</label> <input type="checkbox" id="female" value="female" name="sex-limit"> <label for="female">여</label> <input type="checkbox" id="sex-none" value="sex-none" name="sex-limit"> <label for="sex-none">무관</label></td>
							<td><input class="margin-left-none" type="checkbox" id="10s"> <label for="10s">10대</label> <input type="checkbox" id="20s"> <label for="20s">20대</label> <input type="checkbox" id="30s"> <label for="30s">30대</label> <input type="checkbox" id="40s"> <label for="40s">40대</label> <input type="checkbox" id="50s"> <label for="50s">50대</label> <input type="checkbox" id="age-none"> <label for="age-none">무관</label></td>
							<td><input class="margin-left-none" type="checkbox" id="matching-ing"> <label for="matching-ing">매칭중</label> <input type="checkbox" id="matching-end"> <label for="matching-end">매칭완료</label></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="select-option-list" class="row">
				<div id="option-reset" class="col-xs-1">
					<button class="btn-reset">
						선택초기화 <img src="${pageContext.request.contextPath}/assets/images/matching/btn-reset.png" alt="option-reset-btn">
					</button>
				</div>
				<div class="col-xs-11">
					<button>
						테라포밍 마스 <img src="${pageContext.request.contextPath}/assets/images/matching/btn-X.png" alt="delete img">
					</button>
				</div>
			</div>
		</div>
		<!-- // SELECT OPTION -->

		<br>
		<br>
		<br>

		<!-- 매칭글 리스트 -->
		<div class="container padding-none">
			<table id="table-matchingList">
				<colgroup>
					<col width="125px">
					<col width="115px">
					<col width="335px">
					<col width="185px">
					<col width="75px">
					<col width="75px">
					<col width="155px">
					<col width="145px">
				</colgroup>
				<thead>
					<tr class="first-tr">
						<th>매칭상태</th>
						<th>조회수</th>
						<th>제목</th>
						<th>게임</th>
						<th>인원</th>
						<th>성별</th>
						<th>지역</th>
						<th>시작날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${matchingList}" var="matchingVo" varStatus="status">
						<tr>
							<td>매칭중</td>
							<td>999,999</td>
							<td><a href="${pageContext.request.contextPath}/matching/read?no=${matchingVo.matchingNo}">${matchingVo.matchingTitle}</a></td>
							<td>테라포밍 마스</td>
							<td>1/${matchingVo.matchingPeople}</td>
							<td>남</td>
							<td>서울 강남구</td>
							<td>21. 11. 11.</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div id="paging-wrap" class="text-center">
			<div id="paging">
				<ul>
					<li>«</li>
					<li class="li-pd">‹</li>
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
					<li>6</li>
					<li>7</li>
					<li class="li-pd">›</li>
					<li>»</li>
				</ul>
			</div>
		</div>
		<br>
		<div class="text-center">
			<a href="${pageContext.request.contextPath}/matching/writeForm"><button type="button" class="btn-white">매칭글 등록</button></a>
		</div>
	</div>
	<!-- // CONTENT -->

	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- // FOOTER -->

</body>

</html>