<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin.css">
<script src="<%=request.getContextPath() %>/resources/common_tb.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/resources/css/kfonts2.css" rel="stylesheet">
<title>두펀딩(관리자)</title>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<%=request.getContextPath() %>/resources/js/bootstrap.min.js"></script>
<body>
	<br><br>
	<div id="top-wrap">
		<header class="top-inner">
			<div>
				<c:if test="${sessionScope.loginInfo.id != null}">
					<ul class="subMenu">
						<li>
							&nbsp;${sessionScope.loginInfo.id} 님 
							&nbsp;<a href="#">마이페이지</a> 
							&nbsp;<a href="<%=request.getContextPath() %>/logout.jsp">로그아웃</a>
						</li>
					</ul>
				</c:if>
			</div>
			<br><br>
		
			<div class="top-banner-wrap" >
				<h1 class="logo" align="left">
					<img width="100px" height="100px" src="<%=request.getContextPath() %>/resources/images/위안부소녀상.jpg" alt="<%=request.getContextPath() %>/resources/images/no_image.jpg">
				</h1> 
				<h1 class="banner-inner">Do_<span><font size="3px">nation</font></span>Funding</h1>
			</div>
			<br><br>
			<div class="mobile-menu-wrap">
				<div>
					<nav id="gnb">
						<h2 class="blind">메인 메뉴</h2>
						<ul class="secMenu">
							<li class="m1 no-sub"><a href="main.ad">홈</a></li>
							<li class="m2"><a href="admin_cate_list.ad">카테고리</a>
								<ul class="sec m2_Menu" align="center">
									<li><a href="admin_cate_list.ad">카테고리 목록</a></li>
									<li><a href="admin_cate_insert.ad">카테고리 등록</a></li>		
								</ul>
							</li>
							<li class="m3"><a href="admin_prd_list.ad">펀딩</a>
								<ul class="sec m3_Menu" align="center">
									<li><a href="admin_prd_list.ad">펀딩 목록</a></li>
									<li><a href="admin_prd_insert.ad">펀딩 추가</a></li>
									<li><a href="list.prd">사용자 홈</a></li>
								</ul>
							</li>
							<!-- 					<li class="m4 no-sub"> -->
							<li class="m4"><a href="#">회원관리</a>
								<ul class="sec m4_Menu" align="center">
<!-- 								<li><a href="admin_mem_list.ad">회원 목록</a></li>
 -->								<li><a href="admin_mem_list.ad">회원 목록</a></li>
								</ul>
							</li>
							<li class="m5"><a href="admin_bd_list.ad">게시판</a>
								<ul class="sec m5_Menu" align="center">
									<li><a href="admin_bd_list.ad">게시판 목록</a></li>
								</ul>
							</li>
							<li class="m6"><a href="#">주문내역</a>
								<ul class="sec m6_Menu" align="center">
 									<li><a href="#">주문 내역</a></li>
									<li><a href="#">매출통계?</a></li>
								</ul>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
	</div>
</body>