<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>  
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
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
</head>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/check.js"></script>

<form action="update.bd?pageNumber=${pageNumber }" method="post" onsubmit="return check()">
<input type="hidden" name="b_num" value="${bdBean.getB_num()}">
<h3>글쓰기</h3>
<div class="container">
<table class="table" class="text-center">
		<tr>
			<td colspan="2" align="right">
				<a href="list.bd">글목록</a>
			</td>
		</tr>
		<tr>
			<th class="text-center">이름</th>
			<td><input type="text" name="b_writer" style="background-color:#fffcf6;" value="${bdBean.b_writer}" readonly></td>
		</tr>
		<tr>
			<th class="text-center">제목</th>
			<td><input type="text" name="b_subject" style="background-color:#fffcf6;" value="${bdBean.getB_subject()}"></td>
		</tr>
		<tr>
			<th class="text-center">내용</th>
			<td>
				<textarea name="b_content" rows="10" cols="50" >${bdBean.getB_content()}</textarea>
			</td>
		</tr>
		<tr>
			<th class="text-center">비밀번호</th>
			<td><input type="password" name="b_passwd"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="" value="수정하기" >
				<input type="reset" name="" value="다시작성">
				<input type="button" name="" value="목록보기" onclick="location.href='list.bd?pageNumber=${pageNumber}'">
			</td>
		</tr>
	</table>
</form>

<%@ include file="../common/common_bottom.jsp" %>