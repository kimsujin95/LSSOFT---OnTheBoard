<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매장 상세정보 페이지</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- CSS -->
<link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/store/Storeinfo.css" rel="stylesheet" type="text/css">

<!-- jQuery -->
<script type="text/javascript" src="./jquery/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 이미지 슬라이드 -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

	<!-- 헤더 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<!-- 메인 컨텐츠 구역 -->

	<div id="store-main-content" class="container">

		<!-- 매장 정보 상단 이미지슬라이드, 매장 상세정보 -->
		<div id="store-info-top-content">
			<!-- 이미지 슬라이드 -->

			<!-- carousel를 구성할 영역 설정 -->
			<div id="img_slide" class="store-main-sub-content">
				<!-- carousel를 사용하기 위해서는 class에 carousel와 slide 설정한다. -->
				<!-- carousel는 특이하게 id를 설정해야 한다.-->
				<div id="carousel-store-img-generic" class="carousel slide">
					<!-- carousel의 지시자 -->
					<!-- 지시자라고는 하는데 ol태그의 class에 carousel-indicators를 넣는다. -->
					<ol class="carousel-indicators">
						<!-- li는 이미지 개수만큼 추가하고 data-target은 carousel id를 가르킨다. -->
						<!-- data-slide-to는 순서대로 0부터 올라가고 0은 active를 설정한다. -->
						<!-- 딱히 이 부분은 옵션별로 설정하게 없다. -->
						<!-- <li data-target="#carousel-store-img-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-store-img-generic" data-slide-to="1"></li> -->
					</ol>
					<!-- 실제 이미지 아이템 -->
					<!-- class는 carousel-inner로 설정하고 role은 listbox에서 설정한다. -->
					<div id="img-slide-list" class="carousel-inner" role="listbox">
						<!-- 이미지의 개수만큼 item을 만든다. 중요한 포인트는 carousel-indicators의 li 태그 개수와 item의 개수는 일치해야 한다. -->
						<div class="item active">
							<!-- 아미지 설정- -->
							<img src="./BoardGameStore.jpg" class="store_img">
							<!-- 캡션 설정 (생략 가능) -->
							<!-- 글자 색은 검은색 -->
							<div class="carousel-caption">매장이미지1 입니다.</div>
						</div>
						<div class="item">
							<img src="./BoardGmaeStore2.jpg" class="store_img">
							<div class="carousel-caption">매장이미지2 입니다.</div>
						</div>
					</div>
					<!-- 왼쪽 화살표 버튼 -->
					<!-- href는 carousel의 id를 가르킨다. -->
					<a class="left carousel-control" href="#carousel-store-img-generic" role="button" data-slide="prev"> <!-- 왼쪽 화살표 --> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					</a>
					<!-- 오른쪽 화살표 버튼 -->
					<!-- href는 carousel의 id를 가르킨다. -->
					<a class="right carousel-control" href="#carousel-store-img-generic" role="button" data-slide="next"> <!-- 오른쪽 화살표 --> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					</a>
				</div>
			</div>

			<div id="store-details" class="store-main-sub-content">

				<table class="store-details-info">

					<tr class="icons-row">
						<td class="icons-span"><i class="fas fa-info-circle"></i></td>
						<td>매장세부정보 입력란 입니다.</td>
					</tr>


					<tr class="icons-row">
						<td class="icons-span"><i class="fas fa-phone-square"></i></td>
						<td>매장 전화번호 입력란 입니다.</td>
					</tr>


					<tr class="icons-row">
						<td rowspan="2" class="icons-span"><i class="fas fa-compass"></i></td>
						<td>매장 주소 입력란 입니다.</td>
					</tr>
					<tr>
						<td>매장 상세주소 입력란 입니다.</td>
					</tr>


					<tr class="icons-row">
						<td rowspan="2" class="icons-span"><i class="fas fa-wallet"></i></td>
						<td>매장 시간당 요금 입력란 입니다.</td>
					</tr>
					<tr>
						<td>매장 시간당 요금 입력란 입니다.</td>
					</tr>


				</table>

			</div>

		</div>

		<!-- 매장 이름, 평점 -->
		<div id="store-score-line">
			<div>
				<table id="star-table">
					<tr>
						<td>포퀸스보드게임카페</td>
					</tr>
					<tr>
						<td class="star-score"><i class="far fa-star"></i>4.66/5</td>
					</tr>
				</table>
			</div>
		</div>

		<!-- 리뷰 게시구역 -->
		<div class="store-review-wraper">
			<div>
				<ul class="review-section" id="review"><!-- jquery로 리뷰 게시 -->
				</ul>
			</div>
			<ul class="pagination" id="pages"></ul>

		</div>

		<!-- 예약 사전설정 구역(날짜,시간) -->

		<div id="on-the-board-include">

			<div id="store-reservation-set-section">
				<div class="wrap">
					<button type="button" title="이전 날짜 보기" class="btn-pre">
						<i class="fas fa-chevron-left"></i>
					</button>
					<div class="date-list">
						<!-- 년도, 월 표시 -->
						<div class="year-area">
							<div class="year" style="left: 30px; opacity: 1; z-index: 1;">2021.09</div>
						</div>
						<div class="date-area" id="formDeList">

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"15" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">수</span>

							</button>

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"16" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">목</span>

							</button>

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"17" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">금</span>

							</button>

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"18" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">토</span>

							</button>

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"19" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">일</span>

							</button>

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"20" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">월</span>

							</button>

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"21" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">화</span>

							</button>

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"22" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">수</span>

							</button>

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"23" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">목</span>

							</button>

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"24" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">금</span>

							</button>

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"25" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">토</span>

							</button>

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"26" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">일</span>

							</button>

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"27" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">월</span>

							</button>

							<button class="" type="button" date-data="" month="">

								<span class="ir">2021년 9월</span> <em style="pointer-events: none;">"28" <span style="pointer-events: none;" class="ir">일</span>
								</em> <span class="day-kr" style="pointer-events: none; display: inline-block">화</span>

							</button>

						</div>
					</div>

					<button type="button" title="다음 날짜 보기" class="btn-next">
						<i class="fas fa-chevron-right"></i>
					</button>

					<!-- 달력 보기 -->
					<div class="bg-line">
						<input type="hidden" id="datePicker" value="" class="hasDatepicker">
						<button type="button" id="calendar" onclick="$('#datePicker').datepicker('show')" class="btn-calendar-large" title="달력보기">달력보기</button>
					</div>
				</div>
			</div>

			<div class="quick-reserve-area">

				<div class="number-of-people-choice-area">
					<p class="people">인원 수 선택</p>
					<!-- 인원수 선택 구역 -->
					<div class="people-choice-area">
						<!-- 직접 선택 -->
						<div class="people-select-btn">
							<div class="select-by-no">
								<button type="button" class="btn-tab on" id="">직접 선택</button>
								<div class="people-no-select-section"></div>
							</div>
						</div>

						<!-- 그룹으로 선택 -->
						<div class="people-select-btn">
							<div class="select-by-group">
								<button type="button" class="btn-tab on" id="">그룹으로 선택</button>
							</div>
						</div>
					</div>
				</div>

				<div class="time-choice-area"></div>
			</div>

		</div>


		<!-- 매장 내 보유게임 리스트, 검색 구역 -->
		<div id="store-main-bottom-content">

			<div id="store-game-list">

				<div id="store-game-list-head">
					<ul>
						<li>매장 내 게임 목록</li>
						<li class="game-list-breadcrumb">검색 필터></li>
					</ul>
				</div>

				<div id="store-game-list-body">

					<ul>

						<li class="game-list"><img src="./voidfall.jpg">
							<table>
								<tr>
									<td>voidFall</td>
								</tr>
								<tr>
									<td>1-6 <i class="fas fa-users"></i></td>
								</tr>
								<tr>
									<td>playing Time : 90min</td>
								</tr>
							</table></li>
						<li class="game-list"><img src="./voidfall.jpg">
							<table>
								<tr>
									<td>voidFall</td>
								</tr>
								<tr>
									<td>1-6 <i class="fas fa-users"></i></td>
								</tr>
								<tr>
									<td>playing Time : 90min</td>
								</tr>
							</table></li>
						<li class="game-list"><img src="./voidfall.jpg">
							<table>
								<tr>
									<td>voidFall</td>
								</tr>
								<tr>
									<td>1-6 <i class="fas fa-users"></i></td>
								</tr>
								<tr>
									<td>playing Time : 90min</td>
								</tr>
							</table></li>
						<li class="game-list"><img src="./voidfall.jpg">
							<table>
								<tr>
									<td>voidFall</td>
								</tr>
								<tr>
									<td>1-6 <i class="fas fa-users"></i></td>
								</tr>
								<tr>
									<td>playing Time : 90min</td>
								</tr>
							</table></li>
						<li class="game-list"><img src="./voidfall.jpg">
							<table>
								<tr>
									<td>voidFall</td>
								</tr>
								<tr>
									<td>1-6 <i class="fas fa-users"></i></td>
								</tr>
								<tr>
									<td>playing Time : 90min</td>
								</tr>
							</table></li>
						<li class="game-list"><img src="./voidfall.jpg">
							<table>
								<tr>
									<td>voidFall</td>
								</tr>
								<tr>
									<td>1-6 <i class="fas fa-users"></i></td>
								</tr>
								<tr>
									<td>playing Time : 90min</td>
								</tr>
							</table></li>
						<li class="game-list"><img src="./voidfall.jpg">
							<table>
								<tr>
									<td>voidFall</td>
								</tr>
								<tr>
									<td>1-6 <i class="fas fa-users"></i></td>
								</tr>
								<tr>
									<td>playing Time : 90min</td>
								</tr>
							</table></li>
						<li class="game-list"><img src="./voidfall.jpg">
							<table>
								<tr>
									<td>voidFall</td>
								</tr>
								<tr>
									<td>1-6 <i class="fas fa-users"></i></td>
								</tr>
								<tr>
									<td>playing Time : 90min</td>
								</tr>
							</table></li>

					</ul>

				</div>

			</div>

			<div id="store-game-search">

				<div id="game-cate-select">
					<ul>
						<li><a href="#">게임 카테고리 선택</a>
							<ul>
								<li><a href="#">전략</a></li>
								<li><a href="#">추리</a></li>
								<li><a href="#">협동</a></li>
								<li><a href="#">탐험</a></li>
							</ul></li>
					</ul>
				</div>

				<div id="game-search-ipt-keyword">

					<label><input type="text" placeholder="게임 이름으로 검색"></label>

				</div>

			</div>

		</div>


	</div>



	<script>
        $(function () {
            // 이미지 슬라이드 컨트롤를 사용하기 위해서는 carousel를 실행해야한다.
            $('#carousel-example-generic').carousel({
                // 슬리아딩 자동 순환 지연 시간
                // false면 자동 순환하지 않는다.
                interval: 5000,
                // hover를 설정하면 마우스를 가져대면 자동 순환이 멈춘다.
                pause: "hover",
                // 순환 설정, true면 1 -> 2가면 다시 1로 돌아가서 반복
                wrap: true,
                // 키보드 이벤트 설정 여부(?)
                keyboard: true
            })
        })
    </script>

	<!-- 페이징 -->
	<script type="text/javascript">
        

        function reviews(){

            

        }

    </script>

	<script type="text/javascript">

        var totalData = 1000;    // 총 데이터 수
        var dataPerPage = 4;    // 한 페이지에 나타낼 데이터 수
        var pageCount = 5;        // 한 화면에 나타낼 페이지 수

        function paging(totalData, dataPerPage, pageCount, currentPage) {

            // console.log("currentPage : " + currentPage);

            var totalPage = Math.ceil(totalData / dataPerPage);    // 총 페이지 수
            var pageGroup = Math.ceil(currentPage / pageCount);    // 페이지 그룹

            // console.log("pageGroup : " + pageGroup);

            var last = pageGroup * pageCount;    // 화면에 보여질 마지막 페이지 번호
            if (last > totalPage)
                last = totalPage;
            var first = last - (pageCount - 1);    // 화면에 보여질 첫번째 페이지 번호
            var next = last + 1;
            var prev = first - 1;

            // console.log("last : " + last);
            // console.log("first : " + first);
            // console.log("next : " + next);
            // console.log("prev : " + prev);

            var $pingingView = $("#pages");

            var html = "";

            if (prev > 0)
                html += "<a href=# id='prev'><</a> ";

            for (var i = first; i <= last; i++) {
                html += "<a href='#' id=" + i + ">" + i + "</a> ";
            }

            if (last < totalPage)
                html += "<a href=# id='next'>></a>";

            $("#pages").html(html);    // 페이지 목록 생성
            $("#pages a").css("color", "black");
            $("#pages a#" + currentPage).css({
                "text-decoration": "none",
                "color": "red",
                "font-weight": "bold"
            });    // 현재 페이지 표시

            $("#pages a").click(function () {

                var $item = $(this);
                var $id = $item.attr("id");
                var selectedPage = $item.text();

                if ($id == "next") selectedPage = next;
                if ($id == "prev") selectedPage = prev;

                paging(totalData, dataPerPage, pageCount, selectedPage);
            });

        }

        $("document").ready(function () {
            paging(totalData, dataPerPage, pageCount, 1);
        });
    </script>

</body>
</html>