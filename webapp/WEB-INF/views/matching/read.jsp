<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.css">

<!-- jQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.js"></script>

<!-- SEWWT ALERT -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/matching/matching.css" type="text/css">

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
						<li class="last-li"><a href="#">매칭글</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // SUB TITLE -->
		<div id="content-title">
			[ ${readInfo.matchingVo.gameNameKo} ] ${readInfo.matchingVo.matchingTitle}
			<br>
			${readInfo.writerInfo.userNickname} (${readInfo.writerInfo.userAge}
			<c:choose>
				<c:when test="${readInfo.writerInfo.userGender eq 'male'}">/ 남)</c:when>
				<c:otherwise>/ 여)</c:otherwise>
			</c:choose>
			<br>
			<div class="clearfix">
				<div class="c-t-float-l">${readInfo.matchingVo.matchingRegDate}&nbsp;조회수 ${readInfo.matchingVo.matchingHits}</div>
				<div class="c-t-float-r">
					<span>[URL복사]</span>
				</div>
			</div>
		</div>
		<hr>

		<div class="row">
			<div id="game-img-info" class="col-md-3 text-center">
				<img src="${pageContext.request.contextPath}/assets/images/matching/할리갈리.jpg" alt="게임값" width="100%">
				<br>
				<br>
				<a href="#">${readInfo.matchingVo.gameNameKo}</a>
			</div>
			<div class="col-md-3 border-right">
				<table id=table-game-info>
					<colgroup>
						<col width="100px">
						<col width="230px">
					</colgroup>
					<tr>
						<th>테마</th>
						<td>${readInfo.matchingVo.themeName}</td>
					</tr>
					<tr>
						<th>날짜</th>
						<td>${readInfo.matchingVo.matchingDate}</td>
					</tr>
					<tr>
						<th>시간</th>
						<td>${readInfo.matchingVo.matchingTime}</td>
					</tr>
					<tr>
						<th>지역</th>
						<td>${readInfo.matchingVo.sidoName}&nbsp;${readInfo.matchingVo.sigunguName}</td>
					</tr>
					<tr>
						<th>성별제한</th>
						<td>${readInfo.matchingVo.matchingPermissionGender}</td>
					</tr>
					<tr>
						<th>나이제한</th>
						<td>작업안됨</td>
					</tr>
					<tr class="border-none">
						<th>인원<br>(<span id="joinMatchingMember">${readInfo.matchingVo.matchingMember}</span>/${readInfo.matchingVo.matchingPeople})
						</th>
						<td id="addMatchingMember">
							<c:forEach items="${readInfo.matchingMemberInfoList}" var="userVo" varStatus="status">
								<div data-no="${userVo.userNo}">${userVo.userNickname} / ${userVo.userAge}<c:choose>
									<c:when test="${userVo.userGender eq 'male'}">/ 남</c:when>
									<c:otherwise>/ 여</c:otherwise>
								</c:choose>
								<c:if test="${readInfo.writerInfo.userNo eq userVo.userNo}">
									<img id="img-crown" src="${pageContext.request.contextPath}/assets/images/matching/read-crown.png">
								</c:if>
								</div>
							</c:forEach>
						</td>
					</tr>
				</table>
			</div>

			<div id="content-content" class="col-md-6">${readInfo.matchingVo.matchingContent}</div>
		</div>
		<div id="read-btn" class="row">
			<div class="col-md-3 text-center">
				<c:if test="${readInfo.writerInfo.userNo ne authUser.userNo && not empty authUser && readInfo.matchingVo.matchingStatus eq '매칭중'}">
					<c:if test="${readInfo.matchingVo.matchingMember ne readInfo.matchingVo.matchingPeople}">
						<button id="btn-joinMatching" class="btn-white" data-user_no="${authUser.userNo}" data-matching_no="${readInfo.matchingVo.matchingNo}" data-now_member="${readInfo.matchingVo.matchingMember}" data-total_member="${readInfo.matchingVo.matchingPeople}">참가신청</button>
					</c:if>
					<button id="btn-outMatching"  class="btn-red" data-user_no="${authUser.userNo}" data-matching_no="${readInfo.matchingVo.matchingNo}">참가취소</button>
				</c:if>
			</div>
			<div class="col-md-4 text-right">
				<c:if test="${readInfo.writerInfo.userNo eq authUser.userNo}">
					<c:if test="${readInfo.matchingVo.matchingStatus eq '매칭중'}">
						<button id="btn-statusComplete" class="btn-red" data-no="${readInfo.matchingVo.matchingNo}">매칭완료</button>
					</c:if>
					<c:if test="${readInfo.matchingVo.matchingStatus eq '매칭완료'}">
						<a href="${pageContext.request.contextPath}/store/storelist"><button class="btn-blue">예약하기</button></a>
					</c:if>
				</c:if>
			</div>
			<div class="col-md-5 text-right">
				<c:if test="${readInfo.writerInfo.userNo eq authUser.userNo}">
					<a href="${pageContext.request.contextPath}/matching/modifyForm"><button class="btn-blue">수정</button></a>
					<button id="btn-del" class="btn-white">삭제</button>
				</c:if>
				<a href="${pageContext.request.contextPath}/matching/main"><button class="btn-white">목록</button></a>
			</div>
		</div>
		<hr>

		<div>댓글</div>
		<br>

		<!-- 현 게시글의 댓글 리스트 -->
		<div id="comment" class="row">
			<c:forEach items="${readInfo.commentList}" var="commentVo" varStatus="status">
			<div class="row comment-all">
				<div class="col-md-1 comment-img">
					<img src="${pageContext.request.contextPath}/assets/images/matching/bonobono.png" alt="" width="45%">'
				</div>
				<div class="col-md-11 comment-1">
					<div class="clearfix">
						<div class="comment">
							<strong>[ ${commentVo.userNickname} <c:if test="${readInfo.writerInfo.userNo eq commentVo.userNo}"><span class="text-sm-red">작성자</span></c:if> ]</strong><br>
							${commentVo.commentContent}
						</div>
					</div>
					<div class="comment-button">
						<button class="btn btn-xs">수정</button>
						<button class="btn btn-xs">삭제</button>
					</div>
					<div class="comment-2">
						${commentVo.commentRegDate}&nbsp;&nbsp;&nbsp;
						<c:if test="${authUser != null}">
						<span data-comment_no="${commentVo.commentNo}" class="cursor-pointer btn-comment-reply">답글쓰기</span>
						</c:if>
					</div>
				</div>
			</div>
			<div class="input-reply-${commentVo.commentNo}">
			</div>
			<div class="reply-box-${commentVo.commentNo}">
			</div>
			</c:forEach>
		</div>
		<!-- // 현 게시글의 댓글 리스트 -->

		<%-- <div id="comment-answer" class="row">
			<div class="col-md-1"></div>
			<div class="col-md-1 comment-img">
				<img src="${pageContext.request.contextPath}/assets/images/matching/bonobono.png" alt="" width="45%">
			</div>
			<div class="col-md-10 comment-1">
				<div class="clearfix">
					<div class="comment">
						<strong>[ 할갈man <span>작성자</span> ]
						</strong>
						<br>
						<strong>할갈woman</strong> 가능합니다^^
					</div>
				</div>
				<div class="comment-button">
					<button class="btn btn-xs">수정</button>
					<button class="btn btn-xs">삭제</button>
				</div>
				<div class="comment-2">
					2021. 11. 11. 12:22 &nbsp;&nbsp; <span class="cursor-pointer">답글쓰기</span>
				</div>
			</div>
		</div> --%>

		<br>
		<br>

		<!-- 댓글 작성 textarea -->
		<c:if test="${authUser != null}">
			<div id="comment-write">
				<div class="comment-write-1">
					<strong>${authUser.userNickname}</strong>
				</div>
				<textarea name="commentContent" id="comment-write-text" placeholder="댓글을 남겨주세요."></textarea>
				<div class="comment-write-2">
					<button id="btnCommentWrite" class="cursor-pointer" data-user_no="${authUser.userNo}" data-matching_no="${readInfo.matchingVo.matchingNo}">등록</button>
				</div>
			</div>
		</c:if>
	</div>
	<!-- // CONTENT -->

	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- // FOOTER -->
	<input id="matchingNoValue" type="hidden" value="${readInfo.matchingVo.matchingNo}">
