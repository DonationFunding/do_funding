<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>    
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin.js"></script>
 --%>
<center>
	<font size=6>관리자용</font><br> 
	<a href="main.ad">관리자홈</a> | 
	<a href="<%=request.getContextPath()%>/main.jsp">로그인폼</a> | 
	<a href="<%=request.getContextPath()%>/logout.jsp"> 로그아웃</a> 
	<br><br>
	<table border="1" width="800">
		<tr>
			<td align="center"><a href="admin_cate_insert.ad">카테고리 등록</a></td>
			<td align="center"><a href="admin_cate_list.ad">카테고리 목록</a></td>
			<td align="center"><a href="admin_prd_insert.ad">상품 등록</a></td>
			<td align="center"><a href="admin_prd_list.ad">상품 목록</a></td>
			<td align="center"><a href="<%=request.getContextPath()%>">쇼핑내역</a></td>
			<td align="center"><a href="list.prd">사용자홀</a></td>
		</tr>
	</table>
</center>