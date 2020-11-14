<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
<link href="/css/default.css" rel="stylesheet" type="text/css">
<link href="/css/subpage.css" rel="stylesheet" type="text/css">	
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<c:choose>
	<c:when test="${result == 1}">
		<script>
			window.onload=function(){
				alert("회원정보 수정 완료");
			}
		</script>
	</c:when>
	<c:when test="${result == 0}">
		<script>
				window.onload=function(){
					alert("오류발생");
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
<nav id="sub_menu">
			<ul>
				<li><a href="/addUser.do">Join us</a></li>
				<li><a href="#">Company Info</a></li>
			</ul>		
		</nav>
		<article>
			<h1>My Information</h1>
			<form method="post" action="/updateUser.do" id="join" name="f">
			
				<fieldset>
					<legend>회원정보</legend>	
		<table >
			<tr>
				<td width="200"><p align="right">아이디</td>
				<td width="400"><input type="text" name="id" readonly="readonly" value="${userInfo.id}"></td>
			</tr> 
			<tr>
				<td width="200"><p align="right">이름</td>
				<td width="400"><input type="text" name="userNm" value="${userInfo.userNm}"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">닉네임</td>
				<td width="400"><input type="text" name="userNick" value="${userInfo.userNick}"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">이메일</td>
				<td width="400"><input type="text" name="email" value="${userInfo.email}"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">폰번호</td>
				<td width="400"><input type="text" name="hphone" value="${userInfo.hphone}"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">전화번호</td>
				<td width="400"><input type="text" name="phone" value="${userInfo.phone}"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">우편번호</td>
				<td width="400"><input type="text" name="zipcode" value="${userInfo.zipcode}"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">주소1</td>
				<td width="400"><input type="text" name="addr1" value="${userInfo.addr1}"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">주소2</td>
				<td width="400"><input type="text" name="addr2" value="${userInfo.addr2}"></td>
			</tr>
			</table>
			<div class="clear" ></div>
				<div id ="buttons" >
		       
		       <input type="submit" value="수정하기"  class="submit" >
		       <input type="button" onclick="location.href='/index.do'" value="돌아가기"  class="submit" >
		       
		   </div>		 
			
	</form>
  </article>	
</div>
</body>
</html>