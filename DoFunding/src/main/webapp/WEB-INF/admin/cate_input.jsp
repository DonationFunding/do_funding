<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
 
 function check(){
	 if (document.forms[0].code.value.length == 0) {
			alert("코드가 누락되었습니다.");	
			return false;
		}
	 if (document.forms[0].cname.value.length == 0) {
			alert("이름이 누락되었습니다.");		
			return false;
		}
}
</script>

 <%@include file ="top.jsp" %>
 <td colspan="6" align="center">
  
  <b>카테고리등록 (cate_input)</b>
  <form method="post" action="cate_input_proc.jsp" name="f">	
	<table border="1" height="100">
		<tr>
			<td bgcolor="yellow" align="center">카테고리코드</td>
			<td><input type="text" name="code"></td>
		</tr>
		<tr>
			<td  bgcolor="yellow" align="center">카테고리이름</td>
			<td><input type="text" name="cname"></td>
		</tr>
		 <tr> 
			<td colspan="2" bgcolor="#ffcc00" align="center">
				<input type="submit" value="등록" onClick="return check()">
				<input type="button" value="취소">  			
			</td>
		</tr>
 </table>
 </form>
  </td>
  <%@include file ="bottom.jsp" %>