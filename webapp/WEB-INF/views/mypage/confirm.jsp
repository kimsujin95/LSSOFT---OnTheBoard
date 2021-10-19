<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<!-- 메타 태그 -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- css  -->
<link href="${pageContext.request.contextPath }/assets/bootstrap/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/main/custom.css" rel="stylesheet" type="text/css">
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.js"></script>
<!-- 타이틀 -->
<title>Insert title here</title>


</head>
<body>

	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<!-- 컨테이너 - 메인 -->
	<div class="container">
		<div class="jumbotron" id="slogan2">
			<P>사업자 전환이 완료되었습니다. 다시 로그인 해주세요!</P>
			<p>
				<a class="btn btn-danger center " href="${pageContext.request.contextPath }/user/loginForm" role="button">로그인 하기</a>
			</p>
			<div class="container"></div>
		</div>
	</div>

	<!-- 푸터 -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>
</html>