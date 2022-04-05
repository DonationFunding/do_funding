
<%@page import="category.model.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="cb" class="category.model.CategoryBean" />
<jsp:setProperty property="*" name="cb" />

<%
CategoryDAO cdao = CategoryDAO.getInstance();
int cnt = cdao.insertCatogory(cb);
String msg="", url=null;
if(cnt>0){
	msg = "카테고리 삽입 성공";
	url = "cate_list.jsp";
}
else{
	msg = "카테고리 삽입 실패";	
	url = "cate_input.jsp";
}
%>

<script type="text/javascript">
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>






















