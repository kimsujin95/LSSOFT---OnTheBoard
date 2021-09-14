<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div id="aside" class="pull-left">
	<c:set var="servletPath" value="${pageContext.request.servletPath }"/>
	<!-- 사이드 바 -->
	<ul id="nav-list" class="list-group font-size-16">
		<li class="list-group-item"><a href="${pageContext.request.contextPath }/admin/main">메인 화면</a></li>
		<li class="list-group-item"><a href="${pageContext.request.contextPath }/admin/reservation">예약 관리</a></li>
		<li class="list-group-item"><a href="${pageContext.request.contextPath }/admin/schedule">스케쥴관리</a></li>
		<li class="list-group-item"><a href="${pageContext.request.contextPath }/admin/storeManagement">매장 관리</a></li>
		<c:choose>
			<c:when test="${fn:contains(servletPath, 'storeManagement') || fn:contains(servletPath, 'storeInfo')}">
				<ul id="sub-nav" class="list-group font-size-16">
					<li class="list-group-item active">
						<a href="${pageContext.request.contextPath }/admin/storeInfo">매장 정보</a>
					</li>
					<li class="list-group-item">
						<a href="${pageContext.request.contextPath }/admin/gameList">보유 게임</a>
					</li>
				</ul>
			</c:when>
			<c:when test="${fn:contains(servletPath, 'gameList')}">
				<ul id="sub-nav" class="list-group font-size-16">
					<li class="list-group-item"><a href="${pageContext.request.contextPath }/admin/storeInfo">매장 정보</a></li>
					<li class="list-group-item active"><a href="${pageContext.request.contextPath }/admin/gameList">보유 게임</a></li>
				</ul>
			</c:when>
		</c:choose>
		<li class="list-group-item"><a>매출 현황</a></li>
	</ul>
	<!-- //사이드 바 -->

	<!-- 게임 리스트 영역 -->

	<div id="rank-area" class="border-default">

		<!-- 랭크 타이틀 -->
		<div id="rank-title">
			<h2>유저 선호 게임 리스트</h2>
		</div>
		<!-- //랭크 타이틀 -->

		<!-- 더 보기 버튼 -->
		<div class="clearfix">
			<a class="list-more pull-right">더 보기</a>
		</div>
		<!-- //더 보기 버튼 -->

		<!-- 랭크 리스트 -->
		<ol id="rank-list" class="list-inline">
			<li><span class="rank-num">1</span> <span class="rank-subject"> <a>글룸 헤이븐</a>
			</span></li>
			<li><span class="rank-num">2</span> <span class="rank-subject"> <a>테라포밍 마스</a>
			</span></li>
			<li><span class="rank-num">3</span> <span class="rank-subject"> <a>메이지 나이트</a>
			</span></li>
			<li><span class="rank-num">4</span> <span class="rank-subject"> <a>가이아 프로젝트</a>
			</span></li>
			<li><span class="rank-num">5</span> <span class="rank-subject"> <a>황혼의 투쟁</a>
			</span></li>
			<li><span class="rank-num">6</span> <span class="rank-subject"> <a>푸에르코 리토</a>
			</span></li>
			<li><span class="rank-num">7</span> <span class="rank-subject"> <a>7 원더스 : 듀얼</a>
			</span></li>
		</ol>
		<!-- //랭크 리스트 -->
	</div>
	<!-- //게임 리스트 영역 -->
</div>