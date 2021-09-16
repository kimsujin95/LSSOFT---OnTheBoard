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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/user_activity.css" type="text/css">




<title>온 더 보드: 활동내역</title>

</head>

<body>

	<!-- HEADER -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //HEADER -->

	<div id="content" class="container">

		<!-- SUB TITLE -->
		<div class="container sub-container">
			<div class="subtitle clearfix">
				<div class="context1 font-size-24">활동내역</div>
				<div class="context2 clearfix">
					<ul>
						<li><a href="#">마이페이지</a></li>
						<li class="last-li"><a href="#">활동내역</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // SUB TITLE -->


		<div id="css_tabs">
			<input id="tab1" type="radio" name="tab" checked="checked" /> <input id="tab2" type="radio" name="tab" /> <label for="tab1">내가 쓴 글</label> <label
				for="tab2">신고목록</label>

			<div class="tab1_content">

				<table class="table table-hover">

					<thead>
						<tr>
							<th>번호</th>
							<th>게시판</th>
							<th>제목</th>
							<th>내용</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>자유게시판</td>
							<td>안녕하세요.</td>
							<td>손흥민입니다.</td>
							<td><button type="button" class="btn btn-danger">삭제</button></td>
						</tr>
						<tr>
							<td>2</td>
							<td>매칭게시판</td>
							<td>할리갈리 하실분.</td>
							<td>할리갈리.</td>
							<td><button type="button" class="btn btn-danger">삭제</button></td>
						</tr>
						<tr>
							<td>3</td>
							<td>자유게시판</td>
							<td>안녕하세요.</td>
							<td>손흥민입니다.</td>
							<td><button type="button" class="btn btn-danger">삭제</button></td>
						</tr>
						<tr>
							<td>4</td>
							<td>매칭게시판</td>
							<td>할리갈리 하실분.</td>
							<td>할리갈리.</td>
							<td><button type="button" class="btn btn-danger">삭제</button></td>
						</tr>
					</tbody>
				</table>

			</div>

			<div class="tab2_content">

				<table class="table table-hover">

					<thead>
						<tr>
							<th>번호</th>
							<th>닉네임</th>
							<th>날짜</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>대치동아이유</td>
							<td>2021-09-01</td>
							<td><button type="button" class="btn btn-danger">취소</button></td>
						</tr>
						<tr>
							<td>2</td>
							<td>대치동아이유</td>
							<td>2021-09-01</td>
							<td><button type="button" class="btn btn-danger">취소</button></td>
						</tr>
						<tr>
							<td>3</td>
							<td>대치동아이유</td>
							<td>2021-09-01</td>
							<td><button type="button" class="btn btn-danger">취소</button></td>
						</tr>
						<tr>
							<td>4</td>
							<td>대치동아이유</td>
							<td>2021-09-01</td>
							<td><button type="button" class="btn btn-danger">취소</button></td>
						</tr>
					</tbody>
				</table>
			</div>



		</div>


	</div>




	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- // FOOTER -->

</body>
</html>
