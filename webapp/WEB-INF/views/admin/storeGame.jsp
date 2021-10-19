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
<link href="${pageContext.request.contextPath }/assets/css/admin/storeGame.css" rel="stylesheet" type="text/css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>

<title>On The Board: Store Management</title>

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
						<h2>보유 게임 관리</h2>
					</div>
					<!-- //서브 타이틀 -->
	
					<!-- 검색 영역 -->
					<div id="search-bar" class="border-default">
						<!-- 검색어 입력 영역 -->
						<div id="search-area">
							<div id="select-area">
								<!-- 보유 유무 -->
								<select name="owned">
									<option value="all">전체</option>
									<option value="owned">보유중</option>
									<option value="except">보유 게임 제외</option>
								</select>
								<!-- 장르 -->
								<select name="theme">
									<option value="all">장르</option>
									<c:forEach items="${themeList}" var="themeList">
										<option value="${themeList.themeNo}">${themeList.themeName }</option>
									</c:forEach>
								</select>
							</div>				
									
							<!-- 검색어 입력 -->
							<div id="keyword-area">
								<!-- 이름 한/영 선택 -->
								<input type="search" placeholder="제목을 입력해주세요.">
								<button class="btn btn-sm btn-primary" type="submit">🔍 검색</button>
							</div>
						</div>
						<!-- 검색어 입력 영역 -->
					</div>
					<!-- 검색 영역 -->
	
					<!-- 리스트 영역 -->
					<div class="list-area">
					
						<!-- 리스트 갯수 선택 위치 예정/리스트 - 갤러리 보기 전환 버튼 -->
						
						<!-- 테이블 영역 -->
						<table id="game-list" class="font-size-14">
							<thead class="bg-info">
								<tr>
									<th>no</th>
									<th>이미지</th>
									<th>장르</th>
									<th>게임명</th>
									<th>등록 관리</th>
								</tr>
							</thead>
							<tbody id="gamelist-area">
							</tbody>
						</table>
						<!-- 테이블 영역 -->
						
						<!-- 페이징 -->
						<div id="paging">
							  <ul class="pagination">
								<li class="page-item">
						      		<a class="page-link" href="#" aria-label="Previous">
						        		<span aria-hidden="true">&laquo;</span>
						      		</a>
						    	</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item">
						      		<a class="page-link" href="#" aria-label="Next">
						        		<span aria-hidden="true">&raquo;</span>
						      		</a>
						    	</li>
							  </ul>
						</div>
						<!-- 페이징 -->
					
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

<!-- 게임 리스트 호출 -->
<script type="text/javascript">
	window.onload = function() {
	$.ajax({
	        //요청 코드
	        url: "${pageContext.request.contextPath }/admin/gameList",				//데이터를 받을 주소를 입력
	        type: "get",				//get, post 데이터를 보낼 때, 방식을 설정
	        success : function(data) {
	        	console.log(data);
	        	drawList(data);
	        }, err : function(jqXHR, textStatus, errorThrown) {
		    	alert("호출 에러\ncode : " + jqXHR.status + "\nerror message : " + jqXHR.responseText);
		    }  
		});
	};
	
	/* paging */
	$("[class=page-link]").on("click", function(){
		event.preventDefault();
		console.log($(this).text());
		console.log("onclick 이벤트")
		var crtPage = $(this).text();
		console.log(crtPage);
		$.ajax({
	        //요청 코드
	        url: "${pageContext.request.contextPath }/admin/gameList",				//데이터를 받을 주소를 입력
	        type: "get",				//get, post 데이터를 보낼 때, 방식을 설정
	        data: {
	        	crtPage : crtPage
	        },
	        success : function(data) {
	        	console.log(data);
	        	$("#gamelist-area > tr").remove();
	        	drawList(data);
	        	window.scrollTo(0, 0);	//페이지를 상단으로
	        }, err : function(jqXHR, textStatus, errorThrown) {
		    	alert("호출 에러\ncode : " + jqXHR.status + "\nerror message : " + jqXHR.responseText);
		    }  
		});
	});
	
	function render(gameVo) {
		var htmlTags ="";
		htmlTags+="<tr>";
		htmlTags+="	<td>"+ gameVo.gameNo+"</td>";
		htmlTags+='	<td class="img-area"><img class="game-img" src="${pageContext.request.contextPath}/assets/upload/'+ gameVo.gameThumbImg +'"></td>';
		htmlTags+="	<td> " + gameVo.themeName + " </td>";
		htmlTags+="	<td>";
		htmlTags+="		<a href='${pageContext.request.contextPath}/game/gameDetails?no="+gameVo.gameNo+"'> "+ gameVo.gameNameKo +"</a>";
		htmlTags+=" </td>"
		htmlTags+='	<td><button class="insert-btn btn btn-primary" type="submit" data-game="'+gameVo.gameNo+'">등록</button></td>';
		htmlTags+="</tr>";
		
		$("#gamelist-area").append(htmlTags);
	}
	
	function drawList(data) {
		var  gameList = data.storeGameList;
		for(var i = 0; i < gameList.length; i++) {
			render(gameList[i]);
		}
		
		var ownedList = data.storeOwnedList;
		var insertBtn = [];
		
		//console.log($("[data-game]").data("game"));
		
		$("[data-game]").each(function(i) {
			 insertBtn.push($(this));
		});
		
		for(var i = 0; i < ownedList.length; i++) {
			for(var j = 0; j < insertBtn.length; j++) {
				if(ownedList[i].gameNo == insertBtn[j].data("game")){
					insertBtn[j].text("등록 취소");
					insertBtn[j].removeClass("btn-primary");
					insertBtn[j].addClass("btn-danger");
				}
			}
		}
	}
	
</script>

<!-- 게임 매장 등록 -->
<script type="text/javascript">
	$("#gamelist-area").on("click", ".insert-btn",function(){
		console.log("등록 버튼 클릭 이벤트");
		
		var gameNo = $(this).data("game");
		console.log(gameNo);
		
		var ownedGame = {
			gameNo :gameNo
		}
		
		console.log(ownedGame);
		
		$.ajax({
	        //요청 코드
	        url: "${pageContext.request.contextPath }/admin/gameInsert",				//데이터를 받을 주소를 입력
	        type: "get",				//get, post 데이터를 보낼 때, 방식을 설정
	        data: ownedGame
		});
		
		var isInserted = $(this).text();
		
		if(isInserted === "등록") {
			$(this).text("등록 취소");
			$(this).removeClass("btn-primary");
			$(this).addClass("btn-danger");
		} else if (isInserted === "등록 취소") {
			
			window.alert("보유 게임 항목에서 삭제됩니다.")
			
			
			var gameNo = $(this).data("game");
			console.log(gameNo);
			
			var ownedGame = {
				gameNo :gameNo
			}
			
			console.log(ownedGame);
			
			$.ajax({
		        //요청 코드
		        url: "${pageContext.request.contextPath }/admin/gameDelete",				//데이터를 받을 주소를 입력
		        type: "get",				//get, post 데이터를 보낼 때, 방식을 설정
		        data: ownedGame
			});
			
			$(this).text("등록");
			$(this).removeClass("btn-danger");
			$(this).addClass("btn-primary");
		}
		
	});
</script>

</html>