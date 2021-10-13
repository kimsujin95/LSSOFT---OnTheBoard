<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.css">

<!-- jQuery -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/matching/matching.css" type="text/css">

<!-- 데이트 피커 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
<link href="${pageContext.request.contextPath}/assets/css/datepicker.css" rel="stylesheet" type="text/css">
<script src="resources/js/plugin/datepicker/bootstrap-datepicker.ko.min.js"></script>

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
						<li class="last-li"><a href="#">매칭등록</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // SUB TITLE -->

		<form id="write-form" action="${pageContext.request.contextPath}/matching/write" method="get">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-5">
					<label for="title">제목</label>
					<br>
					<input id="title" type="text" name="matchingTitle" placeholder="제목을 입력해 주세요." value="">

					<br>
					<br>

					<label for="">작성자</label>
					<br>
					<span>${writeUserMap.authUserInfo.userNickname} (${writeUserMap.authUserInfo.userAge}<c:choose>
							<c:when test="${writeUserMap.authUserInfo.userGender eq 'male'}">/ 남)</c:when>
							<c:otherwise>/ 여)</c:otherwise>
						</c:choose>
					</span>

					<br>
					<br>

					<label for="game-style">테마</label>
					<br>
					<select id="game-style" name="themeNo">
						<option value="game-style-none">테 마 선 택</option>
						<c:forEach items="${writeUserMap.themeList}" var="themeVo">
							<option value="${themeVo.themeNo}">${themeVo.themeName}</option>
						</c:forEach>
					</select>

					<br>
					<br>

					<label for="game-name">게임</label>
					<br>
					<select id="game-name" name="gameNo">
						<option value="game-name-none">게 임 선 택</option>
						<c:forEach items="${writeUserMap.gameList}" var="gameVo">
							<option value="${gameVo.gameNo}">${gameVo.gameNameKo}</option>
						</c:forEach>
					</select> <input type="text" id="ipt-keyword" value="" placeholder="게임 검색">

					<br>
					<br>

					<label for="">날짜</label>
					<br>
					<!-- <label for="datepick">📅</label> --><input class="date-time" id="datepick" name="matchingDate" type="date" value="">

					<br>
					<br>

					<label for="">시간</label>
					<br>
					<!-- <label for="time">⌚</label> --><input class="date-time" type="time" id="time" value="">

					<br>
				</div>
				<div class="col-md-5 border-left row">
					<label for="">지역</label>
					<br>
					<div class="col-xs-6">
						시/도 선택&nbsp;&nbsp;<select name="sidoCode" id="select-sido">
							<option>지역 선택</option>
							<c:forEach items="${writeUserMap.sidoList}" var="sidoVo" varStatus="status">
								<option value="${sidoVo.sidoCode}">${sidoVo.sidoName}</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-xs-6">
						시/군/구 선택&nbsp;&nbsp;<select name="sigunguCode" id="select-sigungu">
							<option>지역 선택</option>
							<c:forEach items="${writeUserMap.sigunguList}" var="sigunguVo">
								<option value="${sigunguVo.sigunguCode}">${sigunguVo.sigunguName}</option>
							</c:forEach>
						</select>
					</div>

					<br>
					<br>

					<label for="">인원</label>
					<br>
					<select id="people-count" name="matchingPeople">
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>

					<br>
					<br>

					<label for="">성별제한</label>
					<br>
					<select id="sex-limit" name="matchingPermissionGender">
						<option value="성별무관">성별무관</option>
						<option value="여">여</option>
						<option value="남">남</option>
					</select>

					<br>
					<br>

					<label for="">나이제한</label>
					<br>
					<input type="checkbox" id="10s" value="10대"> <label for="10s">10대</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id="20s" value="20대"> <label for="20s">20대</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id="30s" value="30대"> <label for="30s">30대</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id="40s" value="40대"> <label for="40s">40대</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id="ageNone" value="나이무관"> <label for="ageNone">나이무관</label>

					<br>
					<br>

					<label for="content">내용</label>
					<br>
					<textarea name="matchingContent" id="content" cols="60" rows="5" placeholder="내용을 입력해 주세요."></textarea>
				</div>
				<div class="col-md-1"></div>
			</div>

			<br>

			<div id="write-btn" class="text-center">
				<a href="${pageContext.request.contextPath}/matching/main"><button type="button" class="btn-white">취소</button></a>
				<button type="submit" class="btn-red">등록</button>
			</div>
		</form>
	</div>
	<!-- // CONTENT -->

	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- // FOOTER -->

</body>

<script>
	/* $('#datepick').datepicker(
			{
				language : 'ko',
				todayBtn : 'linked',
				format : 'yyyy-mm-dd',
				autoclose : true,

				days : [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" ],
				daysShort : [ "일", "월", "화", "수", "목", "금", "토" ],
				daysMin : [ "일", "월", "화", "수", "목", "금", "토" ],
				months : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월",
						"9월", "10월", "11월", "12월" ],
				monthsShort : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월",
						"9월", "10월", "11월", "12월" ],
				today : "오늘",
				titleFormat : "yyyy년 mm월",
				weekStart : 0
			}); */
</script>

</html>