<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
<%@ include file="common.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/product.css">
<script src="<%=request.getContextPath() %>/resources/common_tb.js"></script>

=======
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<!DOCTYPE html>
<html>
>>>>>>> refs/remotes/origin/do-hjh
<head>
<<<<<<< HEAD
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/resources/css/kfonts2.css" rel="stylesheet">

<title>두펀딩</title>

</head>
=======
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title>두펀딩</title>
>>>>>>> refs/remotes/origin/do-hjh

	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/product.css">
	<script src="<%=request.getContextPath() %>/resources/js/jquery.js"></script>
	<script src="<%=request.getContextPath() %>/resources/common_tb.js"></script>
</head>
<body>
	<div id="top-wrap">
<<<<<<< HEAD
		<header class="top-inner">		
			<c:if test="${sessionScope.loginInfo.id == null}">
				<ul class="subMenu">
					<li>
						&nbsp;<a href="login.mem">로그인</a>
						&nbsp;<a href="insert.mem">회원가입</a>
						&nbsp;<a href="findid.mem">ID/비밀번호 찾기</a>
						&nbsp;<a href="">비회원 펀딩조회</a>
					</li>
				</ul>
=======
		<header class="top-inner">
			<div class="top-banner-wrap">
				<h1 class="banner-inner">banner</h1>
			</div>
		
			<h1 class="logo">
				<a href="<c:url value="/"/>">두펀딩</a>
			</h1>
			
			<c:if test="${sessionScope.id == null}">
			<ul class="subMenu">
				<li><a href="insertMemberForm.mem">회원가입</a></li>
				<li><a href="login.mem">로그인</a></li>
				<li><a href="">ID/비밀번호 찾기</a></li>
				<li><a href="">비회원 펀딩조회</a></li>
			</ul>
>>>>>>> refs/remotes/origin/do-hjh
			</c:if>
			
<<<<<<< HEAD
			<c:if test="${sessionScope.loginInfo.id  != null}">
				<ul class="subMenu">
					<li>
						<c:if test="${loginInfo.admin == 0}">
						&nbsp;<a href="main.ad">관리자 페이지</a>
						</c:if>
						&nbsp;<a href="<%=request.getContextPath()%>/logout.jsp">로그아웃</a>
						&nbsp;<a href="memberInfo.mem">회원정보</a>
						&nbsp;<a href="findid.mem">찜목록</a>
						&nbsp;<a href="">펀딩조회</a>
					</li>
				</ul>
=======
			<c:if test="${sessionScope.id != null}">
			<ul class="subMenu">
				<li><a href="#">찜목록</a></li>
				<li><a href="#">펀딩내역</a></li>
				<li><a href="#">1:1문의</a></li>
				<li><a href="#">마이페이지</a></li>
				<li><a href="#">로그아웃</a></li>
			</ul>
>>>>>>> refs/remotes/origin/do-hjh
			</c:if>
<<<<<<< HEAD
			<br><br>

			<div class="top-banner-wrap">
				<h1 class="banner-inner">banner</h1>
			</div>
=======
			
			<p class="mobile-menu-open">
				<button>
					<span class="blind">메뉴 열기</span>
					<span></span>
					<span></span>
					<span></span>
				</button>
			</p>
			
		<div class="mobile-menu-wrap">
			<div class="mobile-menu-scroll">
				<nav id="gnb">
					<h2 class="blind">메인 메뉴</h2>
					<ul>
						<li class="m1 no-sub">
							<a href="#">홈</a>
						</li>
>>>>>>> refs/remotes/origin/do-hjh

<<<<<<< HEAD
			<h1 class="logo">
				<a href="<c:url value="list.prd"/>">두펀딩</a>
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
										<li><a href="list.prd?whatColumn=p_ing">진행중인 펀딩</a></li>
										<li><a href="list.prd?whatColumn=p_end">마감된 펀딩</a></li>
										<li><a href="list.prd?whatColumn=p_future">공개 예정</a></li>
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
=======
						<li class="m2">
							<a href="#">두펀딩</a>
							<ul class="secMenu secMenu1">
								<li><a href="#">Donation Funding</a></li>
								<li><a href="#">후원 기록</a></li>
							</ul>
						</li>
						<li class="m3">
							<a href="#">펀딩상품</a>
							<div class="secMenu secMenu2">
								<ul>
									<li><a href="#">진행중인 펀딩</a></li>
									<li><a href="#">마감된 펀딩</a></li>
									<li><a href="#">공개 예정</a></li>
								</ul>
							</div>
						</li>
						<li class="m4 no-sub">
							<a href="#">커뮤니티</a>
						</li>
						<li class="m5">
							<a href="#">고객센터</a>
							<ul class="secMenu secMenu3">
								<li><a href="#">공지사항</a></li>
								<li><a href="#">FAQ</a></li>
								<li><a href="#">QnA</a></li>
							</ul>
						</li>
					</ul>
				</nav>
>>>>>>> refs/remotes/origin/do-hjh
			</div>
		</header>
	</div>
</body>
</html>

