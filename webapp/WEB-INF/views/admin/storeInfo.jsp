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
						<c:choose>
							<c:when test="${!empty storeInfo }">
								<form id="form" action="${pageContext.request.contextPath }/admin/storeInfoModify" method="post">
									<!-- 테이블 영역 -->
									<table id="storeInfo-table" class="font-size-14">
										<tr>
											<th>업종</th>
											<td>
												<c:choose>
													<c:when test="${storeInfo.storeType eq '0' }">
														<input class="form-check-input" id="store-board" type="radio" name="storeType" value="0" checked="checked">
													</c:when>
													<c:otherwise>
														<input class="form-check-input" id="store-board" type="radio" name="storeType" value="0">
													</c:otherwise>
												</c:choose>										
												<label class="form-check-label" for="store-board">보드게임 카페</label>
												<c:choose>
													<c:when test="${storeInfo.storeType eq '1' }">
														<input class="form-check-input" id="store-general" type="radio" name="storeType" value="1" checked="checked">
													</c:when>
													<c:otherwise>
														<input class="form-check-input" id="store-general" type="radio" name="storeType" value="1">
													</c:otherwise>
												</c:choose>		
												<label class="form-check-label" for="store-general">일반 자영업</label>
											</td>
										</tr>
										<tr>
											<th>
												<label for="store-name">매장명</label>
											</th>
											<td>
												<input id="store-name" type="text" name="storeName" value="${storeInfo.storeName }">
											</td>
										</tr>
										<tr>
											<th>
												<label for="store-business-no">사업자 번호</label>
											</th>
											<td>
												<input id="store-business-no" type="text" name="storeBusinessNo" value="${storeInfo.storeBusinessNo }">
											</td>
										</tr>
										<tr>
											<th>
												<label for="address-search">매장 위치</label>
											</th>
											<td>
												<div id="address-area">
													<input id="store-address" type="text" name="storeAddressRoad" value="${storeInfo.storeAddressRoad }">
													<button id="address-search" class="btn btn-primary" type="button">주소 찾기</button>
												</div>
												<div id="address-detail-area">
													<input id="store-address-detail" type="text" name="storeAddressDetail" value="${storeInfo.storeAddressDetail }">
													<input id="store-lat" type="hidden" name="storeLat" value="${storeInfo.storeLat }">
													<input id="store-lng" type="hidden" name="storeLng" value="${storeInfo.storeLng }">
												</div>
												<!-- 지도 -->
												<div id="map"></div>
											</td>
										</tr>
										<tr>
											<th>
												<label for="store-phone-no">대표 전화</label>
											</th>
											<td>
												<input id="store-phone-no" type="text" name="storePhoneNo" value="${storeInfo.storePhoneNo }">
											</td>
										</tr>
										<tr>
											<th>이용 요금</th>
											<td>
												<div id="weekday-area">
													<input id="store-charge-week" type="number" name="storeChargeWeek" value="${storeInfo.storeChargeWeek }">
													<label for="store-charge-week">평일</label>
												</div>
												<div id="weekend-area">
													<input id="store-charge-weekend" type="number" name="storeChargeWeekend" value="${storeInfo.storeChargeWeekend }">
													<label for="store-charge-weekend">주말</label>
												</div>
											</td>
										</tr>
										<tr>
											<th>
												<label for="image-upload">매장 이미지</label>
											</th>
											<td>
												<div id="image-inserted" class="pull-left border-default">
													<%-- <c:forEach begin="0" end="4">
														<div class="image-area">
															<img src="${pageContext.request.contextPath }/assets/images/admin/BoardGameStore.jpg">
															<img src="${pageContext.request.contextPath }/assets/images/admin/BoardGameStore2.jpg">
															<img src="${pageContext.request.contextPath }/assets/images/admin/BoardGameStore.jpg">
														</div>
													</c:forEach> --%>
												</div>
												<label for="image-upload" class="btn btn-primary pull-left">사진 등록하기</label>
												<input id="image-upload" name="storeImages[]" type="file" multiple="multiple" accept=".jpg, .png">
											</td>
										</tr>
										<tr>
											<th>
												<label for ="store-desc">매장 소개</label>
											</th>
											<td>
												<textarea id="store-desc" name="storeDesc">${storeInfo.storeDesc }</textarea>
											</td>
										</tr>
									</table>
									<!-- //테이블 영역 -->
									<div class=btn-area>
										<button class="btn btn-primary" type="submit">수정하기</button>
										<a href="${pageContext.request.contextPath }/admin/main">
											<button class="btn" type="button">돌아가기</button>
										</a>
									</div>
								</form>
							</c:when>
							<c:otherwise>
								<form action="${pageContext.request.contextPath }/admin/storeInfoInsert" method="post">
										<!-- 테이블 영역 -->
									<table id="storeInfo-table" class="font-size-14">
										<tr>
											<th>업종</th>
											<td>
												<input class="form-check-input" id="store-board" type="radio" name="storeType" value="0">
												<label class="form-check-label" for="store-board">보드게임 카페</label>
												<input class="form-check-input" id="store-general" type="radio" name="storeType" value="1">
												<label class="form-check-label" for="store-general">일반 자영업</label>
											</td>
										</tr>
										<tr>
											<th>
												<label for="store-name">매장명</label>
											</th>
											<td>
												<input id="store-name" type="text" name="storeName" placeholder="매장 이름을 등록해주세요">
											</td>
										</tr>
										<tr>
											<th>
												<label for="store-business-no">사업자 번호</label>
											</th>
											<td>
												<input id="store-business-no" type="text" name="storeBusinessNo" placeholder="사업자 번호를 등록해주세요">
											</td>
										</tr>
										<tr>
											<th>
												<label for="address-search">매장 위치</label>
											</th>
											<td>
												<div id="address-area">
													<input id="store-address" type="text" name="storeAddressRoad" placeholder="주소를 입력해주세요">
													<button id="address-search" class="btn btn-primary" type="button">주소 찾기</button>
												</div>
												<div id="address-detail-area">
													<input id="store-address-detail" type="text" name="storeAddressDetail" placeholder="상세 주소를 입력해주세요">
													<input id="store-lat" type="hidden" name="storeLat">
													<input id="store-lng" type="hidden" name="storeLng">
												</div>
												<!-- 지도 -->
												<div id="map"></div>
											</td>
										</tr>
										<tr>
											<th>
												<label for="store-phone-no">대표 전화</label>
											</th>
											<td>
												<input id="store-phone-no" type="text" name="storePhoneNo" placeholder="대표 전화를 입력해주세요">
											</td>
										</tr>
										<tr>
											<th>이용 요금</th>
											<td>
												<div id="weekday-area">
													<input id="store-charge-week" type="number" name="storeChargeWeek" placeholder="금액만 입력해주세요">
													<label for="store-charge-week">평일</label>
												</div>
												<div id="weekend-area">
													<input id="store-charge-weekend" type="number" name="storeChargeWeekend" placeholder="금액만 입력해주세요">
													<label for="store-charge-weekend">주말</label>
												</div>
											</td>
										</tr>
										<tr>
											<th>
												<label for="image-upload">매장 이미지</label>
											</th>
											<td>
												<div id="image-inserted" class="pull-left border-default">
												</div>
												<label for="image-upload" class="btn btn-primary pull-left">사진 등록하기</label>
												<input id="image-upload" name="storeImages[]" type="file" multiple="multiple" accept=".jpg, .png">
											</td>
										</tr>
										<tr>
											<th>매장 소개</th>
											<td>
												<textarea id="store-desc" name="storeDesc" placeholder="매장을 소개해주세요"></textarea>
											</td>
										</tr>
									</table>
									<!-- //테이블 영역 -->
									<div class=btn-area>
										<button class="btn btn-primary" type="submit">등록하기</button>
										<a href="${pageContext.request.contextPath }/admin/main">
											<button class="btn" type="button">돌아가기</button>
										</a>
									</div>
								</form>
							</c:otherwise>
						</c:choose>
						
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

