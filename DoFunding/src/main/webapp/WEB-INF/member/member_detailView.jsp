<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<center>
member_detailView.jsp<br>

<table border="1">
	<tr>
		<td>
			회원번호
		</td>
		<td>
			${loginInfo.no }
		</td>
	</tr>
	<tr>
		<td>
			ID
		</td>
		<td>
			${loginInfo.id }
		</td>
	</tr>
	<tr>
		<td>
			이름
		</td>
		<td>
			${loginInfo.name }
		</td>
	</tr>
	<tr>
		<td>
			생년월일
		</td>
		<td>
			${loginInfo.birthday }
		</td>
	</tr>
	<tr>
		<td>
			가입일
		</td>
		<td>
			${loginInfo.joindate }
		</td>
	</tr>
	<tr>
		<td>
			성별
		</td>
		<td>
			${loginInfo.gender }
		</td>
	</tr>
	<tr>
		<td>
			핸드폰 번호
		</td>
		<td>
			${loginInfo.hp1 }-${loginInfo.hp2 }-${loginInfo.hp3 }
		</td>
	</tr>
	<tr>
		<td>
			주소
		</td>
		<td>
			${loginInfo.address1 } ${loginInfo.address2 }
		</td>
	</tr>
	<tr>
		<td>
			은행
		</td>
		<td>
			${loginInfo.accountbank }
		</td>
	</tr>
	<tr>
		<td>
			입금전용 계좌
		</td>
		<td>
			${loginInfo.account }
		</td>
	</tr>
	<tr>
		<td>
			적립 포인트
		</td>
		<td>
			${loginInfo.mpoint }
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="button" value="정보수정" onclick="location.href='update.mem'">
		</td>
	</tr>
</table>
</center>
<%@ include file="../common/common_bottom.jsp" %>