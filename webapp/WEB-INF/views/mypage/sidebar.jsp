<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/sidebar_style.css">


<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">

	$(function() {
		var duration = 300;

		var $side = $('#sidebar');
		var $sidebt = $side.find('button').on('click', function() {
			$side.toggleClass('MY PAGE');

			if ($side.hasClass('MY PAGE')) {
				$side.stop(true).animate({
					left : '0px'
				}, duration);
				$sidebt.find('span').text('CLOSE');
			} else {
				$side.stop(true).animate({
					left : '-300px'
				}, duration);
				$sidebt.find('span').text('MY PAGE');
			}
			;
		});
	});
</script>
</head>
<body>
	<div id="wrap">
		<aside id="sidebar">
			<ul>
				<li><a href="${pageContext.request.contextPath }/mypage/history">예약내역</a></li>
				<li><a href="${pageContext.request.contextPath }/mypage/matching">매칭정보</a></li>
				<li><a href="${pageContext.request.contextPath }/mypage/bookmark">찜목록</a></li>
				<li><a href="${pageContext.request.contextPath }/mypage/activity">활동내역</a></li>
				<li><a href="${pageContext.request.contextPath }/mypage/modifyProfile">프로필 카드</a></li>
				<li><a href="${pageContext.request.contextPath }/mypage/modify">회원정보 수정</a></li>
				<li><a href="${pageContext.request.contextPath }/mypage/business">사업자 전환</a></li>
				<li>로그아웃</li>
			</ul>
			<button>
				<span class="btn_t">MY PAGE</span>
			</button>
		</aside>
	</div>
</body>
</html>