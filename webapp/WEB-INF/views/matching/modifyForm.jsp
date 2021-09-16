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
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/matching/matching.css" type="text/css">

<title>글수정</title>
</head>

<body>

	<!-- HEADER -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- // HEADER -->

	<!-- CONTENT -->
	<div id="content" class="container">
		<!-- SUB TITLE -->
		<div class="container sub-container">

			<div class="subtitle">
				<h3>매칭게시판</h3>
				<div class="context">글수정</div>
			</div>

		</div>
		<!-- // SUB TITLE -->

		<form action="#">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-5">
					<label for="title">제목</label>
					<br>
					<input id="title" type="text" value="제목입니다.">

					<br>
					<br>

					<label for="">작성자</label>
					<br>
					<span>닉네임값 / 성별 값</span>

					<br>
					<br>

					<label for="game-style">장르</label>
					<br>
					<span>장르값 / 드롭다운</span>

					<br>
					<br>

					<label for="game-name">게임</label>
					<br>
					<span>게임값 / 게임드롭다운 / 검색</span>

					<br>
					<br>

					<label for="">날짜</label>
					<br>
					<span>📅 2021. 11. 11.</span>

					<br>
					<br>

					<label for="">시간</label>
					<br>
					<span>⌚ 15:00</span>

					<br>
				</div>
				<div class="col-md-5 border-left">
					<label for="">지역</label>
					<br>
					<span>서울 강남구 / 지역드롭다운 / 검색</span>

					<br>
					<br>

					<label for="">인원</label>
					<br>
					<span>1/5 / 인원드롭다운</span>

					<br>
					<br>

					<label for="">성별제한</label>
					<br>
					<span>남 / 성별드롭다운</span>

					<br>
					<br>

					<label for="">나이제한</label>
					<br>
					<input type="checkbox" id="10s"> <label for="10s" value="10s">10대</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id="20s"> <label for="20s" value="20s" checked="checked">20대</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id="30s"> <label for="30s" value="30s">30대</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id="40s"> <label for="40s" value="40s">40대</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id="none"> <label for="none" value="none">무관</label>

					<br>
					<br>

					<label for="content">내용</label>
					<br>
					<textarea name="content" id="content" cols="60" rows="5">내용입니다</textarea>
				</div>
				<div class="col-md-1"></div>
			</div>

			<br>

			<div id="write-btn" class="text-center">
				<a href="${pageContext.request.contextPath}/matching/read"><button type="button" class="btn btn-danger btn-sm">취소</button></a>
				<button type="submit" class="btn btn-info btn-sm">저장</button>
			</div>
		</form>
	</div>
	<!-- // CONTENT -->

	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- // FOOTER -->

</body>

</html>