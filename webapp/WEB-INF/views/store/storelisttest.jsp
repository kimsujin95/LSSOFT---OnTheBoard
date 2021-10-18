<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매장리스트 테스트 페이지</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.css">

<!-- KaKaoMap_CSS -->

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/store/store_tab_content.css" type="text/css">

<!-- jQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.js"></script>

<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c694e05d69f948b3793c67975a2ef4a5&libraries=services"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/store/kakaomap/map.css" type="text/css">

</head>
<body>

	<!-- 헤더 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<!-- 매장 리스트 메인 -->
	<div id="Store_main">
		<!-- SUB TITLE -->
		<div class="container sub-container">
			<div class="subtitle clearfix">
				<div class="context1 font-size-24">매장 정보</div>
				<div class="context2 clearfix">
					<ul>
						<li><a href="#">매장</a></li>
						<li class="last-li"><a href="#">매장 목록</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // SUB TITLE -->
		<div id="Store_main_content" class="container">

			<!-- 지역, 게임, 키워드 검색 -->
			<c:import url="/WEB-INF/views/store/tab_content.jsp"></c:import>

			<!-- 지도 -->
			<div class="map_wrap">
				<div id="map" style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

				<div id="menu_wrap" class="bg_white">
					<div class="option">
						<div>
							<form onsubmit="searchStore(); return false;">
								키워드 : <input name="keyword" type="text" value="" id="keyword" size="15">
								<button type="submit">검색하기</button>
							</form>
						</div>
					</div>
					<hr>
					<ul id="searchlist">
						<c:forEach items="${storeList }" var="storeInfo" varStatus="status">
							<li class="item" data-lng="${storeInfo.storeLng }" data-lat="${storeInfo.storeLat }">
								<a class="font-size-16" href="${pageContext.request.contextPath }/store/storeinfo/${storeInfo.storeNo}">${storeInfo.storeName }</a>
								<div> 주소 : ${storeInfo.storeAddressRoad } </div>
								<div> 전화번호 : ${storeInfo.storePhoneNo } </div>
								<div> 평일 : ${storeInfo.storeChargeWeek } </div>
								<div> 주말 : ${storeInfo.storeChargeWeekend } </div>
							</li>
						</c:forEach>
					</ul>
					<div id="pagination"></div>
				</div>
			</div>

		</div>

	</div>

	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- // FOOTER -->

</body>

<!-- 카카오 지도 키워드 검색 -->
<script>
	
	var mapContainer = document.getElementById('map') // 지도를 표시할 div
	var	mapOption = {
	    center: new kakao.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
	    level: 1 // 지도의 확대 레벨
	};

	//지도를 미리 생성
	var map = new kakao.maps.Map(mapContainer, mapOption);
	
	//주소-좌표 변환 객체를 생성
	var geocoder = new kakao.maps.services.Geocoder();
	
	//마커를 미리 생성
	
	var marker = new kakao.maps.Marker({
	    position: new kakao.maps.LatLng(37.537187, 127.005476),	
	    map: map
	});
	
	var lat = ${storeList[0].storeLat};
	var lng = ${storeList[0].storeLng};
	
	//console.log(lat);
	//console.log(lng);
	
	var coords = new kakao.maps.LatLng(lat, lng);

	mapContainer.style.display = "block";
    map.relayout();
	
	map.setCenter(coords);
	marker.setPosition(coords);
	
	//li.items 클릭 시, 해당 위치로 이동
	$("li.item").on("click",function(){
		
		console.log("리스트 온 클릭 이벤트");
		console.log(this);
		
		var lat = $(this).data("lat");
		var lng = $(this).data("lng");
		
		coords = new kakao.maps.LatLng(lat, lng);
		map.setCenter(coords);
		marker.setPosition(coords);

	});
	
</script>

<!-- 매장 리스트 검색용 - ajax -->
<script type="text/javascript">

	//키워드 검색요청 함수
	function searchStore() {
	
		var keyword = document.getElementById('keyword').value;
	
		if (!keyword.replace(/^\s+|\s+$/g, '')) {
			alert('키워드를 입력해주세요!');
			return false;
		}
	
		$.ajax({
			url : "${pageContext.request.contextPath}/store/storesearchlist",
			type : 'POST',
			data : {
				keyword : keyword
			},
	
			success : function(searchStoreList) {
			
				//키워드 검색을 통해 넘겨받은 매장리스트값을 목록표출 함수로 넘겨준다.
				console.log(searchStoreList);
				$("#searchlist li").remove();
				
			}, // success 
	
			error : function(XHR, status, error) {
	
				console.error(status + " : " + error);
	
			}
		}); // $.ajax */
	}
	
</script>

</html>