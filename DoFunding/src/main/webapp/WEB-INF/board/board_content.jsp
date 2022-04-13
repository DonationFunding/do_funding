<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>  
<%@ include file="../common/common_top.jsp" %>	 
content.jsp<br>
<style type="text/css">
	body{
		text-align: center;
	}
	textarea{
		width: 100%;
		resize: none;
	}
	table{
		margin:auto;
	}
</style>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
</head>
<body>
<h1>글내용 보기</h1>
<div class="container">
<table class="table" class="text-center">
	<tr align="center">
	    <th class="text-center">제목</th>
	    <td colspan="5" align="left">${article.subject}</td>
	</tr>
	<tr>
		<th class="text-center" width="100" >작성자</th>
		<td width="250">${article.writer}</td>
		<th class="text-center" width="100">작성일</th>
		<td width="350"><fmt:formatDate value="${article.reg_date}" pattern="yyyy-MM-dd HH:mm"/></td>		
		<th class="text-center" width="100">조회수</th>
		<td>${article.readcount}</td>
	</tr>


	<tr height="200">
		<th class="text-center">글내용</th>
<%-- 		
		<td colspan="3" >
			<textarea name=content rows="2"  readonly="readonly" >${article.getContent() }</textarea>
		</td> 
--%>
 		<td colspan="6" >
			${article.getContent() }
		</td>
	</tr>

	<tr height="30">
		<td align="center" colspan="6">
			<input type="button" name="update_btn" value="글수정" <%-- <c:if test="${sessionScope.loginInfo.id != article.writer}"> disabled </c:if> --%>  onclick="location.href='update.bd?num=${article.getNum()}&pageNumber=${pageNumber}'" >
			<input type="button" name="delete_btn" value="글삭제" <c:if test="${sessionScope.loginInfo.id != article.writer}"> disabled </c:if> onclick="location.href='delete.bd?num=${article.getNum()}&pageNumber=${pageNumber }'" >
			<input type="button" name="reple_btn" value="답글쓰기" <c:if test="${sessionScope.loginInfo == null}"> disabled </c:if> onclick="location.href='reply.bd?ref=${article.getRef()}&re_step=${article.getRe_step()}&re_level=${article.getRe_level()}&pageNumber=${pageNumber}'" >
			<input type="button" name="list_btn" value="글목록" onclick="location.href='list.bd?pageNumber=${pageNumber}'">
		</td>
	</tr>		
</table>
</div>
</body> 

<br><br>
<%@ include file="../common/common_bottom.jsp" %>