<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 어사이드 -->
<div id="aside" class="col-xs-2">

	<!-- 사이드 바 -->
	<ul id="nav-list" class="list-group font-size-14">
		<li class="list-group-item"><a href="${pageContext.request.contextPath }/admin/main">메인 화면</a></li>
		<li class="list-group-item"><a href="${pageContext.request.contextPath }/admin/reservation">예약 관리</a></li>
		<li class="list-group-item"><a href="${pageContext.request.contextPath }/admin/schedule">스케쥴 관리</a></li>
		<li class="list-group-item"><a href="${pageContext.request.contextPath }/admin/storeInfo">매장 정보</a></li>
		<li class="list-group-item"><a href="${pageContext.request.contextPath }/admin/gameList">보유 게임</a></li>
		<li class="list-group-item"><a href="${pageContext.request.contextPath }/admin/status">매출 현황</a></li>
	</ul>
	<!-- //사이드 바 -->

	<!-- 게임 리스트 영역 -->
	<div id="rank-area" class="border-default">
	
		<!-- 랭크 타이틀 -->
		<div id="rank-title">
			<h2 class="font-size-14 text-center">유저 선호 게임 리스트</h2>
		</div>
		<!-- //랭크 타이틀 -->

		<!-- 더 보기 버튼 -->
		<div class="text-right">
			<a class="list-more font-size-12">더 보기</a>
		</div>
		<!-- //더 보기 버튼 -->

		<!-- 랭크 리스트 -->
		<ol id="rank-list" class="list-inline font-size-14">
			<c:forEach begin="0" end="4" varStatus="status">
				<li>
					<span class="rank-num pull-left">${status.count }</span> 
					<span class="rank-subject"><a>글룸 헤이븐</a></span>
				</li>
			</c:forEach>
		</ol>
		<!-- //랭크 리스트 -->
		
	</div>
	<!-- //게임 리스트 영역 -->
	
</div>
<!-- //어사이드 -->