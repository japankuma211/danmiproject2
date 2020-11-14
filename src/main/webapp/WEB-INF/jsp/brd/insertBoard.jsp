<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<meta charset="UTF-8">
<title>게시판 추가</title>
<link href="/css/default.css" rel="stylesheet" type="text/css">
<link href="/css/subpage.css" rel="stylesheet" type="text/css">	
<link rel="icon" href="data:;base64,iVBORw0KGgo=">

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
	<h1 align="center">게시글</h1>
<form action="/insertBoard.do"  method="post"  >
	
	<table id="notice">
		
		<tr align="center">
		    <th colspan="">게시판타입</th>
		    <td><select name="boardTp" >
		       <option value="N">일반형</option>
		       <option value="I">이미지형</option>
		       <option value="C">캘린더형</option>     
		    </select>
		  </td>	
		</tr>
	  <tr align="center">
		   <th colspan="">게시판코드</th>
		   <td colspan=""><input type="text" name="boardCd" size="62px"></td>
	  </tr>
	  <tr align="center">
		   <th colspan="">게시판이름</th>
		   <td colspan=""><input type="text" name="boardNm" size="62px"></td>
		 
	  </tr>
	  		
	</table><br>
	<div align="center">
	  <input class="button"  type="button" onclick="location.href='/index.do'" value="메인화면">
	  <input class="button" type="submit"  value="게시판추가">
	  <input class="button" type="reset" value="취소">
    </div>
  </form>
  </article>
 </div>
</body>


</html>