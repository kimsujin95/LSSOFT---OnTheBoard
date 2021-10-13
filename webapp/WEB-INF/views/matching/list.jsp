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

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/matching/matching.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/matching/matching_tab_content.css" type="text/css">

<title>MATCHING</title>
</head>

<body>

	<!-- HEADER -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- // HEADER -->

	<!-- CONTENT -->
	<div id="content" class="container">
		<!-- SUB TITLE -->
		<div class="container sub-container">
			<div class="subtitle clearfix">
				<div class="context1 font-size-24">매칭게시판</div>
				<div class="context2 clearfix">
					<ul>
						<li><a href="#">매칭게시판</a></li>
						<li class="last-li"><a href="#">매칭리스트</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // SUB TITLE -->

		<!-- SELECT OPTION -->
		<div id="select-option" class="container">
			<!-- TAB CONTENT -->
			<c:import url="/WEB-INF/views/matching/matching_tab_content.jsp"></c:import>
			<!-- // TAB CONTENT -->

			<div>
				<table id="select-option-checkbox">
					<colgroup>
						<col width="320px">
						<col width="550px">
						<col width="330px">
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
							<td><input class="margin-left-none" type="checkbox" id="male" value="남" name="gender-limit"> <label for="male">남</label> <input type="checkbox" id="female" value="여" name="gender-limit"> <label for="female">여</label> <input type="checkbox" id="sex-none" value="성별무관" name="gender-limit"> <label for="sex-none">무관</label></td>
							<td><input class="margin-left-none" type="checkbox" id="10s" value="10대"> <label for="10s">10대</label> <input type="checkbox" id="20s" value="20대"> <label for="20s">20대</label> <input type="checkbox" id="30s" value="30대"> <label for="30s">30대</label> <input type="checkbox" id="40s" value="40대"> <label for="40s">40대</label> <input type="checkbox" id="50s" value="50대"> <label for="50s">50대</label> <input type="checkbox" id="age-none" value="나이무관"> <label for="age-none">무관</label></td>
							<td><input class="margin-left-none" type="checkbox" id="matching-ing" value="매칭중"> <label for="matching-ing">매칭중</label> <input type="checkbox" id="matching-end" value="매칭완료"> <label for="matching-end">매칭완료</label></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="select-option-list" class="row">
				<div id="option-reset" class="col-xs-1">
					<button class="btn-reset">
						선택초기화 <img src="${pageContext.request.contextPath}/assets/images/matching/btn-reset.png" alt="option-reset-btn">
					</button>
				</div>
				<div id="y-select-opt" class="col-xs-11">
				</div>
			</div>
		</div>
		<!-- // SELECT OPTION -->

		<br>
		<br>
		<br>

		<!-- 매칭글 리스트 -->
		<div class="container padding-none">
			<table id="table-matchingList">
				<colgroup>
					<col width="125px">
					<col width="115px">
					<col width="335px">
					<col width="185px">
					<col width="75px">
					<col width="75px">
					<col width="155px">
					<col width="145px">
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
				<tbody id="listHtml">
				<!-- javascript List -->
				</tbody>
			</table>
		</div>

		<div id="paging-wrap" class="text-center">
			<div id="paging">
				<ul>
					<li>«</li>
					<li class="li-pd">‹</li>
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
					<li>6</li>
					<li>7</li>
					<li class="li-pd">›</li>
					<li>»</li>
				</ul>
			</div>
		</div>
		<br>
		<c:if test="${authUser != null}">
			<div class="text-center">
				<a href="${pageContext.request.contextPath}/matching/writeForm"><button type="button" class="btn-white">매칭글 등록</button></a>
			</div>
		</c:if>
	</div>
	<!-- // CONTENT -->

	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- // FOOTER -->

</body>

<script>

