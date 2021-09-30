<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>온 더 보드: 게임등록</title>

<!-- css  -->
<link href="${pageContext.request.contextPath }/assets/css/game/gameUpload.css" rel="stylesheet" type="text/css">


<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>
</head>
<body>
	<!-- header -->
	<div id="header">
		<img src="${pageContext.request.contextPath}/assets/images/logo.png" id="logo">
	</div>


	<!-- wrapper -->
	<div id="wrapper">


		<!-- content-->
		<div id="content">
			<!-- gamename_ko -->
			<form autocomplete="off" action="localhost:8088/game/upload" method="post" enctype="multipart/form-data">
			<div>
				<h3 class="register-title">
					<label for="game_kor">게임명(한글)</label>
				</h3>
				<span class="box int_id"> <label for="game_kor"><input type="text" id="game_kor"
						class="int" maxlength="20"
					></label>
				</span> <span class="error_next_box"></span>
			</div>

			<!-- gamename_en -->
			<div>
				<h3 class="register-title">
					<label for="game_eng">게임명(영어)</label>
				</h3>
				<span class="box int_pass"> <label for="game_eng"><input type="text"
						id="game_eng" class="int" maxlength="20"
					></label>
				</span> <span class="error_next_box"></span>
			</div>

			
			<!-- Game Player -->
			<div>
				<h3 class="register-title">
					<label for="gamePlayer">게임인원</label>
				</h3>
				<div id="sel-wrap">

					<!-- gameplayer min -->
					<div id="select">
						<span class="box"> <select id="gamePlayer_min" class="sel">
								<option>최소</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
						</select>
						</span>
					</div>

					<!-- gameplayer min txt-->
					<div id="select_txt">
						<span class="box">명 부터 </span>
					</div>
					<!--gameplayer max -->
					<div id="select">
						<span class="box"> <select id="gamePlayer_max" class="sel">
								<option>최대</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
						</select>
						</span>
					</div>
					<!--gameplayer max txt-->
					<div id="select_txt">
						<span class="box">명 까지 </span>
					</div>
				</div>
				<span class="error_next_box"></span>
			</div>

			<!--Game Age---->
			<div>
				<h3 class="register-title">
					<label for="gameAge">게임연령</label>
				</h3>
				<div id="sel-wrap">

					<!-- Gameage -->
					<div id="select">
						<span class="box"> <select id="gameAge" class="sel">
								<option>선택</option>
								<option value="04">만 4세이상</option>
								<option value="05">만 5세이상</option>
								<option value="06">만 6세이상</option>
								<option value="07">만 7세이상</option>
								<option value="09">만 9세이상</option>
								<option value="10">만 10세이상</option>
								<option value="12">만 12세이상</option>
								<option value="14">만 14세이상</option>
								<option value="15">만 15세이상</option>

						</select>

						</span>
					</div>
					<span class="error_next_box"></span>
				</div>
				<span class="error_next_box"></span>
			</div>

			<!--Game Theme-->

			<div>
				<h3 class="register-title">
					<label for="game">게임테마</label>
				</h3>
				<div id="sel-wrap">

					<!-- Theme -->
					<div id="select">
						<span class="themebox"> <label for="strategy"><input type="checkbox"
								name="theme" value="strategy"
							/>전략</label> <label for="abstract"><input type="checkbox" name="theme" value="abstract" />추상</label>
							<label for="collectable"><input type="checkbox" name="theme" value="collectable" />컬렉터블</label>
							<label for="family"><input type="checkbox" name="theme" value="family" />가족</label> <label
							for="party"
						><input type="checkbox" name="theme" value="party" />파티</label> <label for="children"><input
								type="checkbox" name="theme" value="children"
							/>어린이<br></label> <label for="theme"><input type="checkbox" name="theme" value="theme" />테마</label>
							<label for="wargame"><input type="checkbox" name="theme" value="wargame" />워게임</label> <label
							for="korean"
						><input type="checkbox" name="theme" value="korean" />한글</label> <label for="economic"><input
								type="checkbox" name="theme" value="economic"
							/>경제</label> <label for="cooperation"><input type="checkbox" name="theme"
								value="cooperation"
							/>협력<br></label> <label for="puzzle"><input type="checkbox" name="theme" value="puzzle" />퍼즐</label>
							<label for="adventure"><input type="checkbox" name="theme" value="adventure" />모험</label> <label
							for="dice"
						><input type="checkbox" name="theme" value="dice" />주사위</label>
						</span>
					</div>
					<span class="error_next_box"></span>
				</div>
			</div>

			<!--Difficulty-->

			<div>
				<h3 class="register-title">
					<label for="name">게임난이도</label>
				</h3>
				<div id="sel-wrap">

					<!-- difficulty option -->
					<div id="select">
						<span class="box"> <select id="difficulty" class="sel">
								<option>선택</option>
								<option value="01">초급(가족용 보드게임)</option>
								<option value="02">중급(대중용 보드게임)</option>
								<option value="03">고급(게이머용 보드게임)</option>
						</select>

						</span>
					</div>
					<span class="error_next_box"></span>
				</div>
			</div>

				<!-- Playtime -->
				<div>
					<h3 class="register-title">
						<label for="gameTime">게임시간</label>
					</h3>

					<div id="sel-wrap">

						<!-- playtime min -->
						<div id="select">
							<span class="box"> <select id="gameTime_min" class="sel">
									<option>최소</option>
									<option value="15">15</option>
									<option value="20">20</option>
									<option value="25">25</option>
									<option value="30">30</option>
									<option value="35">35</option>
									<option value="40">40</option>
							</select>
							</span>
						</div>

						<!-- playtime min txt-->
						<div id="select_txt">
							<span class="box">분 부터 </span>
						</div>
						<!--playtime max -->
						<div id="select">
							<span class="box"> <select id="gameTime_max" class="sel">
									<option>최대</option>
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06">6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select>
							</span>
						</div>
						<!--playtime max txt-->
						<div id="select_txt">
							<span class="box">분 까지 </span>
						</div>



					</div>
					<span class="error_next_box"></span>
				</div>


				<!-- youtube -->
				<div>
					<h3 class="register-title">
						<label for="youtube">유튜브</label>
					</h3>
					<span class="box int_youtube"><input type="text" id="youtube"
							class="int" maxlength="100" placeholder="embed주소"
						></span> <span class="error_next_box">유튜브주소를 다시 확인해주세요.</span>
				</div>
				
				<!-- thumbnail -->
			<div>
				<h3 class="register-title">
					<label for="upload">파일첨부</label>
				</h3>
				<div class="setting image_picker">
					
						<div class="settings_wrap">
							<label class="drop_target">
								<div class="image_preview"></div>
								
								<input id="gameImg" type="file" />
								<div class="settings_actions vertical select_img">
									<img src="">
								</div>
								 <p>썸네일</p>
								 <img src="${game.thumbImg}" class="thumbImg"/>
						</div>
					<%=request.getSession().getServletContext().getRealPath("/") %>
				</div>
			</div>

				<!-- register BTN-->
				<div class="btn_area">
					<button type="button" id="btnReg" type="submit" >
						<span>게임등록</span>
					</button>
				</div>
			</form>
			</div>
			<!-- content-->

		</div>
		<!-- wrapper -->

<script>
  $("#gameImg").change(function(){
   if(this.files && this.files[0]) {
    var reader = new FileReader;
    reader.onload = function(data) {
     $(".select_img img").attr("src", data.target.result).width(116);        
    }
    reader.readAsDataURL(this.files[0]);
   }
  });
 </script>
		
</body>

</html>