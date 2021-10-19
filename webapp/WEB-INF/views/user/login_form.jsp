<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>

<head>
<meta charset="UTF-8">
<title>온 더 보드: 로그인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user/login_form.css">
</head>

<body>

	<div id="wrap">

		<div class="main-container">
			<div class="main-wrap">
				<header>
					<div class="logo-wrap">
						<a href="${pageContext.request.contextPath}/main"><img src="${pageContext.request.contextPath}/assets/images/logo.png"></a>
					</div>
				</header>

				<form action="${pageContext.request.contextPath}/user/login" method="post">
					<section class="login-input-section-wrap">
						<div class="login-input-wrap">
							<input placeholder="아이디" type="text" name="userId" value=""></input>
						</div>
						<div class="login-input-wrap password-wrap">
							<input placeholder="비밀번호" type="password" name="userPassword" value=""></input>
						</div>


						<c:if test="${param.result eq 'fail'}">
							<p>로그인에 실패했습니다. 다시 로그인해 주세요</p>
						</c:if>


						<div class="login-button-wrap">
							<button type="submit">로그인</button>
						</div>
					</section>
					<section class="Easy-sgin-in-wrap">
						<h2>다른 로그인 수단</h2>
						<ul class="sign-button-list">
							<li><button>
									<img class="loglogo" src="${pageContext.request.contextPath}/assets/images/icons/naver.png">
									
								</button></li>
							<li><button>
									<img class="loglogo" src="${pageContext.request.contextPath}/assets/images/icons/kakaotalk.png">
							
								</button></li>
						</ul>
						<p class="forget-msg">
							아직 회원이 아니신가요? | <a href="${pageContext.request.contextPath}/user/signupForm">회원가입</a>
						</p>
					</section>

				</form>

				<footer>
					<div class="copyright-wrap">
						<span> Copyright © ON THE BOARD. All Rights Reserved.</span>
					</div>
				</footer>
			</div>
		</div>

	</div>
	<!--//wrap-->

</body>

</html>