<!-- 매장 이미지 등록 및 삭제 ajax -->
<script type="text/javascript">

	//이미지 업로드 클릭 시, form 속성 변경
	$("#image-upload").on("click", function(){
		console.log("이미지 등록 클릭");
		
		var form = $("#form");
		
		//동작 시, form tag의 액션과 enctype을 변경
		form.attr("action", "${pageContext.request.contextPath }/storeImageUpload");
		form.attr("enctype", "multipart/form-data");
		
		var imageForm = document.getElementById("form");
		var formData = new FormData(imageForm);
		
		//파일을 전송할 배열
		var filesTempArr = [];
		
		//파일 추가
		function addFiles(e) {
			
			console.log("이미지 파일 업로드");
			
			var files = e.target.files;							//이벤트 대상의 파일들
			var filesArr = Array.prototype.slice.call(files);	//대상 파일들을 배열의 형태로 전환
			
			//받아온 파일을 전송할 배열에 넣는다
			for(var i = 0; i < filesArr.length; i++) {
				filesTempArr.push(filesArr[i]);
				//console.log(filesTempArr[i]);					파일 체크 완료
			}
			
			//데이터 전송
			//파일 데이터를 formData에 추가,	append 메소드의 첫번째 파라미터는 controller에서 해당 파일을 확인할 key 값이 된다
			for(var i = 0; i < filesTempArr.length; i++) {
				formData.append("files", filesTempArr[i]);
			};
			
			//ajax로 전송
			$.ajax({
			    type : "POST",
			    url : "${pageContext.request.contextPath }/storeImageUpload",
			    data : formData,
			    processData: false,
			    contentType: false,
			    success : function(data) {
			        if(data.result){
			            alert("Success");
			        }else{
			            alert(data.result);
			        }
			        
			    },
			    err : function(err) {
			        alert(err.status);
			    }
			});
			
			form.val("");									//ajax 형태로 전송하므로, 새로고침이 없어 input의 val이 그대로 남아 있다 - 사용자가 이미지를 재등록 할 경우를 대비하여 val을 비운다
			
			//전송 이후, 해당 form 태그의 attr을 원래 상태로 복구
			form.removeAttr("enctype");
			
		}
		
		$("#image-upload").on("input", addFiles);
		
	});

	
