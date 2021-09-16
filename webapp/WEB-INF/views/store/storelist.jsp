<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매장리스트 페이지</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.css">

<!-- KaKaoMap_CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/store/kakaomap/map.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/tab_content.css" type="text/css">

<!-- jQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.js"></script>

<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c694e05d69f948b3793c67975a2ef4a5&libraries=services,clusterer,drawing"></script>

</head>
<body>
	
	<!-- 헤더 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	
	<div id="Store_main">

		<div id="Store_main_content" class="container">

			<!-- 지역, 게임, 키워드 검색 -->
			<div class="container">
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
			</div>

			<!-- 지도 -->
			<div class="map_wrap">
				<div id="map" style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

				<div id="menu_wrap" class="bg_white">
					<div class="option">
						<div>
							<form onsubmit="searchPlaces(); return false;">
								키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15">
								<button type="submit">검색하기</button>
							</form>
						</div>
					</div>
					<hr>
					<ul id="placesList"></ul>
					<div id="pagination"></div>
				</div>
			</div>

		</div>

	</div>


</body>

<!-- 카카오 지도 api 가져오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c694e05d69f948b3793c67975a2ef4a5&libraries=services"></script>

<!-- 카카오 지도 키워드 검색 -->
<script>
	// 마커를 담을 배열입니다
	var markers = [];

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
		level : 3
	// 지도의 확대 레벨
	};

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places();

	// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
		zIndex : 1
	});

	// 키워드로 장소를 검색합니다
	searchPlaces();

	// 키워드 검색을 요청하는 함수입니다
	function searchPlaces() {

		var keyword = document.getElementById('keyword').value;

		if (!keyword.replace(/^\s+|\s+$/g, '')) {
			alert('키워드를 입력해주세요!');
			return false;
		}

		// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
		ps.keywordSearch(keyword, placesSearchCB);
	}

	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
		if (status === kakao.maps.services.Status.OK) {

			// 정상적으로 검색이 완료됐으면
			// 검색 목록과 마커를 표출합니다
			displayPlaces(data);

			// 페이지 번호를 표출합니다
			displayPagination(pagination);

		} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

			alert('검색 결과가 존재하지 않습니다.');
			return;

		} else if (status === kakao.maps.services.Status.ERROR) {

			alert('검색 결과 중 오류가 발생했습니다.');
			return;

		}
	}

	// 검색 결과 목록과 마커를 표출하는 함수입니다
	function displayPlaces(places) {

		var listEl = document.getElementById('placesList'), menuEl = document
				.getElementById('menu_wrap'), fragment = document
				.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

		// 검색 결과 목록에 추가된 항목들을 제거합니다
		removeAllChildNods(listEl);

		// 지도에 표시되고 있는 마커를 제거합니다
		removeMarker();

		for (var i = 0; i < places.length; i++) {

			// 마커를 생성하고 지도에 표시합니다
			var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x), marker = addMarker(
					placePosition, i), itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
			// LatLngBounds 객체에 좌표를 추가합니다
			bounds.extend(placePosition);

			// 마커와 검색결과 항목에 mouseover 했을때
			// 해당 장소에 인포윈도우에 장소명을 표시합니다
			// mouseout 했을 때는 인포윈도우를 닫습니다
			(function(marker, title) {
				kakao.maps.event.addListener(marker, 'mouseover', function() {
					displayInfowindow(marker, title);
				});

				kakao.maps.event.addListener(marker, 'mouseout', function() {
					infowindow.close();
				});

				itemEl.onmouseover = function() {
					displayInfowindow(marker, title);
				};

				itemEl.onmouseout = function() {
					infowindow.close();
				};
			})(marker, places[i].place_name);

			fragment.appendChild(itemEl);
		}

		// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
		listEl.appendChild(fragment);
		menuEl.scrollTop = 0;

		// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		map.setBounds(bounds);
	}

	// 검색결과 항목을 Element로 반환하는 함수입니다
	function getListItem(index, places) {

		var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
				+ (index + 1)
				+ '"></span>'
				+ '<div class="info">'
				+ '   <h5>'
				+ places.place_name + '</h5>';

		if (places.road_address_name) {
			itemStr += '    <span>' + places.road_address_name + '</span>'
					+ '   <span class="jibun gray">' + places.address_name
					+ '</span>';
		} else {
			itemStr += '    <span>' + places.address_name + '</span>';
		}

		itemStr += '  <span class="tel">' + places.phone + '</span>' + '</div>';

		el.innerHTML = itemStr;
		el.className = 'item';

		return el;
	}

	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, idx, title) {
		var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
		imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
		imgOptions = {
			spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
			spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
			offset : new kakao.maps.Point(13, 37)
		// 마커 좌표에 일치시킬 이미지 내에서의 좌표
		}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
				imgOptions), marker = new kakao.maps.Marker({
			position : position, // 마커의 위치
			image : markerImage
		});

		marker.setMap(map); // 지도 위에 마커를 표출합니다
		markers.push(marker); // 배열에 생성된 마커를 추가합니다

		return marker;
	}

	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
		for (var i = 0; i < markers.length; i++) {
			markers[i].setMap(null);
		}
		markers = [];
	}

	// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
	function displayPagination(pagination) {
		var paginationEl = document.getElementById('pagination'), fragment = document
				.createDocumentFragment(), i;

		// 기존에 추가된 페이지번호를 삭제합니다
		while (paginationEl.hasChildNodes()) {
			paginationEl.removeChild(paginationEl.lastChild);
		}

		for (i = 1; i <= pagination.last; i++) {
			var el = document.createElement('a');
			el.href = "#";
			el.innerHTML = i;

			if (i === pagination.current) {
				el.className = 'on';
			} else {
				el.onclick = (function(i) {
					return function() {
						pagination.gotoPage(i);
					}
				})(i);
			}

			fragment.appendChild(el);
		}
		paginationEl.appendChild(fragment);
	}

	// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
	// 인포윈도우에 장소명을 표시합니다
	function displayInfowindow(marker, title) {
		var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

		infowindow.setContent(content);
		infowindow.open(map, marker);
	}

	// 검색결과 목록의 자식 Element를 제거하는 함수입니다
	function removeAllChildNods(el) {
		while (el.hasChildNodes()) {
			el.removeChild(el.lastChild);
		}
	}
</script>

</html>