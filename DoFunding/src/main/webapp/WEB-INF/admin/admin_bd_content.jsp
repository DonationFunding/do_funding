<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="admin_top.jsp"%>
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
<body>
<h1>글내용 보기</h1>
<table border="1" width="500">
	<tr align="center" >
		<td >글번호</td>
		<td>${bdBean.b_num}</td>
		<td >조회수</td>
		<td>${bdBean.b_readcount}</td>
	</tr>
	<tr align="center">
		<td >작성자</td>
		<td>${bdBean.b_writer}</td>
		<td >작성일</td>
		<td>
			<fmt:formatDate value="${bdBean.b_reg_date}" pattern="yyyy-MM-dd HH:mm"/>
		</td>
	</tr>
	<tr align="center">
		<td >글제목</td>
		<td colspan="3">${bdBean.b_subject}</td>
	</tr>
	<tr height="50">
		<td align="center" >글내용</td>
 		<td colspan="3" >
			${bdBean.b_content}
		</td>
	</tr>

	<tr height="30">
		<td align="center" colspan="4">
			<input type="button" name="delete_btn" value="글삭제"  onclick="location.href='admin_bd_delete.ad?b_num=${bdBean.getB_num()}&pageNumber=${pageNumber }'" >
			<input type="button" name="reple_btn" value="답글쓰기"  onclick="location.href='reply.bd?b_ref=${bdBean.b_ref}&b_re_step=${bdBean.b_re_step}&b_re_level=${bdBean.b_re_level}&pageNumber=${pageNumber}'" >
			<input type="button" name="list_btn" value="글목록" onclick="location.href='admin_bd_list.ad?pageNumber=${pageNumber}'">
		</td>
	</tr>		
</table>
</body> 
<%@include file="admin_bottom.jsp"%>