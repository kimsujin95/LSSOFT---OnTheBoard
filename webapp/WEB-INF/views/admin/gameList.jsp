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
<link href="${pageContext.request.contextPath }/assets/css/admin/gameList.css" rel="stylesheet" type="text/css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>

<title>admin-gameList</title>

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
								<!-- 정렬 -->
								<select>
									<option>정렬</option>
									<option>오름차순</option>
									<option>내림차순</option>
								</select>
								<!-- 보유 유무 -->
								<select>
									<option>전체</option>
									<option>보유중</option>
									<option>보유 게임 제외</option>
								</select>
								<!-- 장르 -->
								<select>
									<option>장르</option>
									<option>추상 게임</option>
									<option>협력 게임</option>
								</select>
							</div>				
									
							<!-- 검색어 입력 -->
							<div id="keyword-area">
								<!-- 이름 한/영 선택 -->
								<select>
									<option>한글</option>
									<option>영어</option>
								</select>
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
							<tbody>
								<c:forEach begin="0" end="9" varStatus="status">	
									<tr>
										<td>${status.count}</td>
										<td class="img-area"><img class="game-img" src="${pageContext.request.contextPath }/upload/141232323.jpg"></td>
										<td>카드게임</td>
										<td>보난자<br>Bonanza</td>
										<td><button class="insert-btn btn btn-primary" type="submit">등록</button></td>
									</tr>
								</c:forEach>
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

<script type="text/javascript">
	$(".insert-btn").on("click", function(){
		console.log("등록 버튼 클릭 이벤트");
		
		var isInserted = $(this).text();
		
		if(isInserted === "등록") {
			$(this).text("등록 취소");
			$(this).removeClass("btn-primary");
			$(this).addClass("btn-danger");
		} else if (isInserted === "등록 취소") {
			
			window.alert("보유 게임 항목에서 삭제됩니다.")
			
			$(this).text("등록");
			$(this).removeClass("btn-danger");
			$(this).addClass("btn-primary");
		}
		
		
	});
</script>

</html>