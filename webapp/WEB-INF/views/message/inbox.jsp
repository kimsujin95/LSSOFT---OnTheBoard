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
						<li class="last-li"><a href="#">메세지함</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // SUB TITLE -->
		<section>
			<div id="main_content">
				<div id="message_box">

					<h3>메세지함</h3>



					<!-- 쪽지 리스트가 보여지는 영역(게시판 모양) -->
					<div>
						<ul id="message">
							<!-- 리스트의 제목줄 -->
							<li><span class="col1">번호</span> <span class="col2">제목</span> <span class="col3">날짜</span> <span class="col4">내용</span></li>
						</ul>


						<!-- 쪽지함 이동 버튼들 -->
						<ul class="buttons">
							<li><button>받은 메세지</button></li>
							<li><button>보낸 메세지</button></li>
							<li><a href="${pageContext.request.contextPath }/message/write"><button>메세지 보내기</button></a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- // FOOTER -->
</body>
</html>
