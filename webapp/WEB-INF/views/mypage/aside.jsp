<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.css">

<!-- jQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">

<script src="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.js"></script>

<!-- 어사이드 -->
<div id="aside" class="col-xs-2">

	<!-- 게임 리스트 영역 -->
	<div id="aside-area" class="border-default">
	
		<!-- 랭크 타이틀 -->
		<div id="aside-title">
			<h2 class="font-size-16 text-center"><a href="${pageContext.request.contextPath }/mypage/modifyProfile">프로필</a></h2>
			
			<h2 class="font-size-16 text-center"><a href="${pageContext.request.contextPath }/mypage/history">예약내역</a></h2>
		
			<h2 class="font-size-16 text-center"><a href="${pageContext.request.contextPath }/mypage/matching">매칭내역</a></h2>
			
			<h2 class="font-size-16 text-center"><a href="${pageContext.request.contextPath }/mypage/activity">활동내역</a></h2>
			
			<h2 class="font-size-16 text-center"><a href="${pageContext.request.contextPath }/mypage/bookmark">찜목록</a></h2>
			
			<h2 class="font-size-16 text-center"><a href="${pageContext.request.contextPath }/mypage/modify">회원정보수정</a></h2>
			
			<h2 class="font-size-16 text-center"><a href="${pageContext.request.contextPath }/mypage/business">사업자전환</a></h2>
		</div>
		<!-- //랭크 타이틀 -->	
		
	</div>
	<!-- //게임 리스트 영역 -->
	
</div>
<!-- //어사이드 -->