// 매칭 리스트

	// ready - 페이지 출력 전에 실행시킴
	$(document).ready(function() {
		fetch();
	});
	
	// ready 내부 ajax
	function fetch() {
		$.ajax({
			url: '${pageContext.request.contextPath}/matching/list',
			type: 'post',
			success: function(matchingListMap) {
				console.log('컨트롤러 방문해서 리스트 갖고 오기 성공');
				// 리스트 반복문
				for (var i = 0; i < matchingListMap.matchingList.length; i++) {
					render(matchingListMap.matchingList[i], matchingListMap.matchingMemberList[i]);
				}
			},
			error: function(XHR, status, error) {
				console.log(status + ' : ' + error);
			}
		});
	};
	
	// ajax에 사용할 반복문 출력 HTML코드
	function render(matchingList, matchingMemberList) {
		var listHtml = '<tr id="readMatching" onClick="location.href=\'${pageContext.request.contextPath}/matching/read?no=' + matchingList.matchingNo + '\'">'
							+ '<td>' + matchingList.matchingStatus + '</td>'
							+ '<td>' + matchingList.matchingHits + '</td>'
							+ '<td>' + matchingList.matchingTitle + '</td>'
							+ '<td>' + matchingList.gameNameKo + '</td>'
							+ '<td>' + matchingMemberList + '/' + matchingList.matchingPeople + '</td>'
							+ '<td>' + matchingList.matchingPermissionGender + '</td>'
							+ '<td>' + matchingList.sidoName + '\t' + matchingList.sigunguName + '</td>'
							+ '<td>' + matchingList.matchingDate + '</td>'
						+ '</tr>';

		$('#listHtml').append(listHtml);
	};
	
	// -- 매칭 리스트(페이지 출력 전에 실행시킴) --

// 옵션 선택 값 추가/삭제
	$('input[type="checkbox"]').on('click', function (){
		var inputClick = $(this).val();
		
		if ($(this).is(':checked')) {
			console.log(inputClick);
			$('#y-select-opt').append('<button class="btn-selectDel" data-value="' + inputClick + '">' + inputClick + '<img src="${pageContext.request.contextPath}/assets/images/matching/btn-X.png"></button>');
		} else {
			$(this).removeAttr('checked');
			console.log('selectDel');
			$('[data-value="' + inputClick + '"]').remove();
		}
		
		// 선택된 옵션에 맞는 리스트 출력
		var keyword = new Array();
		
		$('input').each(function() {
			if ($(this).is(':checked')) {
				var checked = $(this).val();
				keyword.push(checked);
			}
		});
		
		console.log('keyword= ' + keyword);
		
		$('#listHtml').html('');
		$.ajax({
			url: '${pageContext.request.contextPath}/matching/list',
			type: 'post',
			data: { keyword: keyword },
			success: function(matchingListMap) {
				console.log('컨트롤러 방문해서 검색 리스트 갖고 오기 성공');
				
				// 리스트 반복문
				for (var i = 0; i < matchingListMap.matchingList.length; i++) {
					render(matchingListMap.matchingList[i], matchingListMap.matchingMemberList[i]);
				}
			},
			error: function(XHR, status, error) {
				console.log(status + ' : ' + error);
			}
		});
		// -- 선택된 옵션에 맞는 리스트 출력 --
	});
// -- 옵션 선택 값 추가/삭제 --
	
	// 옵션 선택 리스트에서 클릭으로 삭제
	$('#y-select-opt').on('click', '.btn-selectDel', function() {
		console.log('btn-selectDel');
		var selectDel = $(this).data('value');
		console.log(selectDel);
		$('input[type="checkbox"][value="' + selectDel + '"]').removeAttr('checked');
		$(this).remove();
	});
	
	// 선택초기화
	$('.btn-reset').on('click', function() {
		$('#y-select-opt').empty();
		$('input[type="checkbox"]').removeAttr('checked');
		
		$('#listHtml').empty();
		fetch();
	});
// -- 옵션 선택 값 추가/삭제 --

// 성별 제한 체크박스 중복 선택 해제
	/* $('input[type="checkbox"][name="gender-limit"]').on('click', function () {
		if($(this).prop('checked')){
			$('input[type="checkbox"][name="gender-limit"]').prop('checked', false);
			
			$(this).prop('checked', true);
		};
	}); */
// -- 성별 제한 체크박스 중복 선택 해제 --

</script>

</html>