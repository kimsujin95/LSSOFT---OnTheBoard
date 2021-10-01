<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>On the Board:팀프로젝트 3조</title>

<!-- css  -->
<link href="${pageContext.request.contextPath }/assets/bootstrap/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/game/gamelayout.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/assets/css/game/gamestyle.css" rel="stylesheet">


<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>

</head>

<body>
	
	<!-- Header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- /#Header -->
	
	<!--wrap-->
	<div class="wrap">
		<!-- .sub-container -->
		<div class="sub-container">
		<!--.subtitle -->
         <div class="subtitle clearfix">
			<div class="context1 font-size-24">게임목록</div>
			<div class="context2 clearfix">
				<ul>
					<li><a href="${pageContext.request.contextPath}/main">메인</a></li>
					<li class="last-li"><a href="${pageContext.request.contextPath}/game/list">게임목록</a></li>
				</ul>
			</div>
		</div>
         <!-- /.subtitle -->
         <div>
         <!--#searchForm-->
         <p class="context">아래 메뉴에서 원하는 조건을 선택하면, 만족하는 보드게임을 찾으실 수 있습니다.</p>
        	
         <div class="bbssvc">
         	<c:if test="${authUser != null }">
				<a href="${ pageContext.request.contextPath }/game/gameUpload"><button class="btn-blue">게임등록</button></a>
			</c:if>	
         </div>
			<form name="searchForm" id="searchForm" method="POST" action>
				<input type="hidden" name="pagenum" id="pagenum" value="1"> <input type="hidden"
					name="view_type" id="view_type" value="bg"
				>
				<!--.sortSelect-->
				<div class="sortSelect">
					<div class="notice">
						<!-- .listType -->
						<ul class="listType">
							<li class="sortB">
								<select title="정렬기준" name="search_sort" class="formSelect">
										<option value="" selected="selected">></option>
										<option value="name_asc">오름차순</option>
										<option value="name_desc">내림차순</option>
								</select>
							</li>
							<li class="search">
								<input type="text" id="ipt-keyword" value="" placeholder="게임 검색">
							</li>
						</ul>
						<!-- /.listType -->
					</div>
				</div>
				<!--/.sortSelect-->

			</form>
			<!--/#searchForm-->
         </div>

      </div>
		<!--#main-->
		<div id="main" class="gameList">
			
			<!--#gameList-->
<!-- 반복출력부분 -->
			<ul class="bbsList04" id="gameList">
				<c:forEach items="${gameList }" var="gameVo" varStatus="status">
					<li>
					<div class="thum">
						<a href="${pageContext.request.contextPath}/game/gameDetails?no=${gameVo.gameNo}"><img src="${pageContext.request.contextPath}/upload/${gameVo.gameThumbImg }" alt="${gameVo.gameNameKo}"></a>
					</div>
					<div class="desc">
						<p class="title">
							<a href="${pageContext.request.contextPath}/game/gameDetails?no=${gameVo.gameNo}">${gameVo.gameNameKo}</a>
						</p>
						<table>
							<tbody>
								<tr>
									<th>게임인원</th>
									<td>${gameVo.gamePeople}</td>
								</tr>
								<tr>
									<th>게임연령</th>
									<td>${gameVo.gameAge}</td>
								</tr>
								<tr>
									<th>게임시간</th>
									<td>${gameVo.gameTime}</td>
								</tr>
								<tr>
									<th>게임난이도</th>
									<td>${gameVo.gameDifficulty}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</li>
				</c:forEach>
			</ul>
			<!--#gameList-->
			<!--.paging-->
			<div id="paging">
				<div class="paging text-center">
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
			<!--/.paging-->
		</div>
		<!--/#container-->
		
		<!-- Footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- /#Footer -->

	</div>
	<!--/#wrap-->
	
</body>
</html>
