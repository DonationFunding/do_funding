<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="admin_top.jsp"%>

<center>
	<div>
		<h4 align="center">카테고리 목록</h4>
		<div >
			<form method="get" action="admin_cate_list.ad">
				<select name="whatColumn">
					<option value="all">전체검색
					<option value="code">코드
					<option value="cname">카테고리명
				</select> 				
				<input type="text" name="keyword" >
				<input type="submit" value="검색">
			</form>
		</div>
		<br>
		<table border="1" width="500">
			<tr>
				<td align="left" colspan="6">
					<input type="button" value="삭제" onclick="selectDelete()">
					<input type="button" value="추가" onclick="inserCate()">
				</td>
			</tr>
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
					<tr>
						<td align="center"><input type="checkbox" name="rowcheck"
							value="${cateBean.cnum }"></td>
						<td>${cateBean.cnum}</td>
						<td>${cateBean.code}</td>
						<td>${cateBean.cname}</td>
						<td>
							<input type="button" value="삭제"
							onclick="deleteCate('${cateBean.cnum}','${pageInfo.pageNumber}')">
						<td align="center" >
							<input type="checkbox" name="rowcheck" value="${product.p_num } %>">
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