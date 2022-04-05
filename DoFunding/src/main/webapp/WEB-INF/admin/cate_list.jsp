

<%@page import="java.util.List"%>
<%@page import="category.model.CategoryBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="category.model.CategoryDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="top.jsp"%>

<%
	CategoryDao cdao = CategoryDao.getInstance();
	List<CategoryBean> list = cdao.categoryAll(); 
%>

	<td colspan="6" align="center" valign="top">
		<font size="3">카테고리 목록(cate_list.jsp)</font>
		<table border="1"  width="500">
			<tr bgcolor="yellow">
				<td  align="center">번호</td>
				<td  align="center">카테고리 코드</td>
				<td  align="center">카테고리명</td>
				<td  align="center">삭제</td>
				
			</tr>
			<%
				if(list.size() == 0){
					out.println("<tr><td colspan=4 align=center>등록된 카테고리가 없습니다.</td></tr>");
				}
				for( int i=0;i<list.size();i++){
					CategoryBean cb = list.get(i);
			%>
					<tr>
						<td><%=cb.getCnum() %></td>
						<td><%=cb.getCode() %></td>
						<td><%=cb.getCname() %></td>
						<td><a href="cate_delete.jsp?cnum=<%=cb.getCnum() %>">삭제</a></td>
					</tr>
			<%					
				}//for
			%>
		</table>
	</td>
	<%@include file="bottom.jsp"%>
