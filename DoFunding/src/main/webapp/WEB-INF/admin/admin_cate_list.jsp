<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<%@include file="admin_top.jsp"%>
<script type="text/javascript">
	function update(cnum,pageNumber){
		location.href="admin_cate_update.ad?cnum="+cnum+"&pageNumber="+pageNumber;
	}
	 function selectDelete1(){
			
			var chkArr = document.getElementsByName("rowcheck");

			flag = false;
			for(var i=0;i<chkArr.length;i++){
				if(chkArr[i].checked == true){
					flag = true;
				}

			document.myform.submit();//submit 누른것처럼 동작해라.
			}

		}//selectDelete
</script>
<center>
    <h4 align="center">카테고리 목록</h4>
	<form method="get" action="admin_cate_list.ad">
		<select name="whatColumn">
			<option value="all">전체검색
			<option value="code">코드
			<option value="cname">카테고리명
		</select>
		<input type="submit" value="검색">
	</form>
<br>
		<table border="1"  width="500">
			<td align="left" colspan="6">
				<input type="button" value="삭제" onclick="selectDelete1('${pageInfo.pageNumber}')">
			</td>
			<tr>
				<th  align="center">
					<input type="checkbox" name="allcheck" onclick="allRowCheck(this)">
			 	</th>
				<td  align="center">번호</td>
				<td  align="center">카테고리 코드</td>
				<td  align="center">카테고리명</td>
				<td  align="center">삭제</td>	
				<td  align="center">수정</td>	
			</tr>
		<form name="myform" action="admin_cate_multidelete.ad? method="post">
		<input type="hidden" name="pageNumber" value="${pageInfo.pageNumber }">
        <c:forEach var="category" items="${list}">
					<tr>
						<td align="center" >
							<input type="checkbox" name="rowcheck" value="${category.cnum }">
						</td>
						<td>${category.cnum}</td>
						<td>${category.code}</td>
						<td>${category.cname}</td>
						<td>
							<a href="admin_cate_delete.ad?cnum=${category.cnum}&pageNumber=${pageInfo.pageNumber}">삭제</a>
					    </td>
						<td>
							<input type="button" value="수정" onclick="update('${category.cnum}','${pageInfo.pageNumber}')" >
					    </td>					    
					</tr>
			</c:forEach>			
		</table>	
<br>
	 ${pageInfo.pagingHtml}
</center>
<%@include file="admin_bottom.jsp"%>
	

	
