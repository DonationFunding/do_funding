<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="admin_top.jsp"%>  
<center>
<table border="1">
	<tr>
		<td>회원번호</td>
		<td>아이디</td>
		<td>이름</td>
		<td>생년월일</td>
		<td>가입일</td>
		<td>성별</td>
		<td>핸드폰 번호</td>
		<td>주소</td>
		<td>거래 은행</td>
		<td>계좌번호</td>
		<td>적립포인트</td>
		<td>회원등급</td>
	</tr>

	<c:forEach var="memList" items="${memlist}">
		<tr>
			<td>
				${memList.no }
			</td>
			<td>
				${memList.id }
			</td>
			<td>
				${memList.name }
			</td>
			<td>
				${memList.birthday }
			</td>
			<td>
				${memList.joindate }
			</td>
			<td>
				${memList.gender }
			</td>
			<td>
				${memList.hp1 } - ${memList.hp2 } - ${memList.hp3 }
			</td>
			<td>
				${memList.address1 } ${memList.address2 } 
			</td>
			<td>
				${memList.accountbank }
			</td>
			<td>
				${memList.account }
			</td>
			<td>
				${memList.mpoint }
			</td>
			<td>
				<c:if test="${memList.admin eq '1'}"> 관리자 </c:if>
				<c:if test="${memList.admin eq '0'}"> 
					<c:if test="${memList.accountbank eq null }"> 일반회원 </c:if>
					<c:if test="${memList.accountbank != null }"> 정회원 </c:if>
				</c:if>
				
			</td>
		</tr>
	</c:forEach>

</table>
</center>











<%@include file="admin_bottom.jsp"%>