<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<title>login.jsp</title>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
</head>
<c:if test="${cnt == 1 }"><script type="text/javascript">alert("회원가입 성공");</script></c:if>
<center>
<form action="login.mem" method="post">
<div class="container" >
<table class="table" class="text-center"  >
        <h4>로그인</h4>
		<tr align="center" >
		     <td width="35%">
		     </td>
			<th>
				아이디 : <input type="text" name="id">
			</th>
			 <td width="33%">
		     </td>

		</tr>
		<tr align="center">
		    <td>
		    </td>
			<th>
				비밀번호 : <input type="password" name="password">
			</th>
			<td>
		     </td>
		</tr>
		<tr>
			<td colspan="3" align="center">
				<input type="submit" value="로그인"  class="btn btn-default btn-sm">
				<input type="button" value="아이디/비밀번호 찾기"  class="btn btn-default btn-sm" onclick="location.href='findid.mem'">
				<input type="button" value="회원가입"  class="btn btn-default btn-sm" onclick="location.href='insert.mem'">
			</td>
		</tr>
	</table>
	</div>
</form>
</center>
<%@ include file="../common/common_bottom.jsp" %>
