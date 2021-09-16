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
<link href="${pageContext.request.contextPath }/assets/bootstrap/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/game/gamelayout.css" rel="stylesheet" media="screen and (max-width:1023px)">
<link href="${pageContext.request.contextPath }/assets/css/game/gamestyle.css" rel="stylesheet">


<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>

</head>

<body>

	<!-- Header -->
	<c:import url="/WEB-INF/views/admin/includes/header.jsp"></c:import>
	<!-- /#Header -->

	<!-- #wrap -->
	<div id="wrap">
		
		<!-- #container -->
		<div id="container" class="list">


			<!-- .gameDetail -->
			<div class="gameDetail">
				<!-- .gameInfo -->
				<div class="gameInfo">
					<h2>
						보난자<span>Bonanza</span>
					</h2>

					<div class="innerbox">
						<div class="thum">
							<img src="${pageContext.request.contextPath }/assets/images/game/bonanza1.png" alt="Bonanza">
						</div>
						<!--별점 평점 기능 넣기-->
						<div id="star-rater"></div>

						<div class="infoBox">
							<ul class="info">
								<li><em>대상연령</em>만 10세 이상</li>
								<li><em>게임인원</em>3명 ~ 5명</li>
								<li><em>게임시간</em>45분</li>
								<li><em>게임장르</em>가족 게임</li>
								<li><em>게임난이도</em>초급</li>
							</ul>

							<ul class="bbssvc">
								<li><a href=""><img src="${pageContext.request.contextPath }/assets/images/icons/icon_facebook_heart.png" width="auto"
										height="20px" alt="Heart icon"
									>찜하기</a></li>
								<li><a href="" target="_blank"><img src="${pageContext.request.contextPath }/assets/images/icons/icon_store.png"
										width="20px" height="auto" alt="Store Icon"
									>매칭바로가기</a></li>
							</ul>

						</div>
					</div>
				</div>
				<!-- /.gameInfo -->
				<!-- .tabMenu01 -->
				<div class="tabMenu01" id="gameIntroTab">
					<ul>
						<li class="current"><a href="#gameIntroTab">게임소개</a></li>
						<li class="current_l"><a href="#gameStoreTab">보유매장</a></li>
						<li class="current_l"><a href="#gameGuideTab">게임가이드</a></li>
					</ul>
				</div>
				<!-- /.tabMenu01 -->
				<!-- #gameIntro -->
				<div id="gameIntro">

					<dl style="border-bottom: 0px; text-align: center;">
						<img src="./image/bonanza-_intro.jpg" title="bonanza_intro.jpg" alt="보난자">
						<br style="clear: both;">
						<br style="clear: both;">
				</div>
				</dl>

			</div>
			<!-- /#gameIntro -->
			<!-- .tabMenu01 -->
			<div class="tabMenu01" id="gameStoreTab">
				<ul>
					<li class="current_l"><a href="#gameIntroTab">게임소개</a></li>
					<li class="current"><a href="#gameStoreTab">보유매장</a></li>
					<li class="current_l"><a href="#gameGuideTab">게임가이드</a></li>
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
									<td><span class="linkStore"><a href="">매장정보<br>상세보기
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
								<tr class="storeList_body">
									<td>5</td>
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
				<ul id="gameGuide">
					<li class="current_l"><a href="#gameIntroTab">게임소개</a></li>
					<li class="current_l"><a href="#gameStoreTab">보유매장</a></li>
					<li class="current"><a href="#gameGuideTab">게임가이드</a></li>
				</ul>
			</div>

			<div id="gameGuide">
				<!--<h3>게임가이드</h3>-->
				<dl>
					<div class="videowrap">
						<div class="embed-container">
							<iframe width="100%" height="485" src="https://www.youtube.com/embed/sQVG5UWCSLg"
								title="YouTube video player" showinfo="0" loading="lazy" marginheight="30"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen
							>
						</div>
						</iframe>
					</div>
				</dl>
			</div>
			<!-- /#gameGuide -->

		</div>
		<!-- /.gameDetail -->
	</div>
	<!-- /#container -->
	<!-- #footerwrap -->
	<div id="footerwrap">
		<!-- Footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- /#Footer -->
	</div>
	<!-- /#footerwrap -->
	</div>
	<!-- /#wrap -->


</body>

</html>