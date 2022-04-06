<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>    

<script type="text/javascript">
	function insert(){
		location.href = "insert.prd";
	}
</script>

product_list.jsp<br>

<br>
접속자 아이디 : ${loginInfo.id }<br>
<a href="start.jsp">시작페이지</a> <br>
<a href="logout.jsp">로그아웃</a>

<center>
<h2>상품 리스트 화면(ProductList.jsp)</h2>
<form action="list.prd" method="get">
	<select name="whatColumn">
		<option value="">선택
		<option value="name">상품명
		<option value="contents">설명
	</select>
	<input type="text" name="keyword">
	<input type="submit" value="검색">
</form>
<table border="1">
	<tr>
		<td align="right" colspan="6">
			<input type="button" value="추가하기" onclick="insert()">
		</td>
	</tr>
	<tr>
		<th>제품 번호</th>
		<th>작성자</th>
		<th>설명</th>
		<th>가격</th>
		<th>삭제</th>
		<th>수정</th>
	</tr>
</table>
<br>
	${pageInfo.pagingHtml }
</center>
<br>