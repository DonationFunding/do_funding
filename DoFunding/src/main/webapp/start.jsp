<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
start.jsp <br><br><br>

<%
	String viewProduct = request.getContextPath()+"/list.prd";
%>

<<<<<<< HEAD
<input type="button" value="메인페이지" onclick="location.href='list.prd'">
<input type="button" value="관리자" onclick="location.href='main.ad'">
<input type="button" value="로그인" onclick="location.href='login.mem'">
=======
<a href="<%=viewProduct%>">상품 목록 보기</a> <br><br>

>>>>>>> refs/remotes/origin/do-hjh
