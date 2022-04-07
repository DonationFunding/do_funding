<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<font size=6>관리자용</font><br>
<a href="insert.cat">관리자홈</a> |
<a href="<%=request.getContextPath()%>/main.jsp">로그인폼</a> |
<a href="<%=request.getContextPath()%>/logout.jsp"> 로그아웃</a> <br><br>

<table border="1" width="800" height="400">
   <tr>
    <td align="center"> 
     <a href="insert.cat">카테고리 등록</a>
     </td>
    <td align="center"> 
     <a href="list.cat">카테고리 목록</a>
     </td>
    <td align="center"> 
    <a href=" <%=request.getContextPath()%>">상품 등록</a>
    </td>
    <td align="center"> 
    <a href=" <%=request.getContextPath()%>">상품 목록</a>
    </td>
    <td align="center"> 
    <a href="<%=request.getContextPath()%>">쇼핑 내역</a>
    </td>
    <td align="center">
    <a href="<%=request.getContextPath()%>">사용자홀</a>
    </td>  
   </tr>
   <tr height="320"> 