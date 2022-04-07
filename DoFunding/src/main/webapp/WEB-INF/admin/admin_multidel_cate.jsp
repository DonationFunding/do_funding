<%@page import="com.gproduct.DcategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String[] rowcheck=request.getParameterValues("rowcheck");

	DcategoryDAO ddao=DcategoryDAO.getInstance();
	int cnt = ddao.multiDeleteCategory(rowcheck);
	String msg="", url=null;
	if(cnt>0){
		msg = "선택하신 부서가 삭제되었습니다.";
		url = "dep_list.jsp";
	}
	else{
		msg = "선택하신 부서 삭제에 실패했습니다.";	
		url = "dep_list.jsp";
	}
%>
	<script type="text/javascript">
		alert("<%=msg%>");
		location.href="<%=url%>";
	</script>
