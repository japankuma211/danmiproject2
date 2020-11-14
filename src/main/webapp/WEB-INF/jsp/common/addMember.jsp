<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="/css/default.css" rel="stylesheet" type="text/css">
<link href="/css/subpage.css" rel="stylesheet" type="text/css">	
<link rel="icon" href="data:;base64,iVBORw0KGgo=">

<style>
   .text_center{
     text-align:center;
   }
</style>
</head>
<body>
<div id="wrap">
<c:choose>
	  <c:when test="${id !=null }">
	     <div id="login">
			<span id="myName">
			${id }님 로그인중&nbsp;</span><span id="myInfo"><a href="/userInfo.do?id=${id}">MyIfo</a></span>
					 <span id="mylogout"><a href="/logout.do">LogOut</a></span>		
		</div>
	  </c:when>
	  <c:otherwise>
	    <div id = "login">
			<a href="/loginPage.do">login</a> |
			<a href="/addUserPage.do">join</a>			
		</div>	
	  </c:otherwise>
	</c:choose>

	<div class="clear"></div>
	<div id ="logo">
		<a href="/index.do"  title="단미드림 사이트입니다">
			<img src="/images/logo1.jpg" width="100px"  alt="danmi">
		</a>
	</div>
		
	<div class="clear"></div>
<nav id="sub_menu">
<ul>
<li><a href="/index.do">HOME</a></li>
<!-- <li><a href="#">Public News</a></li>
<li><a href="#">Driver Download</a></li>
<li><a href="#">Service Policy</a></li> -->
</ul>
</nav>
 <article>
	<form method="post" action="/addUser.do">
		<h1 class="text_center">회원 가입</h1>
		<table id="notice">
			<tr>
				<td width="200"><p align="right">아이디</td>
				<td width="400"><input type="text" name="id"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">이름</td>
				<td width="400"><input type="text" name="userNm"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">닉네임</td>
				<td width="400"><input type="text" name="userNick"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">비밀번호</td>
				<td width="400"><input type="password" name="password"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">이메일</td>
				<td width="400"><input type="text" name="email"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">폰번호</td>
				<td width="400"><input type="text" name="hphone"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">전화번호</td>
				<td width="400"><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">우편번호</td>
				<td width="400"><input type="text" name="zipcode"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">주소1</td>
				<td width="400"><input type="text" name="addr1"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">주소2</td>
				<td width="400"><input type="text" name="addr2"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">생년월일</td>
				<td width="400"><input type="text" name="birthday"></td>
			</tr>
			<tr>
		       <td width="200"><p>&nbsp;</p></td>
		       <td width="400">
		       <input type="submit" value="가입하기" class="button">
		       <input type="button" onclick="location.href='/index.do'" value="메인홈" class="button">
		       </td>
		    </tr>
		</table>
	</form>
  </article>
 </div>
</body>
</html>