<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="admin_top.jsp"%>
<<<<<<< HEAD
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
=======
<script type="text/javascript">
	function update(cnum,pageNumber){
		location.href="admin_cate_update.ad?cnum="+cnum+"&pageNumber="+pageNumber;
	}
</script>
>>>>>>> refs/remotes/origin/do-hjh
<center>
<<<<<<< HEAD
	<div>
		<h4 align="center">카테고리 목록</h4>
		<div >
			<form method="get" action="admin_cate_list.ad">
				<select name="whatColumn">
					<option value="all">전체검색</option>
					<option value="code">코드</option>
					<option value="cname">카테고리명</option>
				</select> 				
				<input type="text" name="keyword" >
				<input type="submit" value="검색">
			</form>
		</div>
		<br>
		<table border="1" width="500">
=======
    <h4 align="center">카테고리 목록</h4>
	<form method="get" action="admin_cate_list.ad">
		<select name="whatColumn">
			<option value="all">전체검색
			<option value="code">코드
			<option value="cname">카테고리명
		</select>
		<input type="submit" value="검색">
	</form>
<br>
		<table border="1"  width="500">
>>>>>>> refs/remotes/origin/do-hjh
			<tr>
				<td align="left" colspan="6">
					<input type="button" value="삭제" onclick="selectDelete()">
					<input type="button" value="추가" onclick="inserCate()">
				</td>
			</tr>
<<<<<<< HEAD
			<tr>
				<th align="center">
					<input type="checkbox" name="allcheck" onclick="allRowCheck(this)">
				</th>
				<th align="center">번호</th>
				<th align="center">카테고리 코드</th>
				<th align="center">카테고리명</th>
				<th align="center">삭제</th>
				<th align="center">수정</th>
			</tr>
			<form name="myform" action="admin_cate_multidelete.ad?" method="post">
				<input type="hidden" name="pageNumber" value="${pageInfo.pageNumber }">
				<c:forEach var="cateBean" items="${cateList}">
=======
        <c:forEach var="category" items="${list}">
>>>>>>> refs/remotes/origin/do-hjh
					<tr>
<<<<<<< HEAD
						<td align="center"><input type="checkbox" name="rowcheck"
							value="${cateBean.cnum }"></td>
						<td>${cateBean.cnum}</td>
						<td>${cateBean.code}</td>
						<td>${cateBean.cname}</td>
						<td>
							<input type="button" value="삭제"
							onclick="deleteCate('${cateBean.cnum}','${pageInfo.pageNumber}')">
=======
						<td align="center" >
							<input type="checkbox" name="rowcheck" value="${product.p_num } %>">
>>>>>>> refs/remotes/origin/do-hjh
						</td>
						<td><input type="button" value="수정"
							onclick="updateCate'${cateBean.cnum}','${pageInfo.pageNumber}')">
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
	</div>
</center>
<%@include file="admin_bottom.jsp"%>

<<<<<<< HEAD


=======
	
>>>>>>> refs/remotes/origin/do-hjh
