<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="admin_top.jsp"%>
<script type="text/javascript">
	function update(cnum, pageNumber) {
		location.href = "admin_cate_update.ad?cnum=" + cnum + "&pageNumber="
				+ pageNumber;
	}

	function selectDelete() {

		var chkArr = document.getElementsByName("rowcheck");

		flag = false;
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
						<td><a
							href="admin_cate_delete.ad?cnum=${cateBean.cnum}&pageNumber=${pageInfo.pageNumber}">삭제</a>
						</td>
						<td><input type="button" value="수정"
							onclick="update('${cateBean.cnum}','${pageInfo.pageNumber}')">
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



