<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>  
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
<br>replyForm.jsp<br>
<b>답글쓰기</b>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/check.js"></script>

<form action="reply.bd" method="post">
	<input type="hidden" name="pageNumber" value="${pageNumber}">
	<input type="hidden" name="b_ref" value="${bdBean.b_ref}">
	<input type="hidden" name="b_re_step" value="${bdBean.b_re_step}">
	<input type="hidden" name="b_re_level" value="${bdBean.b_re_level}">
<table border="1">
	<tr>
		<td colspan="2" align="right">
			<a href="list.bd?pageNumber=${pageNumber}">글목록</a>
		</td>
	</tr>
	<tr>
		<td align="center">이름</td>
		<td>
			<c:if test="${loginInfo.admin ==1}">
				<input type="text" name="b_writer" value="${sessionScope.loginInfo.id}" readonly>
			</c:if>
			<c:if test="${loginInfo.admin ==0}">
				<input type="text" name="b_writer" value="관리자" >
			</c:if>
		</td>
	</tr>
	<tr>
		<td align="center">제목</td>
		<td><input type="text" name="b_subject" value="[답글]"></td>
	</tr>
	<tr>
		<td align="center">내용</td>
		<td><textarea name="b_content" rows="15" cols="50">호호호</textarea></td>
	</tr>
	<tr>
		<td align="center">비밀번호</td>
		<td><input type="password" name="b_passwd" value="1234"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" name="" value="글쓰기" onclick="return check()">
			<input type="reset" name="" value="다시작성">
			<input type="button" name="" value="목록보기" onclick="location.href='list.bd?pageNumber=${pageNumber}'">
		</td>
	</tr>
</table>
</form>
<%@ include file="../common/common_bottom.jsp" %>  