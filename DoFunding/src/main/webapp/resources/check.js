/**
 * 
 */

function check(){
		//alert(1);
		if($('input[name="writer"]').val()==""){
			alert("이름이 누락되었습니다.");
			$('input[name="writer"]').focus();
			return false;
		}
		if($('input[name="subject"]').val()==""){
			alert("제목이 누락되었습니다.");
			$('input[name="subject"]').focus();
			return false;
		}
		if($('input[name="email"]').val()==""){
			alert("이메일이 누락되었습니다.");
			$('input[name="email"]').focus();
			return false;
		}
		//var con=document.getElementsByName("content");
		//alert(con);
		//$('textarea[name="context"]')
		if($('textarea[name="content"]').val()==""){
			alert("내용을 입력하세요.");
			$('textarea[name="content"]').focus();
			return false;
		}
		if($('input[name="passwd"]').val()==""){
			alert("비밀번호를 입력하세요.");
			$('input[name="passwd"]').focus();
			return false;
		}
		
	}//check

function allRowCheck(allck){ 
	var chkArr = document.getElementsByName("rowcheck");
	var check = allck.checked;	
	if (check) {﻿
        for (var i=0; i<chkArr.length; i++){ //배열의 길이만큼
        	   chkArr[i].checked = true;
        }
    } 
	else {
        for (var i=0; i<chkArr.length; i++) {
          chkArr[i].checked = false;
         }
    }
}// allRowCheck

//선택삭제
function selectDelete(){
	//alert(1);
	var chkArr = document.getElementsByName("rowcheck");
	flag=false; //유효성 검사
	for(var i=0;i<chkArr.length;i++){
		if(chkArr[i].checked==true){
			flag=true;
		}
	}
	if(flag==false){
		alert("삭제할 체크박스를 하나라도 선택하세요.");
		return; //돌아가 밑에는 못 간다.return t/f 중요하지 않다.
	}
	document.myform.submit();//submit 누른것처럼 동작해라.	
}	