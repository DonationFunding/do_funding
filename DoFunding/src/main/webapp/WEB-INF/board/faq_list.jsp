<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ include file="../common/common_top.jsp" %>    
<style type="text/css">
	body{
		text-align: center;
	}
	table{
		margin: auto;
	}
</style>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/resources/css/kfonts2.css" rel="stylesheet">
</head>
<center>
<h1>공지글 목록(전체 글:${totalCount})</h1>
<div class="container">
<table class="table table-hover table-sm" class="text-center">
	
	<tr>
		<th class="text-center">번호</th>
		<th>제목</th>
		<th class="text-center">작성자</th>
		<th class="text-center">작성일</th>
		<th class="text-center">조회</th>
	</tr>
	
		<c:forEach var="faqBean" items="${faqList}" varStatus="status">
		<tr>
			<td align="center" >${requestScope.totalCount - (requestScope.pageInfo.pageNumber-1)*requestScope.pageInfo.pageSize  - status.index}</td>
			<td>
				<a href="faq_content.bd?faq_num=${faqBean.faq_num}&pageNumber=${pageInfo.pageNumber}" > ${faqBean.faq_subject}</a>			
			</td>
			<td align="center" >${faqBean.faq_writer}</td>
			<td align="center" >
				<fmt:formatDate value="${faqBean.faq_reg_date}" pattern="yyyy-MM-dd HH:mm"/>
			</td>
			<td align="center" >${faqBean.faq_readcount}</td>
		</tr>
		</c:forEach>
</table>
<br><br>
	<div class="container">
		<ul class="pagination pagination-sm">
			${pageInfo.pagingHtml}		
		</ul>
	</div>
</center>

<form action="faq_list.bd" method="get" class="row g-3">
<p>
	<select name="whatColumn">
		<option value="all">선택
		<option value="faq_content">내용
		<option value="faq_subject">제목
	</select>
	<input type="text" name="keyword">
	<input type="submit" value="검색" class="btn btn-default btn-sm">
</p>	
</form>


<%@ include file="../common/common_bottom.jsp" %>  

