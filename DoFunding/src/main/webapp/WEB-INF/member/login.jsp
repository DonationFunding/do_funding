<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title>login.jsp</title>
no: ${loginInfo.no}<br>
admin: ${loginInfo.admin}<br>
id: ${loginInfo.id}<br>
password: ${loginInfo.password}<br>
name: ${loginInfo.name}<br>
birthday: ${loginInfo.birthday}<br>
joindate: ${loginInfo.joindate}<br>
gender: ${loginInfo.gender}<br>
hp1: ${loginInfo.hp1}<br>
hp2: ${loginInfo.hp2}<br>
hp3: ${loginInfo.hp3}<br>
address1: ${loginInfo.address1}<br>
address2: ${loginInfo.address2}<br>
accountbank: ${loginInfo.accountbank}<br>
account: ${loginInfo.account}<br>
mpoint: ${loginInfo.mpoint}<br>




<center>
<form action="login.mem" method="post">
	<table border="1">
		<tr>
			<td width="100">ID : </td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td width="100">PW : </td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan="2" width="100">
				<input type="submit" value="로그인"> 
				<input type="button" value="회원가입" onclick="location.href='insert.mem'">
			</td>
		</tr>
	</table>

</form>
</center>