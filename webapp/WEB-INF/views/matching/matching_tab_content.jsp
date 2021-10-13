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
						<c:forEach items="${tabContent.sidoList}" var="sidoVo" varStatus="status">
							<li class="location-li" role="presentation" data-sido_no="${sidoVo.sidoCode}" data-sido_name="${sidoVo.sidoName}"><a href="#location-${sidoVo.sidoCode}" aria-controls="location-${sidoVo.sidoCode}" role="tab" data-toggle="tab">${sidoVo.sidoName}</a></li>
						</c:forEach>
					</ul>
				</div>

				<div id="location-tabpanel" class="col-xs-8 tab-content overflow-scroll">
					<c:forEach items="${tabContent.sidoList}" var="sidoVo" varStatus="status">
						<div role="tabpanel" class="tab-pane" id="location-${sidoVo.sidoCode}">
							<ul class="location-medium loca-${sidoVo.sidoCode}">
							</ul>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<div role="tabpanel" class="tab-pane" id="game-style-name">
			<input type="text" id="ipt-keyword" value="" placeholder="게임 검색">
			<hr>
			<div class="row">
				<div class="col-xs-4 border-right overflow-scroll">
					<ul id="game-style">
						<c:forEach items="${tabContent.themeList}" var="themeVo" varStatus="status">
							<li class="theme-li" role="presentation" data-theme_no="${themeVo.themeNo}" data-theme_name="${themeVo.themeName}"><a href="#theme-${themeVo.themeNo}" aria-controls="theme-${themeVo.themeNo}" role="tab" data-toggle="tab">${themeVo.themeName}</a></li>
						</c:forEach>
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
	$('#location-big').on('click', 'li', function() {
		var sidoCode = $(this).data('sido_no');
		var sidoName = $(this).data('sido_name');
		console.log(sidoCode);
		console.log(sidoName);
		
		$('.loca-' + sidoCode + '').empty();
		
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
// -- 시도 코드에 맞는 시군구 리스트 불러오기 --

</script>