<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="admin_top.jsp"%>
<script type="text/javascript">
	function selectDelete() {

		var chkArr = document.getElementsByName("rowcheck");

		var flag = false;
		for (var i = 0; i < chkArr.length; i++) {
			if (chkArr[i].checked == true) {
				flag = true;
			}
		}
		if (flag == false) {
			alert("삭제할 체크박스를 하나라도 선택하세요.");
			return; //돌아가 밑에는 못 간다.return t/f 중요하지 않다.
		}
			document.myform.submit();//submit 누른것처럼 동작해라.

	}//selectDelete
</script>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/kfonts2.css"
	rel="stylesheet">
</head>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<center>
	<h1>글목록(전체 글:${totalCount})</h1>
	<form action="admin_bd_list.ad" method="get">
		<p>
			<select name="whatColumn">
				<option value="all">선택
				<option value="b_content">내용
				<option value="b_subject">제목
				<option value="b_writer">글쓴이
			</select> 
			<input type="text" name="keyword"> <input type="submit" value="검색">
		</p>
	</form>

	<table width="700" border="1">
		<tr>
			<td align="left" colspan="7">
				<input type="button" value="삭제" onclick="selectDelete()">
			</td>
		</tr>	
		<tr>
			<th align="center">
				<input type="checkbox" name="allcheck" onclick="allRowCheck(this)">
			</th>
			<th align="center">번호</th>
			<th align="center">제목</th>
			<th align="center">작성자</th>
			<th align="center">작성일</th>
			<th align="center">조회</th>
			<th align="center">삭제</th>
		</tr>
		<form name="myform" action="admin_bd_multidelete.ad?" method="post">
		<input type="hidden" name="pageNumber" value="${pageInfo.pageNumber }">
		<c:forEach var="bdBean" items="${requestScope.bdList}" varStatus="status">
			<tr>
				<td align="center">
					<input type="checkbox" name="rowcheck" value="${bdBean.b_num}">
				</td>
				<td align="center">${requestScope.totalCount - (requestScope.pageInfo.pageNumber-1)*requestScope.pageInfo.pageSize - status.index}</td>
				<td><c:if test="${bdBean.b_re_level>0}">
						<c:set var="wid" value="${bdBean.b_re_level*20}" />
						<img
							src="<%=request.getContextPath() %>/resources/images/level.gif"
							width="${wid}" height="15">
						<img src="<%=request.getContextPath()%>/resources/images/re.gif">
					</c:if> <a
					href="admin_bd_content.ad?b_num=${bdBean.b_num}&pageNumber=${pageInfo.pageNumber}">
						${bdBean.b_subject}</a> <!-- 글번호 뿐만 아니라 현재페이지도 넘겨야함! --> 
						<c:if test="${bdBean.b_readcount >=10 }">
						<img src='<%=request.getContextPath()%>/resources/images/hot.gif'
							height='15'>
					</c:if></td>
				<td align="center">${bdBean.b_writer}</td>
				<td align="center"><fmt:formatDate
						value="${bdBean.b_reg_date}" pattern="yyyy-MM-dd" /></td>
				<td align="center">${bdBean.b_readcount}</td>
				<td><a
					href="admin_bd_delete.ad?b_num=${bdBean.b_num}&pageNumber=${pageInfo.pageNumber}">삭제</a>
				</td>
			</tr>
		</c:forEach>
		</form>
	</table>
	<br>
	<br>
	<div class="container">
		<ul class="pagination pagination-sm">${pageInfo.pagingHtml}
		</ul>
	</div>
</center>
<%@include file="admin_bottom.jsp"%>