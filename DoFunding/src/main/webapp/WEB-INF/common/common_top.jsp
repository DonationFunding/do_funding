<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>두펀딩</title>

</head>

<body>
	<div id="top-wrap">
		<header class="top-inner">

			<div>
				<c:if test="${sessionScope.loginInfo.id == null}">
					<ul class="subMenu">
						<li>
							&nbsp;<a href="login.mem">로그인</a> 
							&nbsp;<a href="insert.mem">회원가입</a> 
							&nbsp;<a href="findId.mem">ID/비밀번호찾기</a>
						</li>
					</ul>
				</c:if>

				<c:if test="${sessionScope.loginInfo.id != null}">
					<ul class="subMenu">
						<li>
							<c:if test="${loginInfo.admin == 0}">
							&nbsp;<a href="main.ad">관리자 페이지</a>
							</c:if>
							&nbsp;<a href="#">찜목록</a> 
							&nbsp;<a href="#">펀딩내역</a>
							&nbsp;<a href="#">마이페이지(수정폼)</a> 
							&nbsp;<a href="<%=request.getContextPath() %>/logout.jsp">로그아웃</a>
						</li>
					</ul>
				</c:if>
			</div>
			<br><br>
			<div class="top-banner-wrap">
				<h1 class="banner-inner">banner</h1>
			</div>

			<h1 class="logo">
				<a href="<c:url value="/"/>">두펀딩</a>
			</h1>

			<div class="mobile-menu-wrap">
				<div class="mobile-menu-scroll">
					<nav id="gnb">
						<h2 class="blind">메인 메뉴</h2>
						<ul>
							<li class="m1 no-sub"><a href="list.prd">홈</a></li>

							<li class="m2"><a href="#">두펀딩</a>
								<div class="secMenu secMenu1" align="center">
									<!--<ul class="secMenu secMenu1">-->
									<ul>
										<li><a href="#">Donation Funding</a></li>
										<li><a href="#">후원 기록</a></li>
									</ul>
								</div></li>
							<li class="m3"><a href="#">펀딩상품</a>
								<div class="secMenu secMenu1" align="center">
									<ul>
										<li><a href="#">진행중인 펀딩</a></li>
										<li><a href="#">마감된 펀딩</a></li>
										<li><a href="#">공개 예정</a></li>
									</ul>
								</div></li>
							<!-- 					<li class="m4 no-sub"> -->
							<li class="m3"><a href="#">커뮤니티</a>
								<div class="secMenu secMenu1" align="center">
									<ul>
										<li><a href="list.bd">게시판</a></li>
									</ul>
								</div></li>
							<li class="m5"><a href="#">고객센터</a>
								<div class="secMenu secMenu1" align="center">
									<ul>
										<li><a href="#">공지사항</a></li>
										<li><a href="#">FAQ</a></li>
										<li><a href="#">QnA</a></li>
									</ul>
								</div></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
	</div>
</body>