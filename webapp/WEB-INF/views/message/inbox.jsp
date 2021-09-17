<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>온 더 보드: 메세지함</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/message/inbox_style.css">

</head>

<body>
	<header> </header>

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

	<footer> </footer>
</body>
</html>
