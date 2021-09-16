<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- 합쳐지고 최소화된 최신 CSS -->


<!-- jQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/modify_profile.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/bootstrap.css">

<title>온 더 보드: 프로필 관리</title>
</head>

<body>

	<!-- HEADER -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- // HEADER -->



	<div class="container">

	<!-- SUB TITLE -->
      <div class="container sub-container">
         <div class="subtitle clearfix">
            <div class="context1 font-size-24">프로필관리</div>
            <div class="context2 clearfix">
               <ul>
                  <li><a href="#">마이페이지</a></li>
                  <li class="last-li"><a href="#">프로필관리</a></li>
               </ul>
            </div>
         </div>
      </div>
      <!-- // SUB TITLE -->


		<div class="container bootstrap snippets bootdey">
			<h3 class="text-primary">손흥민's Profile</h3>
			<hr>
			<div class="row">
				<!-- left column -->
				<div class="col-md-3">
					<div class="text-center">
						<img src="${pageContext.request.contextPath}/assets/images/son.png" height="200px" class="avatar img-circle" alt="son"> <br>
						<h6>사진선택...</h6>
						<input type="file" class="form-control"> <br> <br>
						<ul>
							<li class="font-size-16">이름: 손흥민</li>
							<li class="font-size-16">연령: 20대</li>
							<li class="font-size-16">가입일: 2021-09-01</li>
						</ul>
					</div>
				</div>

				<!-- edit form column -->
				<div class="col-md-9 personal-info">
					<div class="alert alert-info alert-dismissable">
						<a class="panel-close close" data-dismiss="alert">×</a> <i class="fa fa-coffee"></i> This is an <strong>.alert</strong>. Use this to show
						important messages to the user.
					</div>

					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-lg-3 control-label">닉네임:</label>
							<div class="col-lg-8">
								<input class="form-control" type="text" value="슈퍼손은슈퍼콘">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">연령:</label>
							<div class="col-lg-8">
								<div class="ui-select">
									<select id="user-age" class="form-control">
										<option value="10s">10대</option>
										<option value="20s">20대</option>
										<option value="20s">30대</option>
										<option value="20s">40대</option>
										<option value="20s">50대</option>
										<option value="20s">60대</option>
									</select>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">성별:</label>
							<div class="col-lg-8">
								<div class="ui-select">
									<select id="user-gender" class="form-control">
										<option value="male">남</option>
										<option value="female">여</option>
									</select>
								</div>
							</div>
						</div>
						<div class="btn-area">
							<button class="btn-red">수정</button>
							<button class="btn-gray">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<hr>
		
		</div>

		<!-- FOOTER -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- // FOOTER -->
</body>

</html>