</script>

<!-- 지도 및 도로명 주소 api -->
<script type="text/javascript">
	
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
	
	//등록된 매장 정보가 있을 때
	if(${storeInfo != null}) {
		
		//console.log("매장 정보 있음")
		
		var lat = $("#store-lat").val();
		var lng = $("#store-lng").val();
		
		//console.log("lat " + lat);
		//console.log("lng " + lng);
		
		var coords = new kakao.maps.LatLng(lat, lng);
		
		//console.log(coords);
		
		 // 지도를 보여준다.
        mapContainer.style.display = "block";
        map.relayout();
		
		map.setCenter(coords);
		marker.setPosition(coords);
		
	} 
	
	//주소 검색으로 도로명 주소, 위도 경도 값 저장 및 지도 표현
	$("#address-search").on("click", function(){
		/* 도로명 주소 api */
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분
	            
				var addr = data.roadAddress; // 최종 주소 변수
				
				      // 주소 정보를 해당 필드에 넣는다.
				      document.getElementById("store-address").value = addr;
				      // 주소로 상세 정보를 검색
				      geocoder.addressSearch(data.roadAddress, function(results, status) {
				          // 정상적으로 검색이 완료됐으면
				          if (status === daum.maps.services.Status.OK) {
				
				              var result = results[0]; //첫번째 결과의 값을 활용
				
				              // 해당 주소에 대한 좌표를 받아서
				              var coords = new kakao.maps.LatLng(result.y, result.x);
				              
				              //console.log(coords);
				              
				              var lat = coords.getLat();	//위도
				              var lng = coords.getLng();	//경도
				              
				              //console.log(lat);
				              //console.log(lng);
				              
				              // 위도, 경도 값 입력
				              $("#store-lat").val(lat);
				              $("#store-lng").val(lng);
				              
				              //console.log($("#store-lat").val());
				              //console.log($("#store-lng").val());
				              
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
	
</script>

</html>