<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title>두펀딩</title>

	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/product.css">
	<script src="<%=request.getContextPath() %>/resources/js/jquery.js"></script>
	<script src="<%=request.getContextPath() %>/resources/common_tb.js"></script>
</head>
<body>
	<div id="top-wrap">
		<header class="top-inner">
			<div class="top-banner-wrap">
				<h1 class="banner-inner">banner</h1>
			</div>
		
			<h1 class="logo">
				<a href="<c:url value="/"/>">두펀딩</a>
			</h1>
			
			<c:if test="${sessionScope.loginInfo.id == null}">
			<ul class="subMenu">
				<li><a href="insertMemberForm.mem">회원가입</a></li>
				<li><a href="login.mem">로그인</a></li>
				<li><a href="">ID/비밀번호 찾기</a></li>
				<li><a href="">비회원 펀딩조회</a></li>
			</ul>
			</c:if>
			
			<c:if test="${sessionScope.loginInfo.id != null}">
			<ul class="subMenu">
				<li><a href="#">찜목록</a></li>
				<li><a href="#">펀딩내역</a></li>
				<li><a href="#">1:1문의</a></li>
				<li><a href="#">마이페이지</a></li>
				<li><a href="<%=request.getContextPath()%>/logout.jsp">로그아웃</a></li>
			</ul>
			</c:if>
			
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
			</div>
		</div>
		
			<p class="mobile-menu-close">
				<button>
					<span class="blind">메뉴닫기</span>
					<span></span>
					<span></span>
				</button>
			</p>
		</header>
	</div>
</body>
</html>

