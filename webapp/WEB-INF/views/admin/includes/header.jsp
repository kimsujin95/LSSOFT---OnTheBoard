<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 헤더 -->
<div id="header" class="container-fluid bg-primary">
	<!-- 로우 -->
	<div class=row>
		<!-- 매장 이름 -->
		<div id="header-store-name" class="col-xs-8">
			<a href="${pageContext.request.contextPath }/main" class="text-white font-size-24">On The Board</a>
		</div>
		<!-- //매장 이름 -->	
		<!-- 유저 컨트롤러 -->
		<div id="user-controller" class="col-xs-4">
			<c:if test="${!empty authUser }">
				<span class="text-white font-size-14">안녕하세요, ${authUser.userName } 님 </span>
				<c:if test="${!empty storeInfo }">
					<a href ="${pageContext.request.contextPath }/store/storeinfo/${storeInfo.storeNo}" id="my-store" class="text-white font-size-14 ">내 매장 확인하기</a> 
				</c:if>
				<a href ="${pageContext.request.contextPath }/user/logout" id="logout" class="text-white font-size-14 ">로그아웃</a>
			</c:if>
		</div>
		<!-- //유저 컨트롤러 -->
	</div>
	<!-- 로우 -->
</div>
<!-- //헤더 -->