</body>

<script>

// 매칭 참가 버튼 클릭: 참가자 리스트 출력
$('#btn-joinMatching').on('click', function(){
	var userNo = $(this).data("user_no");
	var matchingNo = $(this).data("matching_no");
	console.log(userNo);
	console.log(matchingNo);
	
	

	var matchingGroupVo = {
			userNo: userNo,
			matchingNo: matchingNo
	};

	console.log(matchingGroupVo);

	$.ajax({
		url: '${pageContext.request.contextPath}/matching/joinMatching',
		type: 'post',
		data: matchingGroupVo,
		success: function(joinMatchingInfo){
			console.log(joinMatchingInfo.userInfo);
			renderJoin(joinMatchingInfo.userInfo);
			
			console.log(joinMatchingInfo.matchingMember);
			$('#joinMatchingMember').text(joinMatchingInfo.matchingMember);
		},
		error: function(XHR, status, error) {
			console.log(status + ' : ' + error);
		}
		
	});
	var nowMember = $(this).data("now_member");
	console.log(nowMember)
	var totalMember = $(this).data("total_member");
	console.log(totalMember);
});

function renderJoin(userInfo) {
	if (userInfo.userGender === 'male') {
		var userGender = '남';
	} else {
		var userGender = '여';
	}
	var str = '<div data-no="' + userInfo.userNo + '">' + userInfo.userNickname + ' / ' + userInfo.userAge + ' / ' + userGender + '</div>';
	
	$('#addMatchingMember').append(str);
}
// -- 매칭 참가 버튼 클릭: 참가자 리스트 출력 --

