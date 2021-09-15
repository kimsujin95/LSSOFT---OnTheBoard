<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>

<head>
<meta charset="UTF-8">
<title>온 더 보드: 로그인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user/login_form_style.css">
</head>

<body>

	<div id="wrap">

		<!--header navi-->
		<!--//header navi-->

		<div class="main-container">
			<div class="main-wrap">
				<header>
					<div class="logo-wrap">
						<img src="${pageContext.request.contextPath}/assets/image/mypage/logo.png">
					</div>
				</header>
				<section class="login-input-section-wrap">
					<div class="login-input-wrap">
						<input placeholder="아이디" type="text"></input>
					</div>
					<div class="login-input-wrap password-wrap">
						<input placeholder="비밀번호" type="password"></input>
					</div>
					<div class="login-button-wrap">
						<button>로그인</button>
					</div>
				</section>
				<section class="Easy-sgin-in-wrap">
					<h2>다른 로그인 수단</h2>
					<ul class="sign-button-list">
						<li><button>
								<i class="fas fa-qrcode"></i><span>NAVER</span>
							</button></li>
						<li><button>
								<i class="fab fa-facebook-square"></i><span>KAKAO</span>
							</button></li>
						<li><button>
								<i class="fab fa-line"></i><span>GOOGLE</span>
							</button></li>
					</ul>
					<p class="forget-msg">
						아직 회원이 아니신가요? | <a href="sign_up_form.html">회원가입</a>
					</p>
				</section>
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