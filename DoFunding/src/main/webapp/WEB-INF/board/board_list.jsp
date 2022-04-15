<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>    
<%@ include file="../common/common_top.jsp" %>    
<head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/kfonts2.css" rel="stylesheet">
</head>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<%=request.getContextPath() %>/resources/js/bootstrap.min.js"></script>

<style type="text/css">
	body{
		text-align: center;
	}
	table{
		margin: auto;
	}
</style>
<center>
<h1>글목록(전체 글:${totalCount})</h1>


<div class="container">
<table class="table table-hover table-sm" class="text-center" style = "bgcolor:">
	
	<tr>
		<th class="text-center">번호</th>
		<th>제목</th>
		<th class="text-center">작성자</th>
		<th class="text-center">작성일</th>
		<th class="text-center">조회</th>
	</tr>
	
		<c:forEach var="bdList" items="${requestScope.bdList}" varStatus="status">
		<tr>
			<td align="center" >${requestScope.totalCount - (requestScope.pageInfo.pageNumber-1)*requestScope.pageInfo.pageSize - status.index}</td>
			<td>
				<c:if test="${bdList.b_re_level>0}">
					<c:set var="wid" value="${bdList.b_re_level*20}"/>
					<img src="<%=request.getContextPath() %>/resources/images/level.gif" width="${wid}" height="15">
					<img src="<%=request.getContextPath() %>/resources/images/화살표2.png" height="15">
				</c:if>

			<a href="content.bd?b_num=${bdList.b_num}&pageNumber=${pageInfo.pageNumber}" > ${bdList.b_subject}</a>
				<!-- 글번호 뿐만 아니라 현재페이지도 넘겨야함! -->					
			<c:if test="${bdList.b_readcount >=10 }">
				<img src='<%=request.getContextPath()%>/resources/images/best2.png' height='20'>
			</c:if>
			</td>
			<td align="center" >${bdList.b_writer}</td>
			<td align="center" >
				<fmt:formatDate value="${bdList.b_reg_date}" pattern="yyyy-MM-dd HH:mm"/>
			</td>
			<td align="center" >${bdList.b_readcount}</td>
		</tr>
		</c:forEach>

</table>
<br><br>
	<div class="container">
		<ul class="pagination pagination-sm">
			${pageInfo.pagingHtml}		
		</ul>
<a href="insert.bd" class="btn btn-default btn-sm pull-right">글쓰기</a>	
	</div>
</center>

<form action="list.bd" method="get" class="row g-3">
<p>
	<select name="whatColumn">
		<option value="all">선택
		<option value="b_content">내용
		<option value="b_subject">제목
		<option value="b_writer">글쓴이
	</select>
	<input type="text" name="keyword">
	<input type="submit" value="검색">
</p>	
</form>
<%@ include file="../common/common_bottom.jsp" %>  
