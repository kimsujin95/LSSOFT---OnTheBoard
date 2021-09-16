<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<!-- 메타 태그 -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- css  -->
<link href="${pageContext.request.contextPath }/assets/bootstrap/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/admin/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/admin/storeInfo.css" rel="stylesheet" type="text/css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>

<!-- 도로명 주소 api -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 카카오 맵 api -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c694e05d69f948b3793c67975a2ef4a5&libraries=services"></script>

<title>admin-storeInfo</title>

</head>
<body>
		
	<!-- 헤더 -->
	<c:import url="/WEB-INF/views/admin/includes/header.jsp"></c:import>
	<!-- //헤더 -->

	<!-- 컨텐츠 -->
	<div id="content" class="container">
		<!-- 로우 -->
		<div class="row">
			
			<!-- 어사이드 -->
			<c:import url="/WEB-INF/views/admin/includes/aside.jsp"></c:import>
			<!-- //어사이드 -->
				
			<!-- 메인 -->
			<div id="main" class="col-xs-10">
				
				<!-- 메인 타이틀 -->
				<div id="main-title">
					<h1>매장 관리</h1>
				</div>
				<!-- //메인 타이틀 -->
					
				<!-- 본문 영역 -->
				<div class="content-area">
					<!-- 서브 타이틀 -->
					<div class="sub-title">
						<h2>매장 정보</h2>
					</div>
					<!-- //서브 타이틀 -->
	
					<!-- 리스트 영역 -->
					<div class="list-area">
						<!-- 테이블 영역 -->
						<table id="storeInfo-table" class="font-size-14">
							<tr>
								<th>업종</th>
								<td>
									<input class="form-check-input" id="store-board" type="radio" name="store-status">
									<label class="form-check-label" for="store-board">보드게임 카페</label>
									<input class="form-check-input" id="store-general" type="radio" name="store-status">
									<label class="form-check-label" for="store-general">일반 자영업</label>
								</td>
							</tr>
							<tr>
								<th>
									<label for="store-name">매장명</label>
								</th>
								<td>
									<input id="store-name" type="text" placeholder="매장 이름을 등록해주세요">
								</td>
							</tr>
							<tr>
								<th>
									<label for="store-number">사업자 번호</label>
								</th>
								<td>
									<input id="store-number" type="text" placeholder="사업자 번호를 등록해주세요">
								</td>
							</tr>
							<tr>
								<th>매장 위치</th>
								<td>
									<div id="adress-area">
										<label for="adress-search">
											<input id="adress" type="text" placeholder="주소를 입력해주세요">
											<input type="button" id="adress-search" class="btn" value="주소찾기">
										</label>
									</div>
									<div id="adress-detail-area">
										<input id="adress-detail" type="text" placeholder="상세 주소를 입력해주세요">
									</div>
									<!-- 지도 -->
									<div id="map"></div>
								</td>
							</tr>
							<tr>
								<th>대표 전화</th>
								<td>
									<input id="rep-phone-number" type="text" placeholder="대표 전화를 입력해주세요">
								</td>
							</tr>
							<tr>
								<th>핸드폰</th>
								<td>
									<input id="phone-number" type="text" placeholder="핸드폰 번호를 입력해주세요">
								</td>
							</tr>
							<tr>
								<th>이용 요금</th>
								<td>
									<div id="weekday-area">
										<input id="weekday-rate" type="number" placeholder="금액만 입력해주세요">
										<label for="weekday-rate">평일</label>
									</div>
									<div id="weekend-area">
										<input id="weekend-rate" type="number" placeholder="금액만 입력해주세요">
										<label for="weekend-rate">주말</label>
									</div>
								</td>
							</tr>
							<tr>
								<th>매장 이미지</th>
								<td>
									<div id="image-inserted" class="pull-left border-default">
										<c:forEach begin="0" end="4">
											<div class="image-area">
												<img src="${pageContext.request.contextPath }/assets/images/admin/BoardGameStore.jpg">
												<img src="${pageContext.request.contextPath }/assets/images/admin/BoardGameStore2.jpg">
												<img src="${pageContext.request.contextPath }/assets/images/admin/BoardGameStore.jpg">
											</div>
										</c:forEach>
									</div>
									<label for="image-upload" class="btn btn-primary pull-left">사진 등록하기</label>
									<input id="image-upload" type="file">
								</td>
							</tr>
							<tr>
								<th>매장 소개</th>
								<td>
									<textarea id="store-desc" placeholder="매장을 소개해주세요"></textarea>
								</td>
							</tr>
						</table>
						<!-- //테이블 영역 -->
						<div class=btn-area>
							<c:choose>
								<c:when test="">	<!-- 매장이 등록 돼 있을 경우 -->
									<button class="btn btn-primary">수정하기</button>
								</c:when>
								<c:otherwise>
									<button class="btn btn-primary">등록하기</button>
								</c:otherwise>
							</c:choose>
							<a href="${pageContext.request.contextPath }/admin/main">
								<button class="btn">돌아가기</button>
							</a>
						</div>
					</div>
					<!-- //리스트 영역 -->
					
				</div>
				<!-- //본문 영역 -->
				
				</div>
				<!-- //메인 -->
		</div>
		<!-- //로우 -->
	</div>
	<!-- //컨텐츠 -->
	
</body>

<script type="text/javascript">
	
	$("#adress-search").on("click", function(){
		/* 도로명 주소 api */
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	            
				var addr = data.roadAddress; // 최종 주소 변수
				
				      // 주소 정보를 해당 필드에 넣는다.
				      document.getElementById("adress").value = addr;
				      // 주소로 상세 정보를 검색
				      geocoder.addressSearch(data.roadAddress, function(results, status) {
				          // 정상적으로 검색이 완료됐으면
				          if (status === daum.maps.services.Status.OK) {
				
				              var result = results[0]; //첫번째 결과의 값을 활용
				
				              // 해당 주소에 대한 좌표를 받아서
				              var coords = new daum.maps.LatLng(result.y, result.x);
				              // 지도를 보여준다.
				              mapContainer.style.display = "block";
				              map.relayout();
				              // 지도 중심을 변경한다.
				              map.setCenter(coords);
				              // 마커를 결과값으로 받은 위치로 옮긴다.
				              marker.setPosition(coords)
				          }
				      });
	        }
	    }).open();
	})
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
	      mapOption = {
	          center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
	          level: 5 // 지도의 확대 레벨
	      };
	
	  //지도를 미리 생성
	  var map = new daum.maps.Map(mapContainer, mapOption);
	  //주소-좌표 변환 객체를 생성
	  var geocoder = new daum.maps.services.Geocoder();
	  //마커를 미리 생성
	  var marker = new daum.maps.Marker({
	      position: new daum.maps.LatLng(37.537187, 127.005476),
	      map: map
	  });
	
</script>

</html>