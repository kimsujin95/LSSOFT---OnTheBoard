<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>On the Board:팀프로젝트 3조</title>


<!-- css  -->
<link href="${pageContext.request.contextPath }/assets/bootstrap/bootstrap.css" rel="stylesheet"
	type="text/css"
>
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet"
	type="text/css"
>
<link href="${pageContext.request.contextPath }/assets/css/game/gamelayout.css" rel="stylesheet"
	media="screen"
>
<link href="${pageContext.request.contextPath }/assets/css/game/gamestyle.css" rel="stylesheet">


<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>

</head>

<body>

	<!-- Header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- /#Header -->

	<!-- #wrap -->
	<div class="wrap">
		<div class="sub-container">
			<!--.subtitle -->
			<div class="subtitle clearfix">
				<div class="context1 font-size-24">게임목록</div>
				<div class="context2 clearfix">
					<ul>
						<li><a href="${pageContext.request.contextPath}/main">메인</a></li>
						<li><a href="${pageContext.request.contextPath}/game/list">게임목록</a></li>
						<li class="last-li"><a href="${pageContext.request.contextPath}/game/gameDetails?gameNo=${gameVo.gameNo}">게임세부정보</a></li>
					</ul>
				</div>
			</div>
			<!-- /.subtitle -->
		</div>
		<!-- /.sub-container -->
		<!-- main -->
		<div id="main" class="container">
		
			<!-- .gameDetail -->
			<div class="gameDetail">
				<!-- .gameInfo -->
				<div class="gameInfo">
					<!-- .innerbox -->
					<div class="innerbox">
						<div class="thum">
							<img src="${pageContext.request.contextPath}/upload/${gameVo.gameThumbImg }" alt="${gameVo.gameNameKo }">
						</div>
						<!--별점 평점 기능 넣기-->
						<div id="star-rater"></div>
						<!-- infoBox -->
						<div class="infoBox">
							<ul class="info">
								<li class="gameTitle">${gameVo.gameNameKo}<span>${gameVo.gameNameEn}</span>
								</li>
								<li><em>대상연령</em>${gameVo.gameAge}</li>
								<li><em>게임인원</em>${gameVo.gamePeople}</li>
								<li><em>게임시간</em>${gameVo.gameTime}</li>
								<li><em>게임난이도</em>${gameVo.gameDifficulty}</li>

								<li><em>게임테마</em><a href="">#${gameVo.themeNo} </a></li>
							</ul>
							<div class="bbssvc">
								<button class="btn-blue">찜하기</button>
								<button class="btn-red">매칭바로가기</button>
							</div>

						</div>
						<!-- ./infoBox -->
					</div>
					<!-- /.innerbox -->
				</div>
				<!-- /.gameInfo -->
				<!-- .tabMenu01 -->
				<div class="tabMenu01" id="gameIntroTab">
					<ul class="tab nav-tabs nav-justified">
						<li class="current "><a href="#gameIntroTab" data-toggle="tab">게임소개</a></li>
						<li class="current_l"><a href="#gameStoreTab" data-toggle="tab">보유매장</a></li>
						<li class="current_l"><a href="#gameGuideTab" data-toggle="tab">게임가이드</a></li>
					</ul>
				</div>
				<!-- /.tabMenu01 -->
				<!-- #gameIntro -->
				<div id="gameIntro">

					<div >
						<img src="${pageContext.request.contextPath}/upload/${gameVo.gameDescription }" alt="${gameVo.gameNameKo }">
					</div>
				</div>
			
			<!-- /#gameIntro -->
			<!-- .tabMenu01 -->
			<div class="tabMenu01" id="gameStoreTab">
				<ul class="tab nav-tabs nav-justified">
					<li class="current_l"><a href="#gameIntroTab" data-toggle="tab">게임소개</a></li>
					<li class="current"><a href="#gameStoreTab" data-toggle="tab">보유매장</a></li>
					<li class="current_l"><a href="#gameGuideTab" data-toggle="tab">게임가이드</a></li>
				</ul>
			</div>
			<!-- /.tabMenu01 -->
			<!-- #gameStore -->
			<div id="gameStore">
				<!--.bbsList02-->
				<div class="bbsList02" id="gmaeStorelistTab">
					<div class="innerbox">
						<table>
							<caption hidden>보유매장 리스트</caption>
							<thead>
								<tr class="listHead" style="text-align: center;"">
									<th id="num">번호</th>
									<th id="storename">매장명</th>
									<th id="storelocation">위치</th>
									<th id="storeTelnum">전화번호</th>
									<th id="storDetail">매장정보</th>
								</tr>
							</thead>
							<tbody style="border-bottom: 0px; text-align: center;">
								<tr class="listBody">
									<td>1</td>
									<td>강남보드게임</td>
									<td>서울시 강남구 역삼동</td>
									<td>02-555-1234</td>
									<td><span class="linkStore"><a href="${storeVo.ownStore }">매장정보<br>상세보기
										</a></span></td>
								</tr>
								<tr class="storeList_body">
									<td>2</td>
									<td>강남보드게임</td>
									<td>서울시 강남구 역삼동</td>
									<td>02-555-1234</td>
									<td><span class="linkStore"><a href="">매장정보<br>상세보기
										</a></span></td>
								</tr>
								<tr class="storeList_body">
									<td>3</td>
									<td>강남보드게임</td>
									<td>서울시 강남구 역삼동</td>
									<td>02-555-1234</td>
									<td><span class="linkStore"><a href="">매장정보<br>상세보기
										</a></span></td>
								</tr>
								<tr class="storeList_body">
									<td>4</td>
									<td>강남보드게임</td>
									<td>서울시 강남구 역삼동</td>
									<td>02-555-1234</td>
									<td><span class="linkStore"><a href="">매장정보<br>상세보기
										</a></span></td>
								</tr>
							
							</tbody>

						</table>
					</div>
				</div>
				<!-- /.bbsList02 -->
			</div>
			<!-- /#gameStore -->
			<!-- .tabMenu01 -->

			<!-- #gameGuide -->
			<!-- .tabMenu01 -->
			<div class="tabMenu01" id="gameGuideTab">
				<ul class="tab nav-tabs nav-justified" id="gameGuide">
					<li class="current_l"><a href="#gameIntroTab" data-toggle="tab">게임소개</a></li>
					<li class="current_l"><a href="#gameStoreTab" data-toggle="tab">보유매장</a></li>
					<li class="current"><a href="#gameGuideTab" data-toggle="tab">게임가이드</a></li>
				</ul>
			</div>

			<div id="gameGuide">
				<!--<h3>게임가이드</h3>-->
				<div class="videowrap">
					<div class="embed-container">
						<iframe width="100%" height="485" src="https://www.youtube.com/embed/${gameVo.gameGuide}"
							title="YouTube video player" showinfo="0" loading="lazy" marginheight="30"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen>
						</iframe>
					</div>
				</div>
			</div>
			<!-- /#gameGuide -->
		</div>
		<!-- /.gameDetail -->
	</div>
	<!-- /.container -->


	<!-- Footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- /#Footer -->
	</div>
	<!-- /#wrap -->


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