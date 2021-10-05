<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 헤더 -->
<div id="header" class="container-fluid bg-primary">
	<!-- 로우 -->
	<div class=row>
		<!-- 매장 이름 -->
		<div id="header-store-name" class="col-xs-10">
			<a href="${pageContext.request.contextPath }/store/storeinfo" class="text-white font-size-24">레드버튼 강남점</a>
		</div>
		<!-- //매장 이름 -->	
		<!-- 유저 컨트롤러 -->
		<div id="user-controller" class="col-xs-2 ">
			<c:choose>
				<c:when test="${!empty authUser }">
					<a id="my-store" class="text-white font-size-14 ">내 매장 확인하기</a> 
					<a id="logout" class="text-white font-size-14 ">로그아웃</a>
				</c:when>
				<c:otherwise>
					<a id="logout" class="text-white font-size-14 ">로그인</a>
				</c:otherwise>
			</c:choose>
		</div>
		<!-- //유저 컨트롤러 -->
	</div>
	<!-- 로우 -->
</div>
<!-- //헤더 -->