
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String[] rowcheck=request.getParameterValues("rowcheck");

	GprojectDAO mdao = GprojectDAO.getInstance();
	int cnt = mdao.multiDeleteGproject(rowcheck);
	String msg="", url=null;
	if(cnt>0){
		msg = "선택하신 과제가 삭제되었습니다.";
		url = "proj_list.jsp";
	}
	else{
		msg = "선택하신 과제 삭제에 실패했습니다.";	
		url = "proj_list.jsp";
	}
%>
	<script type="text/javascript">
		alert("<%=msg%>");
		location.href="<%=url%>";
	</script>
