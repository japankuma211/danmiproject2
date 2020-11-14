<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/css/default.css" rel="stylesheet" type="text/css">
<link href="/css/subpage.css" rel="stylesheet" type="text/css">
<!DOCTYPE html>
<html>  
<head>
<meta charset="UTF-8">
<title>로그인</title>
<c:set var="result" value="${param.result}"/>
<c:choose>
	<c:when test="${result=='loginFailed'}">
		<script>
			window.onload=function(){
				alert("아이디 혹은 비밀번호가 틀립니다. 다시 로그인 하세요");
			}
		</script>
	</c:when>
</c:choose>
<style>
   .text_center{
     text-align:center;
   }
</style>
</head>
<body>
<div id="wrap">
<div id="sub_img_member"></div>
<nav id="sub_menu">
<ul>
<li><a href="#">Join us</a></li>
<li><a href="#">Privacy policy</a></li>
</ul>
</nav>
<article>
	<form method="post" action="/login.do"  id="join">
		
		<div class="clear"></div>
			<fieldset>
		<legend>로그인</legend>
		<label>아이디</label>
		<input type="text" name="id"><br>
		<label>비밀번호</label>
		<input type="password" name="password"><br>
	</fieldset>
			<div class="clear"></div>
			<div id="buttons">
			<tr>
		       <td width="200"><p>&nbsp;</p></td>
		       <td width="400"><input type="submit" value="로그인" class="submit"><input type="button" onclick="location.href='/'" value="돌아가기" class="cancel"></td>
		    </tr>
		    </div>
		
	</form>
</article>
<div class="clear"></div>
 </div>	
</body>
</html>