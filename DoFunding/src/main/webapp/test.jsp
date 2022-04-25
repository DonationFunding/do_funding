<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset=" utf-8"> 
<meta name="author" content="https://www.jb51.net/" />
<title>  </title>
<style type="text/css">
#tx{
width:100px;
}
#pwd{
display:none;
width:100px;
}
</style>
<script type="text/javascript"> 
window.onload=function(){
var tx=document.getElementById("tx");
var pwd=document.getElementById("pwd"); 
tx.onfocus=function(){ 
if(this.value!="  ") 
return; 
this.style.display="none"; 
pwd.style.display="block"; 
pwd.value=""; 
pwd.focus(); 
} 
pwd.onblur=function(){ 
if(this.value!=""){
return; 
} 
this.style.display="none"; 
tx.style.display=""; 
tx.value="  "; 
} 
}
</script> 
</head> 
<body> 
<input type="text" value="  " id="tx"/> 
<input type="password" id="pwd" /> 
</body> 
</html> 