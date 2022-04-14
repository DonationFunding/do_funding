<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>  
writeForm.jsp<br>
<style type="text/css">
	body{
		text-align: center;
	}
	table{
		margin: auto;
	}
</style>
<script type="text/javascript">
	function list(){
		location.href="list.bd"; 
	}
</script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/style.css">

<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/check.js"></script>
<body>
<b>글쓰기</b>
<form action="insert.bd" method="post">
<table border="1">
	<tr>
		<td colspan="2" align="right">
			<a href="boardList.bv">글목록</a>
		</td>
	</tr>
	<tr>
		<td align="center" >이름</td>
		<td><input type="text" name="b_writer" value="${sessionScope.loginInfo.id}" readonly></td>
	</tr>
	<tr>
		<td align="center" >제목</td>
		<td><input type="text" name="b_subject" value="제목"></td>
	</tr>
	<tr>
		<td align="center" >내용</td>
		<td><textarea name="b_content" rows="15" cols="50">호호호</textarea></td>
	</tr>
	<tr>
		<td align="center" >비밀번호</td>
		<td><input type="password" name="b_passwd" value="1234" ></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" name="" value="글쓰기" onclick="return check()">
			<input type="reset" name="" value="다시작성">
			<input type="button" name="" value="목록보기" onclick="list()">
		</td>
	</tr>
</table>
</form>
</body>
<%@ include file="../common/common_bottom.jsp" %>  