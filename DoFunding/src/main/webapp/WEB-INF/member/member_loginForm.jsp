<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<title>login.jsp</title>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<% 
	if(session.getAttribute("msg") != null){
	String msg=(String)session.getAttribute("msg");
	out.println("<script> alert('"+msg+"');</script>");
	session.removeAttribute("msg");
}%>
<center>
<form action="login.mem" method="post">
<div class="container" >
<table class="table" class="text-center"  >
        <h4>로그인</h4>
		<tr align="center" >
		     <td width="35%">
		     </td>
			<th>
				아이디 : <input type="text" name="id" >
			</th>
			 <td width="33%">
		     </td>

		</tr>
		<tr align="center">
		    <td>
		    </td>
			<th>
				비밀번호 : <input type="password" name="password">
			</th>
			<td>
		     </td>
		</tr>
		<tr>
			<td colspan="3" align="center">
				<input type="submit" value="로그인"  class="btn btn-default btn-sm">
				<input type="button" value="아이디/비밀번호 찾기"  class="btn btn-default btn-sm" onclick="location.href='findid.mem'">
				<input type="button" value="회원가입"  class="btn btn-default btn-sm" onclick="location.href='insert.mem'">
			</td>
		</tr>
		<tr>
			<td colspan="3" align="center">
				<span onclick="kakaoLogin();">
			      <a href="javascript:void(0)">
			          <img src="<%=request.getContextPath()%>/resources/images/kakao_login.png">
			      </a>
				</span>
				<span onclick="kakaoLogout();">
			      <a href="javascript:void(0)">
			          <span>카카오 로그아웃</span>
			      </a>
				</span>
			</td>
		</tr>

<script>
Kakao.init('e853cba823ade770505470a9269644bb'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() { //클릭시에
    Kakao.Auth.login({
      success: function (response) {	
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
    	Kakao.Auth.logout()
    	/* Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      }) */
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>				
	</table>
	</div>
</form>

</center>
<%@ include file="../common/common_bottom.jsp" %>
