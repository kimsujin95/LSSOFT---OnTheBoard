<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>온 더 보드: 메세지함</title>


<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.css">

<!-- jQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>


<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/message/inbox.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.css">
</head>
<body>
	<!-- HEADER -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- // HEADER -->



	<div class="container">

		<!-- SUB TITLE -->
		<div class="container sub-container">
			<div class="subtitle clearfix">
				<div class="context1 font-size-24">메세지</div>
				<div class="context2 clearfix">
					<ul>
						<li><a href="#">마이페이지</a></li>
						<li class="last-li"><a href="#">메세지 보내기</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // SUB TITLE -->
		<section>
			<div id="main_content">
				<div id="message_box">
					<h3 id="write_title">메세지 보내기</h3>

					<!-- 쪽지함 이동 버튼 영역 -->
					<ul class="top_buttons">
						<li><a href="">받은 메세지</a></li>
						<li><a href="">보낸 메세지</a></li>
					</ul>

					<!-- message_insert.php를 통해 DB의 message테이블에 저장 : 송신id는 get방식으로 -->
					<form action="" method="post" name="message_form">
						<div id="write_msg">
							<ul>
								<li><span class="col1">보내는 사람 : </span> <span class="col2">손흥민</span></li>
								<li><span class="col1">받는 사람: </span> <span class="col2"><input type="text" name="rv_id" value="자동 입력"></span></li>
								<li><span class="col1">제목 : </span> <span class="col2"><input type="text" name="subject"></span></li>
								<li id="textarea"><span class="col1">내용 : </span> <span class="col2"><textarea name="content"></textarea></span></li>
							</ul>
							<!-- 서밋버튼 -->
							<input type="submit" value="보내기">
						</div>
					</form>
				</div>

			</div>


		</section>

	</div>

	<footer>

		<!-- FOOTER -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- // FOOTER -->

	</footer>

</body>
</html>