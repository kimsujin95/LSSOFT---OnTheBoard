<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="tap-content-wrap" class="container">
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
						<li role="presentation" class="active"><a href="#location-seoul" aria-controls="location-seoul" role="tab" data-toggle="tab">서울</a></li>
						<li role="presentation"><a href="#location-gyeonggi" aria-controls="location-gyeonggi" role="tab" data-toggle="tab">경기</a></li>
						<li role="presentation"><a href="#location-incheon" aria-controls="location-incheon" role="tab" data-toggle="tab">인천</a></li>
						<li role="presentation"><a href="#location-busan" aria-controls="location-busan" role="tab" data-toggle="tab">부산</a></li>
						<li role="presentation"><a href="#location-daegu" aria-controls="location-daegu" role="tab" data-toggle="tab">대구</a></li>
						<li role="presentation"><a href="#location-gwangju" aria-controls="location-gwangju" role="tab" data-toggle="tab">광주</a></li>
						<li role="presentation"><a href="#location-daejeon" aria-controls="location-daejeon" role="tab" data-toggle="tab">대전</a></li>
						<li role="presentation"><a href="#location-ulsan" aria-controls="location-ulsan" role="tab" data-toggle="tab">울산</a></li>
						<li role="presentation"><a href="#location-sejong" aria-controls="location-sejong" role="tab" data-toggle="tab">세종</a></li>
						<li role="presentation"><a href="#location-gangwon" aria-controls="location-gangwon" role="tab" data-toggle="tab">강원</a></li>
						<li role="presentation"><a href="#location-gyeongnam" aria-controls="location-gyeongnam" role="tab" data-toggle="tab">경남</a></li>
						<li role="presentation"><a href="#location-gyeongbuk" aria-controls="location-gyeongbuk" role="tab" data-toggle="tab">경북</a></li>
						<li role="presentation"><a href="#location-jeonnam" aria-controls="location-jeonnam" role="tab" data-toggle="tab">전남</a></li>
						<li role="presentation"><a href="#location-jeonbuk" aria-controls="location-jeonbuk" role="tab" data-toggle="tab">전북</a></li>
						<li role="presentation"><a href="#location-chungnam" aria-controls="location-chungnam" role="tab" data-toggle="tab">충남</a></li>
						<li role="presentation"><a href="#location-chungbuk" aria-controls="location-chungbuk" role="tab" data-toggle="tab">충북</a></li>
						<li role="presentation"><a href="#location-jeju" aria-controls="location-jeju" role="tab" data-toggle="tab">제주</a></li>
					</ul>
				</div>


				<div class="col-xs-8 tab-content overflow-scroll">

					<!-- 서울 -->
					<div role="tabpanel" class="tab-pane active" id="location-seoul">
						<ul class="location-medium">
							<li><input type="checkbox" id="seoul" value="서울"> <label for="seoul">서울전체</label></li>
							<li><input type="checkbox" id="seoul-gangnam" value="강남구"> <label for="seoul-gangnam">강남구</label></li>
							<li><input type="checkbox" id="seoul-gangdong" value="강동구"> <label for="seoul-gangdong">강동구</label></li>
							<li><input type="checkbox" id="seoul-gangbuk" value="강북구"> <label for="seoul-gangbuk">강북구</label></li>
							<li><input type="checkbox" id="seoul-gangseo" value="강서구"> <label for="seoul-gangseo">강서구</label></li>
							<li><input type="checkbox" id="seoul-gwanak" value="관악구"> <label for="seoul-gwanak">관악구</label></li>
							<li><input type="checkbox" id="seoul-gwangjin" value="광진구"> <label for="seoul-gwangjin">광진구</label></li>
							<li><input type="checkbox" id="seoul-guro" value="구로구"> <label for="seoul-guro">구로구</label></li>
							<li><input type="checkbox" id="seoul-geumcheon" value="금천구"> <label for="seoul-geumcheon">금천구</label></li>
							<li><input type="checkbox" id="seoul-nowon" value="노원구"> <label for="seoul-nowon">노원구</label></li>
							<li><input type="checkbox" id="seoul-dobong" value="도봉구 "> <label for="seoul-dobong">도봉구</label></li>
							<li><input type="checkbox" id="seoul-dongdaemun" value="동대문구"> <label for="seoul-dongdaemun">동대문구</label></li>
							<li><input type="checkbox" id="seoul-dongjak" value="동작구"> <label for="seoul-dongjak">동작구</label></li>
							<li><input type="checkbox" id="seoul-mapo" value="마포구"> <label for="seoul-mapo">마포구</label></li>
							<li><input type="checkbox" id="seoul-seodaemun" value="서대문구"> <label for="seoul-seodaemun">서대문구</label></li>
							<li><input type="checkbox" id="seoul-seocho" value="서초구"> <label for="seoul-seocho">서초구</label></li>
							<li><input type="checkbox" id="seoul-seongdong" value="성동구"> <label for="seoul-seongdong">성동구</label></li>
							<li><input type="checkbox" id="seoul-seongbuk" value="성북구"> <label for="seoul-seongbuk">성북구</label></li>
						</ul>
					</div>

					<!-- 경기 -->
					<div role="tabpanel" class="tab-pane" id="location-gyeonggi">
						<ul class="location-medium">
							<li><input type="checkbox" id="gyeonggi" value="경기"> <label for="gyeonggi">경기전체</label></li>
							<li><input type="checkbox" id="gyeonggi-gapyeong" value="가평군"> <label for="gyeonggi-gapyeong">가평군</label></li>
							<li><input type="checkbox" id="gyeonggi-goyang" value="고양시"> <label for="gyeonggi-goyang">고양시</label></li>
							<li><input type="checkbox" id="gyeonggi-" value=""> <label for="gyeonggi-"></label></li>
						</ul>
					</div>

					<!-- 인천 -->
					<div role="tabpanel" class="tab-pane" id="location-incheon">
						<ul class="location-medium">
							<li><input type="checkbox" id="incheon" value="인천"> <label for="incheon">인천전체</label></li>
						</ul>
					</div>

					<!-- 부산 -->
					<div role="tabpanel" class="tab-pane" id="location-busan">
						<ul class="location-medium">
							<li><input type="checkbox" id="busan" value="부산"> <label for="busan">부산전체</label></li>
						</ul>
					</div>

					<!-- 대구 -->
					<div role="tabpanel" class="tab-pane" id="location-daegu">
						<ul class="location-medium">
							<li><input type="checkbox" id="daegu" value="대구"> <label for="daegu">대구전체</label></li>
						</ul>
					</div>

					<!-- 광주 -->
					<div role="tabpanel" class="tab-pane" id="location-gwangju">
						<ul class="location-medium">
							<li><input type="checkbox" id="gwangju" value="광주"> <label for="gwangju">광주전체</label></li>
						</ul>
					</div>

					<!-- 대전 -->
					<div role="tabpanel" class="tab-pane" id="location-daejeon">
						<ul class="location-medium">
							<li><input type="checkbox" id="daejeon" value="대전"> <label for="daejeon">대전전체</label></li>
						</ul>
					</div>

					<!-- 울산 -->
					<div role="tabpanel" class="tab-pane" id="location-ulsan">
						<ul class="location-medium">
							<li><input type="checkbox" id="ulsan" value="울산"> <label for="ulsan">울산전체</label></li>
						</ul>
					</div>

					<!-- 세종 -->
					<div role="tabpanel" class="tab-pane" id="location-sejong">
						<ul class="location-medium">
							<li><input type="checkbox" id="sejong" value="세종"> <label for="sejong">세종전체</label></li>
						</ul>
					</div>

					<!-- 강원 -->
					<div role="tabpanel" class="tab-pane" id="location-gangwon">
						<ul class="location-medium">
							<li><input type="checkbox" id="gangwon" value="강원"> <label for="gangwon">강원전체</label></li>
						</ul>
					</div>

					<!-- 경남 -->
					<div role="tabpanel" class="tab-pane" id="location-gyeongnam">
						<ul class="location-medium">
							<li><input type="checkbox" id="gyeongnam" value="경남"> <label for="gyeongnam">경남전체</label></li>
						</ul>
					</div>

					<!-- 경북 -->
					<div role="tabpanel" class="tab-pane" id="location-gyeongbuk">
						<ul class="location-medium">
							<li><input type="checkbox" id="gyeongbuk" value="경북"> <label for="gyeongbuk">경북전체</label></li>
						</ul>
					</div>

					<!-- 전남 -->
					<div role="tabpanel" class="tab-pane" id="location-jeonnam">
						<ul class="location-medium">
							<li><input type="checkbox" id="jeonnam" value="전남"> <label for="jeonnam">전남전체</label></li>
						</ul>
					</div>

					<!-- 전북 -->
					<div role="tabpanel" class="tab-pane" id="location-jeonbuk">
						<ul class="location-medium">
							<li><input type="checkbox" id="jeonbuk" value="전북"> <label for="jeonbuk">전북전체</label></li>
						</ul>
					</div>

					<!-- 충남 -->
					<div role="tabpanel" class="tab-pane" id="location-chungnam">
						<ul class="location-medium">
							<li><input type="checkbox" id="chungnam" value="충남"> <label for="chungnam">충남전체</label></li>
						</ul>
					</div>

					<!-- 충북 -->
					<div role="tabpanel" class="tab-pane" id="location-chungbuk">
						<ul class="location-medium">
							<li><input type="checkbox" id="chungbuk" value="충북"> <label for="chungbuk">충북전체</label></li>
						</ul>
					</div>

					<!-- 제주 -->
					<div role="tabpanel" class="tab-pane" id="location-jeju">
						<ul class="location-medium">
							<li><input type="checkbox" id="jeju" value="제주"> <label for="jeju">제주전체</label></li>
						</ul>
					</div>

				</div>
			</div>
		</div>

		<div role="tabpanel" class="tab-pane" id="game-style-name">
			<input type="text" id="ipt-keyword" value="" placeholder="게임 검색">
			<hr>
			<div class="row">
				<div class="col-xs-4 border-right overflow-scroll">
					<ul id="game-style">
						<li role="presentation" class="active"><a href="#style-strategy" aria-controls="style-strategy" role="tab" data-toggle="tab">전략</a></li>
						<li role="presentation"><a href="#style-abstract" aria-controls="style-abstract" role="tab" data-toggle="tab">추상</a></li>
						<li role="presentation"><a href="#style-collectible" aria-controls="style-collectible" role="tab" data-toggle="tab">컬렉터블</a></li>
						<li role="presentation"><a href="#style-family" aria-controls="style-family" role="tab" data-toggle="tab">가족</a></li>
						<li role="presentation"><a href="#style-kids" aria-controls="style-kids" role="tab" data-toggle="tab">어린이</a></li>
						<li role="presentation"><a href="#style-party" aria-controls="style-party" role="tab" data-toggle="tab">파티</a></li>
						<li role="presentation"><a href="#style-theme" aria-controls="style-theme" role="tab" data-toggle="tab">테마</a></li>
						<li role="presentation"><a href="#style-wargame" aria-controls="style-wargame" role="tab" data-toggle="tab">워게임</a></li>
						<li role="presentation"><a href="#style-korean" aria-controls="style-korean" role="tab" data-toggle="tab">한글</a></li>
						<li role="presentation"><a href="#style-card" aria-controls="style-card" role="tab" data-toggle="tab">카드</a></li>
						<li role="presentation"><a href="#style-economy" aria-controls="style-economy" role="tab" data-toggle="tab">경제</a></li>
						<li role="presentation"><a href="#style-cooperation" aria-controls="style-cooperation" role="tab" data-toggle="tab">협력</a></li>
						<li role="presentation"><a href="#style-puzzle" aria-controls="style-puzzle" role="tab" data-toggle="tab">퍼즐</a></li>
						<li role="presentation"><a href="#style-adventure" aria-controls="style-adventure" role="tab" data-toggle="tab">모험</a></li>
						<li role="presentation"><a href="#style-dice" aria-controls="style-dice" role="tab" data-toggle="tab">주사위</a></li>
					</ul>
				</div>

				<div class="col-xs-8 tab-content overflow-scroll">
					<!-- 전략 -->
					<div role="tabpanel" class="tab-pane active" id="style-strategy">
						<ul class="game-name">
							<li><input type="checkbox" id="strategy" value="전략"> <label for="strategy">전략전체</label></li>
							<li><input type="checkbox" id="game-terapoming"> <label for="game-terapoming">테라포밍 마스</label></li>
						</ul>
					</div>

					<!-- 추상 -->
					<div role="tabpanel" class="tab-pane" id="style-abstract">
						<ul class="game-name">
							<li><input type="checkbox" id="abstract"> <label for="abstract">추상전체</label></li>
						</ul>
					</div>

					<!-- 컬렉터블 -->
					<div role="tabpanel" class="tab-pane" id="style-collectible">
						<ul class="game-name">
							<li><input type="checkbox" id="collectible"> <label for="collectible">컬렉터블전체</label></li>
						</ul>
					</div>

					<!-- 가족 -->
					<div role="tabpanel" class="tab-pane" id="style-family">
						<ul class="game-name">
							<li><input type="checkbox" id="family"> <label for="family">가족전체</label></li>
						</ul>
					</div>

					<!-- 어린이 -->
					<div role="tabpanel" class="tab-pane" id="style-kids">
						<ul class="game-name">
							<li><input type="checkbox" id="kids"> <label for="kids">어린이전체</label></li>
						</ul>
					</div>

					<!-- 파티 -->
					<div role="tabpanel" class="tab-pane" id="style-party">
						<ul class="game-name">
							<li><input type="checkbox" id="party"> <label for="party">파티전체</label></li>
						</ul>
					</div>

					<!-- 테마 -->
					<div role="tabpanel" class="tab-pane" id="style-theme">
						<ul class="game-name">
							<li><input type="checkbox" id="theme"> <label for="theme">테마전체</label></li>
						</ul>
					</div>

					<!-- 워게임 -->
					<div role="tabpanel" class="tab-pane" id="style-wargame">
						<ul class="game-name">
							<li><input type="checkbox" id="wargame"> <label for="wargame">워게임전체</label></li>
						</ul>
					</div>

					<!-- 한글 -->
					<div role="tabpanel" class="tab-pane" id="style-korean">
						<ul class="game-name">
							<li><input type="checkbox" id="korean"> <label for="korean">한글전체</label></li>
						</ul>
					</div>

					<!-- 카드 -->
					<div role="tabpanel" class="tab-pane" id="style-card">
						<ul class="game-name">
							<li><input type="checkbox" id="card"> <label for="card">카드전체</label></li>
						</ul>
					</div>

					<!-- 경제 -->
					<div role="tabpanel" class="tab-pane" id="style-economy">
						<ul class="game-name">
							<li><input type="checkbox" id="economy"> <label for="economy">경제전체</label></li>
						</ul>
					</div>

					<!-- 협력 -->
					<div role="tabpanel" class="tab-pane" id="style-cooperation">
						<ul class="game-name">
							<li><input type="checkbox" id="cooperation"> <label for="cooperation">협력전체</label></li>
						</ul>
					</div>

					<!-- 퍼즐 -->
					<div role="tabpanel" class="tab-pane" id="style-puzzle">
						<ul class="game-name">
							<li><input type="checkbox" id="puzzle"> <label for="puzzle">퍼즐전체</label></li>
						</ul>
					</div>

					<!-- 모험 -->
					<div role="tabpanel" class="tab-pane" id="style-adventure">
						<ul class="game-name">
							<li><input type="checkbox" id="adventure"> <label for="adventure">모험전체</label></li>
						</ul>
					</div>

					<!-- 주사위 -->
					<div role="tabpanel" class="tab-pane" id="style-dice">
						<ul class="game-name">
							<li><input type="checkbox" id="dice"> <label for="dice">주사위전체</label></li>
						</ul>
					</div>

				</div>
			</div>
		</div>

	</div>
