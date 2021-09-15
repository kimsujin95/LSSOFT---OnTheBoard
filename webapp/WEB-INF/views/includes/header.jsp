<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- CSS -->
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">

<!-- header -->
<div id="header-container" class="clearfix">

	<div class="small-menu">
		<div id="admin-menu">
			<a href="${pageContext.request.contextPath }/admin/main"><img class="icon" title="매장관리"
				src="${pageContext.request.contextPath}/assets/images/icons/settings.png" alt="매장관리"></a>
		</div>

		<div id="user-menu">
			<a href="${pageContext.request.contextPath }/mypage/main"><img class="icon" title="마이페이지"
				src="${pageContext.request.contextPath}/assets/images/icons/id-card.png" alt="마이페이지"></a> <a
				href="${pageContext.request.contextPath }/user/login"><img class="icon" title="로그인"
				src="${pageContext.request.contextPath}/assets/images/icons/user.png" alt="로그인"></a> <a href="${pageContext.request.contextPath }/user/signup"><img
				class="icon" title="회원가입" src="${pageContext.request.contextPath}/assets/images/icons/users.png" alt="회원가입"></a> <a
				href="${pageContext.request.contextPath }/user/logout"><img class="icon" title="로그아웃"
				src="${pageContext.request.contextPath}/assets/images/icons/exit.png" alt="로그아웃"></a>
		</div>
	</div>


	<header>
		<nav>
			<ul>
				<li><a href="${pageContext.request.contextPath }/store/main">매장</a></li>
				<li><a href="${pageContext.request.contextPath }/game/list">게임</a></li>
				<li><a href="${pageContext.request.contextPath }/main"><img id="logo" src="${pageContext.request.contextPath}/assets/images/logo.png"></a></li>
				<li><a href="${pageContext.request.contextPath }/matching/list">매칭</a></li>
				<li><a href="#">커뮤니티</a></li>
			</ul>
		</nav>
	</header>
</div>
