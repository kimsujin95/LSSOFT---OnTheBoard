<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- CSS -->
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">

<!-- header -->
<div id="header-container" class="clearfix">

	<div class="small-menu" class="clearfix">

		<c:if test="${authUser.userGrade==2}">

			<div id="admin-menu">
				<a href="${pageContext.request.contextPath }/admin/main"><img class="icon" id="admin" title="매장관리" src="${pageContext.request.contextPath}/assets/images/icons/settings.png" alt="매장관리"></a>
			</div>
		</c:if>

		<div id="user-menu">

			<c:choose>

				<c:when test="${!empty authUser}">

					<!-- 로그인 후 메뉴 -->



					<div class="dropdown">


						<span id="nickName">${authUser.userNickname}</span>
						<c:if test="${authUser.userGrade==2}">
						<span id="nicnName">(사업자)</span>
						</c:if>
						
						<div class="dropdown-content">
							<ul>
								<li><a href="${pageContext.request.contextPath }/mypage/history">예약내역</a></li>
								<li><a href="${pageContext.request.contextPath }/mypage/matching">매칭내역</a></li>
								<li><a href="${pageContext.request.contextPath }/mypage/activity">활동내역</a></li>
								<li><a href="${pageContext.request.contextPath }/mypage/bookmark">찜목록</a></li>
								<li><a href="${pageContext.request.contextPath }/mypage/modifyProfile">프로필</a></li>
								<li><a href="${pageContext.request.contextPath }/mypage/modify">회원정보수정</a></li>
								<li><a href="${pageContext.request.contextPath }/mypage/business">사업자전환</a></li>
								<li><a href="${pageContext.request.contextPath }/message/inbox">메세지</a></li>
							</ul>
						</div>
					</div>

					<a href="${pageContext.request.contextPath }/user/logout"><img class="icon" title="로그아웃" src="${pageContext.request.contextPath}/assets/images/icons/exit.png" alt="로그아웃"></a>

				</c:when>

				<c:otherwise>

					<a href="${pageContext.request.contextPath }/user/loginForm"><img class="icon" title="로그인" src="${pageContext.request.contextPath}/assets/images/icons/users.png" alt="로그인"></a>
					<a href="${pageContext.request.contextPath }/user/signupForm"><img class="icon" title="회원가입" src="${pageContext.request.contextPath}/assets/images/icons/add.png" alt="회원가입"></a>

				</c:otherwise>

			</c:choose>



		</div>

	</div>


	<header>
		<nav>
			<ul>
				<li><a href="${pageContext.request.contextPath }/store/storelist">매장</a></li>
				<li><a href="${pageContext.request.contextPath }/game/list">게임</a></li>
				<li><a href="${pageContext.request.contextPath }/main"><img id="logo" src="${pageContext.request.contextPath}/assets/images/logo.png"></a></li>
				<li><a href="${pageContext.request.contextPath }/matching/main">매칭</a></li>
				<li><a href="#">커뮤니티</a></li>
			</ul>
		</nav>
	</header>
</div>