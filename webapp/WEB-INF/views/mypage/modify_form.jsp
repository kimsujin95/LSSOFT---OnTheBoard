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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/modify_info.css" type="text/css">

<title>온 더 보드: 사업자 전환</title>

</head>

<body>

	<!-- HEADER -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- // HEADER -->

	<!-- wrapper -->
	<div class="container">

		<!-- SUB TITLE -->
		<div class="container sub-container">
			<div class="subtitle clearfix">
				<div class="context1 font-size-24">회원정보수정</div>
				<div class="context2 clearfix">
					<ul>
						<li><a href="#">마이페이지</a></li>
						<li class="last-li"><a href="#">회원정보수정</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // SUB TITLE -->




		<!-- wrapper -->
		<div id="wrapper">

			<!-- content-->
			<div id="content">

				<form id="modifyForm" method="post" action="${pageContext.request.contextPath}/user/modify">

					<!-- ID -->
					<div>
						<h3 class="join_title">
							<label for="id">아이디</label>
						</h3>
						<span class="box int_id"> ${userVo.userId } </span> <span class="error_next_box"></span>
					</div>

					<!-- PW1 -->
					<div>
						<h3 class="join_title">
							<label for="pswd1">비밀번호</label>
						</h3>
						<span class="box int_pass"> <input type="password" name="userPassword" id="pswd1" class="int" value="${userVo.userPassword }"
							maxlength="20">
						</span> <span class="error_next_box"></span>
					</div>

					<!-- PW2 -->
					<div>
						<h3 class="join_title">
							<label for="pswd2">비밀번호 재확인</label>
						</h3>
						<span class="box int_pass_check"> <input type="password" id="pswd2" class="int"
							maxlength="20">
						</span> <span class="error_next_box"></span>
					</div>

					<!-- NAME -->
					<div>
						<h3 class="join_title">
							<label for="name">이름</label>
						</h3>
						<span class="box int_name"> <input type="text" name="userName" id="name" class="int" value="${userVo.userName }" maxlength="20">
						</span> <span class="error_next_box"></span>
					</div>


					<!-- BIRTH -->
					<div>
						<h3 class="join_title">
							<label for="yy">생년월일</label>
						</h3>

						<div id="bir_wrap">
							<!-- BIRTH_YY -->
							<div id="bir_yy">
								<span class="box"> <input type="text" name="userBirthDate" id="yy" class="int" maxlength="8" value="${userVo.userBirthDate }">
								</span>
							</div>

							<!--
					
						<div id="bir_mm">
							<span class="box"> <select id="mm" name="month" class="sel">
									<option>월</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select>
							</span>
						</div>

				
						<div id="bir_dd">
							<span class="box"> <input type="text" name="date" id="dd" class="int" maxlength="2" placeholder="일">
							</span>
						</div>
						
						-->

						</div>
						<span class="error_next_box"></span>
					</div>

					<!-- GENDER -->
					<div>
						<h3 class="join_title">
							<label for="gender">성별</label>
						</h3>
						<span class="box gender_code"> <select id="gender" name="userGender" class="sel">
								<option>성별</option>
								<c:if test="${userVo.userGender == 'male' }">
									<option value="male" selected="selected">남자</option>
									<option value="female">여자</option>
								</c:if>

								<c:if test="${userVo.userGender == 'femail' }">
									<option value="female" selected="selected">여자</option>
									<option value="male">남자</option>
								</c:if>
						</select>
						</span> <span class="error_next_box"></span>
					</div>

					<!-- EMAIL -->
					<div>
						<h3 class="join_title">
							<label for="email">이메일</label>
						</h3>
						<span class="box int_email"> <input type="text" name="userEmail" id="email" class="int" value="${userVo.userEmail }" maxlength="100">
						</span> <span class="error_next_box"></span>
					</div>

					<!-- MOBILE -->
					<div>
						<h3 class="join_title">
							<label for="phoneNo">휴대전화</label>
						</h3>
						<span class="box int_mobile"> <input type="tel" id="mobile" name="userPhoneNo" class="int" maxlength="16" value="${userVo.userPhoneNo }"
							placeholder="전화번호 입력">
						</span> <span class="error_next_box"></span>
					</div>

					<!--ADDRESS-->
					<div>
						<h3 class="join_title">
							<label for="address">주소<span class="optional">(선택)</span></label>
						</h3>
						<span class="box int_address"> <input type="text" id="address" class="int" placeholder="주소 입력">
						</span>
					</div>


					<!-- JOIN BTN-->
					<div class="btn_area">
						<button type="submit" id="btnJoin">
							<span>수정하기</span>
						</button>
						<button type="button" id="btnExit" onclick="location.href='${pageContext.request.contextPath}/main'">
							<span>돌아가기</span>
						</button>
					</div>

				</form>

			</div>
			<!-- content-->


		</div>
		<!-- wrapper -->
	</div>


	<!-- FOOTER -->
	<footer>

		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</footer>
	<!-- // FOOTER -->
</body>

</html>