// 매칭참가 취소 버튼 클릭: 참가자 리스트에서 삭제
$('#btn-outMatching').on('click', function() {
	var userNo = $(this).data("user_no");
	var matchingNo = $(this).data("matching_no");
	
	console.log(userNo);
	console.log(matchingNo);
	
	var matchingGroupVo = {
			userNo: userNo,
			matchingNo: matchingNo
	};
	console.log(matchingGroupVo);
	
	$.ajax({
		url: '${pageContext.request.contextPath}/matching/outMatching',
		type: 'post',
		data: matchingGroupVo,
		success: function(matchingMember) {
			$('[data-no=' + userNo + ']').remove();
			$('#joinMatchingMember').text(matchingMember);
		},
		error: function(XHR, status, error) {
			console.log(status + ' : ' + error);
		}
	});
});
// -- 매칭참가 취소 버튼 클릭: 참가자 리스트에서 삭제 --

// 매칭완료 클릭 - 매칭완료 상태로 변경
$('#btn-statusComplete').on('click', function() {
	
	var matchingNo = $(this).data('no');
	console.log(matchingNo);
	
	swal({
		title: '매칭 상태를 변경 하시겠습니까?',
		text: '매칭 상태 변경 확인',
		icon: 'success',
		closeOnClickOutside: false,
		
		buttons: {
			cancle: {
				text: '취소',
				value: false,
				className: 'btn btn-danger'
			},
			confirm: {
				text: '매칭완료',
				value: true,
				className: 'btn btn-primary'
			}
		}
	}).then((result) => {
		if(result === true) {
			
			$.ajax({
				url: '${pageContext.request.contextPath}/matching/statusComplete',
				type: 'post',
				data: { matchingNo: matchingNo },
				success: function(statusChange) {
					if (statusChange === 1) {
						console.log(statusChange + '매칭상태 변경 성공');
					} else {
						console.log(statusChange + '매칭상태 변경 실패');
					}
				},
				error: function(XHR, status, error) {
					console.log(status + ' : ' + error);
				}
			});
			
			location.href = '${pageContext.request.contextPath}/matching/read?no=' + matchingNo;
		}
	});
});
// -- 매칭완료 클릭 - 매칭완료 상태로 변경 --

// 댓글 등록
$('#btnCommentWrite').on('click', function() {
	var userNo = $(this).data('user_no');
	console.log(userNo);
	var matchingNo = $(this).data('matching_no');
	console.log(matchingNo);
	var commentContent = $('[name="commentContent"]').val();
	console.log(commentContent);
	
	var commentVo = {
			userNo: userNo,
			matchingNo: matchingNo,
			commentContent: commentContent
	}
	
	$.ajax({
		url: '${pageContext.request.contextPath}/matching/commentWrite',
		type: 'post',
		data: commentVo,
		success: function(commentInfo) {
			console.log(commentInfo);
			commentHTML(commentInfo);
			$('#comment-write-text').val('');
		},
		error: function(XHR, status, error) {
			console.log(status + ' : ' + error);
		}
	});
	
});

