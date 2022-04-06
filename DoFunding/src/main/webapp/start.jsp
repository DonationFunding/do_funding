<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
start.jsp <br><br><br>

<%
	String viewProduct = request.getContextPath()+"/list.prd";
%>

<a href="<%=viewProduct%>">상품 목록 보기</a> <br><br>

