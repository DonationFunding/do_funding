<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<<<<<<< HEAD
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
</head>
=======
<script type="text/javascript">
	function check(myform){
		if (myform.password.value.length==0){
			alert("비밀번호를 입력하세요.");
			myform.password.focus();
			return false;
		}
		if (myform.repassword.value != myform.password.value){
			alert("비밀번호가 일치하지 않습니다.");
			myform.repassword.focus();
			return false;
		}
	}
</script>
>>>>>>> refs/remotes/origin/do-pms
<center>
<<<<<<< HEAD
<br>
<h3>비밀번호 재설정</h3>
<br>

<form:form commandName="memberBean" action="update.mem" method="post"> 
	<div class="container">
    <table class="table" class="text-center">
     
		<tr aling="center">
			<th class="text-center">
			     아이디 :	<input type="text" name="id" <c:if test="${loginInfo.id != null}">value="${loginInfo.id }" readonly</c:if>>
				<form:errors cssClass="err" path="id"/>
			<th>			
=======
<title>update.jsp</title>
<form name="myform" action="resetpw.mem" method="post"> 
	<table border="1">
		<tr>
			<td align="center" width="130px">아이디 :</td>
			<td>
				<input type="text" name="id" <c:if test="${loginInfo.id != null}">value="${loginInfo.id }" readonly</c:if>>
			</td>
			
>>>>>>> refs/remotes/origin/do-pms
		</tr>
<<<<<<< HEAD
		<tr aling="center">
			<th class="text-center">
			     패스워드 : <input type="password" name="password">
				<form:errors cssClass="err" path="password"/>
			<th>			
=======
		<tr>
			<td align="center">패스워드 :</td>
			<td>
				<input type="password" name="password">
			</td>
>>>>>>> refs/remotes/origin/do-pms
		</tr>
		<tr aling="center">
			<th class="text-center">
			     패스워드 확인 : <input type="password" name="repassword">
			<th>			
		</tr>
<<<<<<< HEAD
		<tr aling="center">
			<th class="text-center">
			     이름 : <input type="text" name="name" <c:if test="${loginInfo.name != null}">value="${loginInfo.name }" readonly</c:if>>
				<form:errors cssClass="err" path="name"/>
			<th>			
=======
		<tr>
			<td align="center">이름 :</td>
			<td>
				<input type="text" name="name" <c:if test="${loginInfo.name != null}">value="${loginInfo.name }" readonly</c:if>>
			</td>
>>>>>>> refs/remotes/origin/do-pms
		</tr>
<<<<<<< HEAD
		<tr aling="center">
			<th class="text-center">
			     생년월일 : 
			     <c:set var="birthday">
				<fmt:parseDate value="${loginInfo.birthday}" var="dateValue" pattern="yyyy-MM-dd" />
				<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd" />	
			    </c:set> 
			     <input type="date" name="birthday"  style = "height : 30px;" <c:if test="${loginInfo.birthday != null}">value="${birthday }" readonly</c:if>>
				<form:errors cssClass="err" path="birthday"/>
			<th>			
=======
		<c:set var="birthday">
				<fmt:parseDate value="${loginInfo.birthday}" var="dateValue" pattern="yyyy-MM-dd" />
				<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd" />	
		</c:set> 
		<tr>
			<td align="center">생년월일 :</td>
			<td>
				<input type="date" name="birthday" <c:if test="${loginInfo.birthday != null}">value="${birthday }" readonly</c:if>>
			</td>
>>>>>>> refs/remotes/origin/do-pms
		</tr>
		<tr>
<<<<<<< HEAD
			<td colspan="2" align="center">
			<input type="submit" value="변경하기"  class="btn btn-default btn-sm">
			</td>
=======
			<td colspan="2" align="center"><input type="submit" value="변경하기" onclick="return check(myform)"></td>
>>>>>>> refs/remotes/origin/do-pms
		</tr>
	</table>
<<<<<<< HEAD
	</div>
</form:form>
=======
</form>
>>>>>>> refs/remotes/origin/do-pms
</center>
<%@ include file="../common/common_bottom.jsp" %>