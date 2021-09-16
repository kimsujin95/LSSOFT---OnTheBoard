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


<title>온 더 보드: 프로필 관리</title>
</head>

<body>

	<!-- HEADER -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- // HEADER -->

	<!-- SUB TITLE -->
	<div class="sub-container">

		<div class="subtitle">
			<h3>프로필 관리</h3>
			<div class="context">프로필을 수정 할 수 있습니다.</div>
		</div>

	</div>
	<!-- // SUB TITLE -->


	<div id="container">
		<!-- CONTENTS -->



		<div id="content" style="background-color: #fff;">

			<form id="profileForm" method="post" enctype="multipart/form-data">
				<fieldset>
					<legend>프로필 수정</legend>
					<table class="tbl_model">
						<caption>
							<span class="blind">프로필 수정</span>
						</caption>
						<colgroup>
							<col style="width: 22%">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">
									<div class="thcell">프로필 사진</div>
								</th>
								<td>
									<div class="tdcell">
										<div class="profile_photo">
											<img id="imgThumb" src="${pageContext.request.contextPath}/assets/images/profile_empty.png" width="100" height="100"> <span
												class="mask"></span>
										</div>
										<div class="btn_area_btm">
											<span class="btn_file"> <label for="inputImage" class="btn_model"><b id="btnChangeProfile" class="btn2"
													onclick="clickcr(this,'prf.upimg','','',event);">사진변경</b></label> <input type="file" id="inputImage" name="profileImage" accept="image/*" />
											</span> <a href="javascript:;" class="btn_model"><b id="btnDelete" class="btn2" onclick="clickcr(this,'prf.delimg','','',event);">삭제</b></a>
										</div>
									</div>
								</td>
							</tr>
							<!--별명-->
							<tr>
								<th scope="row">
									<div class="thcell">
										<label for="inpNickname">별명</label>
									</div>
								</th>
								<td>
									<div class="tdcell">
										<p class="contxt_webctrl nickname">
											<input type="text" name="nickname" id="inpNickname" value="슈퍼손은슈퍼콘" style="width: 254px" onclick="clickcr(this,'prf.nick','','',event);">
											<!-- Enter 입력으로 submit이 되는걸 방지하기 위한 Input -->
											<input type="text" style="display: none;">
										</p>
									</div>
								</td>
							</tr>
							<!--성별-->
							<tr>
								<th scope="row">
									<div class="thcell">
										<label for="inpNickname">성별</label>
									</div>
								</th>
								<td>
									<div class="tdcell">
										<p class="gender">
											<label><input type="radio" name="radio_gender" value="남성">남성</label> <label><input type="radio" name="radio_gender"
												value="여성">여성</label>
										</p>
									</div>
								</td>
							</tr>

						</tbody>
					</table>
					<div class="btn_wrap">
						<a href="" class="btn_model"><b id="btnConfirm" class="btn8">수정</b></a> <a href="" class="btn_model"><b id="btnCancel" class="btn2">취소</b></a>
					</div>
				</fieldset>
			</form>
		</div>

	</div>

	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- // FOOTER -->

</body>

</html>