function commentHTML(commentInfo) {
	var commentSTR = '<div class="col-md-1 comment-img">'
					+ 	'<img src="${pageContext.request.contextPath}/assets/images/matching/bonobono.png" alt="" width="45%">'
					+ '</div>'
					+ '<div class="col-md-11 comment-1">'
					+ 	'<div class="clearfix">'
					+ 		'<div class="comment">'
					+ 		'<strong>[ ' + commentInfo.userNickname + ' <c:if test="${readInfo.writerInfo.userNo eq authUser.userNo}"><span class="text-sm-red">작성자</span></c:if> ]</strong><br>'
					+ 		commentInfo.commentContent
					+ 		'</div>'
					+ 	'</div>'
					+ 	'<div class="comment-button">'
					+ 		'<button class="btn btn-xs">수정</button>'
					+ 		'<button class="btn btn-xs">삭제</button>'
					+ 	'</div>'
					+ 	'<div class="comment-2">'
					+ 		commentInfo.commentRegDate + '&nbsp;&nbsp;<span data-comment_no="' + commentInfo.commentNo + '" class="cursor-pointer btn-comment-reply">답글쓰기</span>'
					+ 	'</div>'
					+ '</div>'
					+ '<div class="reply-box-' + commentInfo.commentNo +'">'
					+ '</div>';
	
	$('#comment').append(commentSTR);
}
// -- 댓글 등록 --

// 답글 등록
$('#comment').on('click', '.btn-comment-reply', function() {
	var commentNo = $(this).data('comment_no');
	console.log(commentNo);
	
	var replyBox = '<div class="reply-box-empty">'
				+	'<div>'
				+ 		'<strong>${authUser.userNickname}</strong>'
				+ 		'<textarea class="comment-reply-text" placeholder="답글을 남겨주세요."></textarea>'
				+	'</div>'
				+ 	'<div class="reply-box-btn">'
				+ 		'<button class="btnReplyWrite" class="cursor-pointer" data-user_no="${authUser.userNo}">등록</button>'
				+ 	'</div>'
				+ '</div>';
	
	$('.reply-box-empty').remove();
	$('.reply-box-' + commentNo).append(replyBox);
	
	$('.reply-box-' + commentNo).on('click', '.btnReplyWrite', function() {
		console.log('답글등록버튼');
		var replyContent = $('.comment-reply-text').val();
		console.log(replyContent);
		console.log(commentNo);
		var userNo = $(this).data('user_no');
		console.log(userNo);
		
		var replyVo = {
				commentNo: commentNo,
				userNo: userNo,
				replyContent: replyContent
		}
		
		$.ajax({
			url: '${pageContext.request.contextPath}/matching/replyWrite',
			type: 'post',
			data: replyVo,
			success: function(replyInfo) {
				console.log(replyInfo);
				replyHTML(replyInfo);
			},
			error: function(XHR, status, error) {
				console.log(status + ' : ' + error);
			}
		});
	});
});

function replyHTML(replyInfo) {
	var replySTR = '<div class="col-md-1"></div>'
				+ 		'<div class="col-md-1 comment-img">'
				+ 			'<img src="${pageContext.request.contextPath}/assets/images/matching/bonobono.png" alt="" width="45%">'
				+ 		'</div>'
				+ 		'<div class="col-md-10 comment-1">'
				+ 			'<div class="clearfix">'
				+ 				'<div class="comment">'
				+ 				'<strong>[ ' + replyInfo.replyUserNickname + ' <c:if test="${readInfo.writerInfo.userNo eq authUser.userNo}"><span class="text-sm-red">작성자</span></c:if> ]</strong><br>'
				+ 				'<strong>' + replyInfo.commentUserNickname + '</strong> ' + replyInfo.replyContent
				+ 			'</div>'
				+ 		'</div>'
				+ 		'<div class="comment-button">'
				+ 			'<button class="btn btn-xs">수정</button>'
				+ 			'<button class="btn btn-xs">삭제</button>'
				+ 		'</div>'
				+ 		'<div class="comment-2">'
				+ 			replyInfo.replyRegDate + '&nbsp;&nbsp;<span data-comment_no="' + replyInfo.commentNo + '" class="cursor-pointer btn-comment-reply">답글쓰기</span>'
				+ 		'</div>'
				+ 	'</div>'
				+ 	'<div class="reply-box-' + replyInfo.commentNo + '">'
				+ 	'</div>';
			
	$('.reply-box-empty').remove();
	$('.reply-box-' + replyInfo.commentNo).remove();
	$('.input-reply-' + replyInfo.commentNo).append(replySTR);
}

// -- 답글 등록 --

</script>

</html>