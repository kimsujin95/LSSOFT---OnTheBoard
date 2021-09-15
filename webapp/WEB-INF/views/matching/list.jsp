<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.css">

<!-- jQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/matching/matching.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" type="text/css">

<title>매칭리스트</title>
</head>

<body>

	<!-- HEADER -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- // HEADER -->

	<!-- CONTENT -->
	<div id="content" class="container">

		<!-- <div class="row"> -->
		<%-- <div class="col-xs-4">

				<table id="table-start">
					<caption>
						<span>내위치</span> 주변 매칭 리스트
					</caption>
					<colgroup>
						<col width="200px">
						<col width="60px">
						<col width="120px">
					</colgroup>

					<thead>
						<tr>
							<th>게임</th>
							<th>인원</th>
							<th>시작날짜</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>테라포밍 마스</td>
							<td>1/5</td>
							<td>21. 11. 11.</td>
						</tr>
						<tr>
							<td>할리갈리</td>
							<td>1/5</td>
							<td>21. 11. 11.</td>
						</tr>
						<tr>
							<td>할리갈리</td>
							<td>1/5</td>
							<td>21. 11. 11.</td>
						</tr>
						<tr>
							<td>할리갈리</td>
							<td>1/5</td>
							<td>21. 11. 11.</td>
						</tr>
						<tr>
							<td>할리갈리</td>
							<td>1/5</td>
							<td>21. 11. 11.</td>
						</tr>
					</tbody>
				</table>
			</div> --%>
		<div id="select-option" class="container">
			<!-- class="col-xs-8" -->
			<ul class="nav nav-tabs nav-justified" role="tablist" id="myTab">
				<li role="presentation" class="active"><a href="#location" aria-controls="location" role="tab" data-toggle="tab">지역</a></li>
				<li role="presentation"><a href="#game-style-name" aria-controls="game-style-name" role="tab" data-toggle="tab">장르/게임</a></li>
			</ul>

			<div class="tab-content">

				<div role="tabpanel" class="tab-pane active" id="location">
					<input type="text" id="ipt-keyword" value="" placeholder="지역 검색">
					<hr>
					<div class="row">
						<div class="col-xs-4 border-right overflow-scroll">
							<ul id="location-big">
								<li role="presentation" class="active"><a href="#location-seoul" aria-controls="location-seoul" role="tab" data-toggle="tab">서울(123)</a></li>
								<li role="presentation"><a href="#location-gyeonggi" aria-controls="location-gyeonggi" role="tab" data-toggle="tab">경기(123)</a></li>
								<li role="presentation"><a href="#location-incheon" aria-controls="location-incheon" role="tab" data-toggle="tab">인천(123)</a></li>
								<li role="presentation"><a href="#location-busan" aria-controls="location-busan" role="tab" data-toggle="tab">부산(123)</a></li>
								<li role="presentation"><a href="#location-daegu" aria-controls="location-daegu" role="tab" data-toggle="tab">대구(123)</a></li>
								<li role="presentation"><a href="#location-gwangju" aria-controls="location-gwangju" role="tab" data-toggle="tab">광주(123)</a></li>
								<li role="presentation"><a href="#location-daejeon" aria-controls="location-daejeon" role="tab" data-toggle="tab">대전(123)</a></li>
								<li role="presentation"><a href="#location-ulsan" aria-controls="location-ulsan" role="tab" data-toggle="tab">울산(123)</a></li>
								<li role="presentation"><a href="#location-sejong" aria-controls="location-sejong" role="tab" data-toggle="tab">세종(123)</a></li>
								<li role="presentation"><a href="#location-gangwon" aria-controls="location-gangwon" role="tab" data-toggle="tab">강원(123)</a></li>
								<li role="presentation"><a href="#location-gyeongnam" aria-controls="location-gyeongnam" role="tab" data-toggle="tab">경남(123)</a></li>
								<li role="presentation"><a href="#location-gyeongbuk" aria-controls="location-gyeongbuk" role="tab" data-toggle="tab">경북(123)</a></li>
								<li role="presentation"><a href="#location-jeonnam" aria-controls="location-jeonnam" role="tab" data-toggle="tab">전남(123)</a></li>
								<li role="presentation"><a href="#location-jeonbuk" aria-controls="location-jeonbuk" role="tab" data-toggle="tab">전북(123)</a></li>
								<li role="presentation"><a href="#location-chungnam" aria-controls="location-chungnam" role="tab" data-toggle="tab">충남(123)</a></li>
								<li role="presentation"><a href="#location-chungbuk" aria-controls="location-chungbuk" role="tab" data-toggle="tab">충북(123)</a></li>
								<li role="presentation"><a href="#location-jeju" aria-controls="location-jeju" role="tab" data-toggle="tab">제주(123)</a></li>
							</ul>
						</div>


						<div class="col-xs-8 tab-content overflow-scroll">

							<!-- 서울 -->
							<div role="tabpanel" class="tab-pane active" id="location-seoul">
								<ul id="location-medium">
									<li><input type="checkbox" id="seoul"> <label for="seoul">서울전체</label></li>
									<li><input type="checkbox" id="seoul-gangnam"> <label for="seoul-gangnam">강남구(12)</label></li>
									<li><input type="checkbox" id="seoul-gangdong"> <label for="seoul-gangdong">강동구(12)</label></li>
									<li><input type="checkbox" id="seoul-gangbuk"> <label for="seoul-gangbuk">강북구(12)</label></li>
									<li><input type="checkbox" id="seoul-gangseo"> <label for="seoul-gangseo">강서구(12)</label></li>
									<li><input type="checkbox" id="seoul-gwanak"> <label for="seoul-gwanak">관악구(12)</label></li>
									<li><input type="checkbox" id="seoul-gwangjin"> <label for="seoul-gwangjin">광진구(12)</label></li>
									<li><input type="checkbox" id="seoul-guro"> <label for="seoul-guro">구로구(12)</label></li>
									<li><input type="checkbox" id="seoul-geumcheon"> <label for="seoul-geumcheon">금천구(12)</label></li>
									<li><input type="checkbox" id="seoul-nowon"> <label for="seoul-nowon">노원구(12)</label></li>
									<li><input type="checkbox" id="seoul-dobong"> <label for="seoul-dobong">도봉구(12)</label></li>
									<li><input type="checkbox" id="seoul-dongdaemun"> <label for="seoul-dongdaemun">동대문구(12)</label></li>
									<li><input type="checkbox" id="seoul-dongjak"> <label for="seoul-dongjak">동작구(12)</label></li>
									<li><input type="checkbox" id="seoul-mapo"> <label for="seoul-mapo">마포구(12)</label></li>
									<li><input type="checkbox" id="seoul-seodaemun"> <label for="seoul-seodaemun">서대문구(12)</label></li>
									<li><input type="checkbox" id="seoul-seocho"> <label for="seoul-seocho">서초구(12)</label></li>
									<li><input type="checkbox" id="seoul-seongdong"> <label for="seoul-seongdong">성동구(12)</label></li>
									<li><input type="checkbox" id="seoul-seongbuk"> <label for="seoul-seongbuk">성북구(12)</label></li>
									<li><input type="checkbox" id="seoul-songpa"> <label for="seoul-songpa">송파구(12)</label></li>
									<li><input type="checkbox" id="seoul-yangcheon"> <label for="seoul-yangcheon">양천구(12)</label></li>
									<li><input type="checkbox" id="seoul-yeongdeungpo"> <label for="seoul-yeongdeungpo">영등포구(12)</label></li>
									<li><input type="checkbox" id="seoul-yongsan"> <label for="seoul-yongsan">용산구(12)</label></li>
									<li><input type="checkbox" id="seoul-eunpyeong"> <label for="seoul-eunpyeong">은평구(12)</label></li>
									<li><input type="checkbox" id="seoul-jongno"> <label for="seoul-jongno">종로구(12)</label></li>
									<li><input type="checkbox" id="seoul-jung"> <label for="seoul-jung">중구(12)</label></li>
									<li><input type="checkbox" id="seoul-jungnang"> <label for="seoul-jungnang">중랑구(12)</label></li>
								</ul>
							</div>

							<!-- 경기 -->
							<div role="tabpanel" class="tab-pane" id="location-gyeonggi">
								<ul id="location-medium">
									<li><input type="checkbox" id="gyeonggi"> <label for="gyeonggi">경기전체</label></li>
								</ul>
							</div>

							<!-- 인천 -->
							<div role="tabpanel" class="tab-pane" id="location-incheon">
								<ul id="location-medium">
									<li><input type="checkbox" id="incheon"> <label for="incheon">인천전체</label></li>
								</ul>
							</div>

							<!-- 부산 -->
							<div role="tabpanel" class="tab-pane" id="location-busan">
								<ul id="location-medium">
									<li><input type="checkbox" id="busan"> <label for="busan">부산전체</label></li>
								</ul>
							</div>

							<!-- 대구 -->
							<div role="tabpanel" class="tab-pane" id="location-daegu">
								<ul id="location-medium">
									<li><input type="checkbox" id="daegu"> <label for="daegu">대구전체</label></li>
								</ul>
							</div>

							<!-- 광주 -->
							<div role="tabpanel" class="tab-pane" id="location-gwangju">
								<ul id="location-medium">
									<li><input type="checkbox" id="gwangju"> <label for="gwangju">광주전체</label></li>
								</ul>
							</div>

							<!-- 대전 -->
							<div role="tabpanel" class="tab-pane" id="location-daejeon">
								<ul id="location-medium">
									<li><input type="checkbox" id="daejeon"> <label for="daejeon">대전전체</label></li>
								</ul>
							</div>

							<!-- 울산 -->
							<div role="tabpanel" class="tab-pane" id="location-ulsan">
								<ul id="location-medium">
									<li><input type="checkbox" id="ulsan"> <label for="ulsan">울산전체</label></li>
								</ul>
							</div>

							<!-- 세종 -->
							<div role="tabpanel" class="tab-pane" id="location-sejong">
								<ul id="location-medium">
									<li><input type="checkbox" id="sejong"> <label for="sejong">세종전체</label></li>
								</ul>
							</div>

							<!-- 강원 -->
							<div role="tabpanel" class="tab-pane" id="location-gangwon">
								<ul id="location-medium">
									<li><input type="checkbox" id="gangwon"> <label for="gangwon">강원도전체</label></li>
								</ul>
							</div>

							<!-- 경남 -->
							<div role="tabpanel" class="tab-pane" id="location-gyeongnam">
								<ul id="location-medium">
									<li><input type="checkbox" id="gyeongnam"> <label for="gyeongnam">경남전체</label></li>
								</ul>
							</div>

							<!-- 경북 -->
							<div role="tabpanel" class="tab-pane" id="location-gyeongbuk">
								<ul id="location-medium">
									<li><input type="checkbox" id="gyeongbuk"> <label for="gyeongbuk">경북전체</label></li>
								</ul>
							</div>

							<!-- 전남 -->
							<div role="tabpanel" class="tab-pane" id="location-jeonnam">
								<ul id="location-medium">
									<li><input type="checkbox" id="jeonnam"> <label for="jeonnam">전남전체</label></li>
								</ul>
							</div>

							<!-- 전북 -->
							<div role="tabpanel" class="tab-pane" id="location-jeonbuk">
								<ul id="location-medium">
									<li><input type="checkbox" id="jeonbuk"> <label for="jeonbuk">전북전체</label></li>
								</ul>
							</div>

							<!-- 충남 -->
							<div role="tabpanel" class="tab-pane" id="location-chungnam">
								<ul id="location-medium">
									<li><input type="checkbox" id="chungnam"> <label for="chungnam">충남전체</label></li>
								</ul>
							</div>

							<!-- 충북 -->
							<div role="tabpanel" class="tab-pane" id="location-chungbuk">
								<ul id="location-medium">
									<li><input type="checkbox" id="chungbuk"> <label for="chungbuk">충북전체</label></li>
								</ul>
							</div>

							<!-- 제주 -->
							<div role="tabpanel" class="tab-pane" id="location-jeju">
								<ul id="location-medium">
									<li><input type="checkbox" id="jeju"> <label for="jeju">제주전체</label></li>
								</ul>
							</div>

						</div>
					</div>
				</div>

				<div role="tabpanel" class="tab-pane" id="game-style-name">
					<input type="text" id="ipt-keyword" value="" placeholder="장르 검색"> <input type="text" id="ipt-keyword" value="" placeholder="게임 검색">
					<hr>
					<div class="row">
						<div class="col-xs-4 border-right overflow-scroll">
							<ul id="game-style">
								<li role="presentation" class="active"><a href="#style-strategy" aria-controls="style-strategy" role="tab" data-toggle="tab">전략(34)</a></li>
								<li role="presentation"><a href="#style-abstract" aria-controls="style-abstract" role="tab" data-toggle="tab">추상(34)</a></li>
								<li role="presentation"><a href="#style-collectible" aria-controls="style-collectible" role="tab" data-toggle="tab">컬렉터블(34)</a></li>
								<li role="presentation"><a href="#style-family" aria-controls="style-family" role="tab" data-toggle="tab">가족(34)</a></li>
								<li role="presentation"><a href="#style-kids" aria-controls="style-kids" role="tab" data-toggle="tab">어린이(34)</a></li>
								<li role="presentation"><a href="#style-party" aria-controls="style-party" role="tab" data-toggle="tab">파티(34)</a></li>
								<li role="presentation"><a href="#style-theme" aria-controls="style-theme" role="tab" data-toggle="tab">테마(34)</a></li>
								<li role="presentation"><a href="#style-wargame" aria-controls="style-wargame" role="tab" data-toggle="tab">워게임(34)</a></li>
								<li role="presentation"><a href="#style-korean" aria-controls="style-korean" role="tab" data-toggle="tab">한글(34)</a></li>
								<li role="presentation"><a href="#style-card" aria-controls="style-card" role="tab" data-toggle="tab">카드(34)</a></li>
								<li role="presentation"><a href="#style-economy" aria-controls="style-economy" role="tab" data-toggle="tab">경제(34)</a></li>
								<li role="presentation"><a href="#style-cooperation" aria-controls="style-cooperation" role="tab" data-toggle="tab">협력(34)</a></li>
								<li role="presentation"><a href="#style-puzzle" aria-controls="style-puzzle" role="tab" data-toggle="tab">퍼즐(34)</a></li>
								<li role="presentation"><a href="#style-adventure" aria-controls="style-adventure" role="tab" data-toggle="tab">모험(34)</a></li>
								<li role="presentation"><a href="#style-dice" aria-controls="style-dice" role="tab" data-toggle="tab">주사위(34)</a></li>
							</ul>
						</div>

						<div class="col-xs-8 tab-content overflow-scroll">
							<!-- 전략 -->
							<div role="tabpanel" class="tab-pane active" id="style-strategy">
								<ul id="game-name">
									<li><input type="checkbox" id="strategy"> <label for="strategy">전략전체</label></li>
									<li><input type="checkbox" id="game-terapoming"> <label for="game-terapoming">테라포밍 마스(12)</label></li>
								</ul>
							</div>

							<!-- 추상 -->
							<div role="tabpanel" class="tab-pane" id="style-abstract">
								<ul id="game-name">
									<li><input type="checkbox" id="abstract"> <label for="abstract">추상전체</label></li>
								</ul>
							</div>

							<!-- 컬렉터블 -->
							<div role="tabpanel" class="tab-pane" id="style-collectible">
								<ul id="game-name">
									<li><input type="checkbox" id="collectible"> <label for="collectible">컬렉터블전체</label></li>
								</ul>
							</div>

							<!-- 가족 -->
							<div role="tabpanel" class="tab-pane" id="style-family">
								<ul id="game-name">
									<li><input type="checkbox" id="family"> <label for="family">가족전체</label></li>
								</ul>
							</div>

							<!-- 어린이 -->
							<div role="tabpanel" class="tab-pane" id="style-kids">
								<ul id="game-name">
									<li><input type="checkbox" id="kids"> <label for="kids">어린이전체</label></li>
								</ul>
							</div>

							<!-- 파티 -->
							<div role="tabpanel" class="tab-pane" id="style-party">
								<ul id="game-name">
									<li><input type="checkbox" id="party"> <label for="party">파티전체</label></li>
								</ul>
							</div>

							<!-- 테마 -->
							<div role="tabpanel" class="tab-pane" id="style-theme">
								<ul id="game-name">
									<li><input type="checkbox" id="theme"> <label for="theme">테마전체</label></li>
								</ul>
							</div>

							<!-- 워게임 -->
							<div role="tabpanel" class="tab-pane" id="style-wargame">
								<ul id="game-name">
									<li><input type="checkbox" id="wargame"> <label for="wargame">워게임전체</label></li>
								</ul>
							</div>

							<!-- 한글 -->
							<div role="tabpanel" class="tab-pane" id="style-korean">
								<ul id="game-name">
									<li><input type="checkbox" id="korean"> <label for="korean">한글전체</label></li>
								</ul>
							</div>

							<!-- 카드 -->
							<div role="tabpanel" class="tab-pane" id="style-card">
								<ul id="game-name">
									<li><input type="checkbox" id="card"> <label for="card">카드전체</label></li>
								</ul>
							</div>

							<!-- 경제 -->
							<div role="tabpanel" class="tab-pane" id="style-economy">
								<ul id="game-name">
									<li><input type="checkbox" id="economy"> <label for="economy">경제전체</label></li>
								</ul>
							</div>

							<!-- 협력 -->
							<div role="tabpanel" class="tab-pane" id="style-cooperation">
								<ul id="game-name">
									<li><input type="checkbox" id="cooperation"> <label for="cooperation">협력전체</label></li>
								</ul>
							</div>

							<!-- 퍼즐 -->
							<div role="tabpanel" class="tab-pane" id="style-puzzle">
								<ul id="game-name">
									<li><input type="checkbox" id="puzzle"> <label for="puzzle">퍼즐전체</label></li>
								</ul>
							</div>

							<!-- 모험 -->
							<div role="tabpanel" class="tab-pane" id="style-adventure">
								<ul id="game-name">
									<li><input type="checkbox" id="adventure"> <label for="adventure">모험전체</label></li>
								</ul>
							</div>

							<!-- 주사위 -->
							<div role="tabpanel" class="tab-pane" id="style-dice">
								<ul id="game-name">
									<li><input type="checkbox" id="dice"> <label for="dice">주사위전체</label></li>
								</ul>
							</div>

						</div>
					</div>
				</div>

			</div>
			<div>
				<table id="select-option-checkbox">
					<colgroup>
						<col width="170px">
						<col width="400px">
						<col width="180px">
					</colgroup>
					<thead>
						<tr>
							<th>성별제한</th>
							<th>나이제한</th>
							<th>매칭상태</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" id="male"> <label for="male">남</label> <input type="checkbox" id="female"> <label for="female">여</label> <input type="checkbox" id="sex-none"> <label for="sex-none">무관</label></td>
							<td><input type="checkbox" id="10s"> <label for="10s">10대</label> <input type="checkbox" id="20s"> <label for="20s">20대</label> <input type="checkbox" id="30s"> <label for="30s">30대</label> <input type="checkbox" id="40s"> <label for="40s">40대</label> <input type="checkbox" id="50s"> <label for="50s">50대</label> <input type="checkbox" id="age-none"> <label for="age-none">무관</label></td>
							<td><input type="checkbox" id="matching-ing"> <label for="matching-ing">매칭중</label> <input type="checkbox" id="matching-end"> <label for="matching-end">매칭완료</label></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="select-option-list" class="row">
				<!-- <div class="col-xs-4"></div> -->
				<div id="option-reset" class="col-xs-1">
					<button class="btn-reset">
						선택초기화 <img src="${pageContext.request.contextPath}/assets/images/matching/btn-reset.png" alt="option-reset-btn">
					</button>
				</div>
				<div class="col-xs-11">
					<button>
						테라포밍 마스 <img src="${pageContext.request.contextPath}/assets/images/matching/btn-X.png" alt="delete img">
					</button>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
		<!-- 매칭글 리스트 -->
		<div>
			<table id="table-matchingList">
				<colgroup>
					<col width="115px">
					<col width="105px">
					<col width="325px">
					<col width="175px">
					<col width="65px">
					<col width="65px">
					<col width="145px">
					<col width="135px">
				</colgroup>
				<thead>
					<tr class="first-tr">
						<th>매칭상태</th>
						<th>조회수</th>
						<th>제목</th>
						<th>게임</th>
						<th>인원</th>
						<th>성별</th>
						<th>지역</th>
						<th>시작날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>매칭중</td>
						<td>999,999</td>
						<td><a href="${pageContext.request.contextPath}/matching/read">테라포밍 마스 하시오</a></td>
						<td>테라포밍 마스</td>
						<td>1/5</td>
						<td>남</td>
						<td>서울 강남구</td>
						<td>21. 11. 11.</td>
					</tr>

					<tr>
						<td>매칭중</td>
						<td>999,999</td>
						<td>테라포밍 마스 하시오</td>
						<td>테라포밍 마스</td>
						<td>1/5</td>
						<td>남</td>
						<td>서울 강남구</td>
						<td>21. 11. 11.</td>
					</tr>
					<tr>
						<td>매칭중</td>
						<td>999,999</td>
						<td>테라포밍 마스 하시오</td>
						<td>테라포밍 마스</td>
						<td>1/5</td>
						<td>남</td>
						<td>서울 강남구</td>
						<td>21. 11. 11.</td>
					</tr>
					<tr>
						<td>매칭중</td>
						<td>999,999</td>
						<td>테라포밍 마스 하시오</td>
						<td>테라포밍 마스</td>
						<td>1/5</td>
						<td>남</td>
						<td>서울 강남구</td>
						<td>21. 11. 11.</td>
					</tr>
					<tr>
						<td>매칭중</td>
						<td>999,999</td>
						<td>테라포밍 마스 하시오</td>
						<td>테라포밍 마스</td>
						<td>1/5</td>
						<td>남</td>
						<td>서울 강남구</td>
						<td>21. 11. 11.</td>
					</tr>
					<tr>
						<td>매칭중</td>
						<td>999,999</td>
						<td>테라포밍 마스 하시오</td>
						<td>테라포밍 마스</td>
						<td>1/5</td>
						<td>남</td>
						<td>서울 강남구</td>
						<td>21. 11. 11.</td>
					</tr>
					<tr>
						<td>매칭중</td>
						<td>999,999</td>
						<td>테라포밍 마스 하시오</td>
						<td>테라포밍 마스</td>
						<td>1/5</td>
						<td>남</td>
						<td>서울 강남구</td>
						<td>21. 11. 11.</td>
					</tr>
					<tr>
						<td>매칭중</td>
						<td>999,999</td>
						<td>테라포밍 마스 하시오</td>
						<td>테라포밍 마스</td>
						<td>1/5</td>
						<td>남</td>
						<td>서울 강남구</td>
						<td>21. 11. 11.</td>
					</tr>
					<tr>
						<td>매칭중</td>
						<td>999,999</td>
						<td>테라포밍 마스 하시오</td>
						<td>테라포밍 마스</td>
						<td>1/5</td>
						<td>남</td>
						<td>서울 강남구</td>
						<td>21. 11. 11.</td>
					</tr>
					<tr>
						<td>매칭중</td>
						<td>999,999</td>
						<td>테라포밍 마스 하시오</td>
						<td>테라포밍 마스</td>
						<td>1/5</td>
						<td>남</td>
						<td>서울 강남구</td>
						<td>21. 11. 11.</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div id="paging-wrap" class="text-center">
			<div id="paging">
				<ul>
					<li>«</li>
					<li>‹</li>
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
					<li>6</li>
					<li>7</li>
					<li>›</li>
					<li>»</li>
				</ul>
			</div>
		</div>
		<br>
		<div class="text-center">
			<a href="${pageContext.request.contextPath}/matching/writeForm"><button class="btn btn-info btn-sm">매칭글 등록</button></a>
		</div>
	</div>
	<!-- // CONTENT -->

	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- // FOOTER -->

</body>

<script>
	// 옵션 선택 리스트 탭
	// 메뉴가 선택되어 active가 되기 전 이벤트
	$('a[data-toggle="tab"]').on('show.bs.tab', function(e) {
		e.target // 현재 설정된 tab
		e.relatedTarget // 이전에 설정된 탭
	});
	// 메뉴가 선택되어 active가 된 후 이벤트
	$('a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
		e.target // 현재 설정된 tab
		e.relatedTarget // 이전에 설정된 탭
	});
	// 다른 메뉴가 선택되어 active가 remove 되기 전 이벤트
	$('a[data-toggle="tab"]').on('hide.bs.tab', function(e) {
		e.target // 현재 설정된 tab
		e.relatedTarget // 이전에 설정된 탭
	});
	// 다른 메뉴가 선택되어 active가 remove 된 후 이벤트
	$('a[data-toggle="tab"]').on('hidden.bs.tab', function(e) {
		e.target // 현재 설정된 tab
		e.relatedTarget // 이전에 설정된 탭
	});
	// -- 옵션 선택 리스트 탭 --
</script>

</html>