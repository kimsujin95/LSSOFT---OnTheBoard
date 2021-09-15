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

<title>매칭글 등록</title>
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
				<div class="context">매칭글 등록</div>
			</div>

		</div>
		<!-- // SUB TITLE -->

		<form id="write-form" action="#" method="post">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-5">
					<label for="title">제목</label>
					<br>
					<input id="title" type="text" placeholder="제목을 입력해 주세요.">

					<br>
					<br>

					<label for="">작성자</label>
					<br>
					<span>NICKNAME (AGE/SEX)</span>

					<br>
					<br>

					<label for="game-style">장르</label>
					<br>
					<select id="game-style">
						<option value="game-style-none">장 르 선 택</option>
						<option value="strategy">전략</option>
						<option value="abstract">추상</option>
						<option value="collectible">컬렉터블</option>
						<option value="family">가족</option>
						<option value="kids">어린이</option>
						<option value="party">파티</option>
						<option value="theme">테마</option>
						<option value="wargame">워게임</option>
						<option value="korean">한글</option>
						<option value="card">카드</option>
						<option value="economy">경제</option>
						<option value="cooperation">협력</option>
						<option value="puzzle">퍼즐</option>
						<option value="adventure">모험</option>
						<option value="dice">주사위</option>
					</select>

					<br>
					<br>

					<label for="game-name">게임</label>
					<br>
					<select id="game-name">
						<option value="game-name-none">게 임 선 택</option>
						<option value="terapoming">테라포밍 마스</option>
						<option value="">할리갈리</option>
						<option value="">도블</option>
						<option value="">부루마불</option>
						<option value="">글룸헤이븐</option>
						<option value="">루미큐브</option>
						<option value="">원카드</option>
						<option value="">보난자</option>
						<option value="">젠가</option>
					</select> <input type="text" id="ipt-keyword" value="" placeholder="게임 검색">

					<br>
					<br>

					<label for="">날짜</label>
					<br>
					<label for="datepick">📅</label> <input type="text" id="datepick">

					<br>
					<br>

					<label for="">시간</label>
					<br>
					<label for="time">⌚</label> <input type="text" id="time">

					<br>
				</div>
				<div class="col-md-5 border-left">
					<label for="">지역</label>
					<br>
					<span>지역드롭다운 / 검색</span>

					<br>
					<br>

					<label for="">인원</label>
					<br>
					<select id="people-count">
						<option value="people-two">2</option>
						<option value="people-three">3</option>
						<option value="people-four">4</option>
						<option value="people-five">5</option>
					</select>

					<br>
					<br>

					<label for="">성별제한</label>
					<br>
					<select id="sex-limit">
						<option value="none">무관</option>
						<option value="female">여</option>
						<option value="male">남</option>
					</select>

					<br>
					<br>

					<label for="">나이제한</label>
					<br>
					<input type="checkbox" id="10s" value="10s"> <label for="10s">10대</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id="20s" value="20s"> <label for="20s">20대</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id="30s" value="30s"> <label for="30s">30대</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id="40s" value="40s"> <label for="40s">40대</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id="none" value="none"> <label for="none">무관</label>

					<br>
					<br>

					<label for="content">내용</label>
					<br>
					<textarea name="content" id="content" cols="60" rows="5" placeholder="내용을 입력해 주세요."></textarea>
				</div>
				<div class="col-md-1"></div>
			</div>

			<br>

			<div id="write-btn" class="text-center">
				<a href="${pageContext.request.contextPath}/matching/list"><button type="button" class="btn btn-danger btn-sm">취소</button></a>
				<button type="submit" class="btn btn-info btn-sm">등록</button>
			</div>
		</form>
	</div>
	<!-- // CONTENT -->

	<!-- FOOTER -->

	<!-- // FOOTER -->

</body>

<script>
/* 	$(function() {
		$("#datepick").datepicker({

		});
	}); */

	$('#datepick').bootstrapMaterialDatePicker({
		weekStart : 0,
		time : false
	});
</script>

</html>