</div>


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

// 시도 코드에 맞는 시군구 리스트 불러오기
/* 
	$('#location-big').on('click', 'li', function() {
		var sidoCode = $(this).data('sido_no');
		var sidoName = $(this).data('sido_name');
		console.log(sidoCode);
		console.log(sidoName);
		
		$('.loca-' + sidoCode).empty();
		
		$.ajax({
			url: '${pageContext.request.contextPath}/matching/tabContentSigunguList',
			type: 'post',
			data: { sidoCode: sidoCode },
			success: function(sigunguList) {
				console.log(sigunguList);
				for (var i = 0; i < sigunguList.length; i++) {
					sigunguTabpanel(sigunguList[i]);
				}
			},
			error: function(XHR, status, error) {
				console.log(status + ' : ' + error);
			}
		});
	});
	
	function sigunguTabpanel(sigunguVo) {
		var sigunguLi = '<li><input type="checkbox" id="seoul-' + sigunguVo.sigunguCode + '" value="' + sigunguVo.sidoName + ' ' + sigunguVo.sigunguName + '"><label for="seoul-' + sigunguVo.sigunguCode + '">' + sigunguVo.sigunguName + '</label></li>';
		$('.loca-' + sigunguVo.sidoCode + '').append(sigunguLi);
	};
 */
// -- 시도 코드에 맞는 시군구 리스트 불러오기 --

</script>