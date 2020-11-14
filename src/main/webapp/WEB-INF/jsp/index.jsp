<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
  <c:when test="${msg == 'ok' && msg != null }">   
        <script>
          window.alert("성공!");
        </script>
  </c:when>
</c:choose>

<!DOCTYPE html>
<html>
<head>
<link href="css/default.css" rel="stylesheet" type="text/css">
<link href="css/front.css" rel="stylesheet" type="text/css">
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<meta charset="UTF-8">
</head>
<body>
	<div id="wrap"> 
	<header>
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
		<nav id ="top_menu" size="50px"> 
			<ul> 
				<li><a href="/index.do" title="메인 화면">HOME</a></li>	
				<li><a href="/loginList.do?id=${id }" title="로그인내역">LOGIN HISTORY</a></li>
				<li><a href="#" title="공사중!">GALLERY</a></li>
				<li><a href="/boardPage.do" title="게시판리스트">BOARD</a></li>	
        	  <c:if test="${permission == 999 }">	
		        <li><a href="/adminIndex.do" title="관리자 페이지">ADMIN PAGE</a></li>
		      </c:if>
			</ul>
		</nav>	  
	</header> 
	
	
	<nav class="img" >
			<img src="../../images/pinkcake1.jpg" width="951" height="600" >
	</nav>
	
	<article id="front"></article> 

<div class="clear"></div>
		<!-- 푸터 들어가는 곳 -->
		<footer>
			<hr>	
			 <div id="foot_logo">	
			 	<a href="/index.do" title="단미드림은 레시피제공사이트입니다">	
					<img src="../../images/logo1.jpg" width="50px"  alt="danmi">	
				</a>			
			 </div>			 
			<div id="copy">
				All contents Copyright 2020 danmidream 2020 danmidream Inc. all rights
				reserved<br> Contact mail:danmi@danmi.com Tel +82 12 123
				4567 Fax +82 12 123 9876
			</div>
			<div id="social">
				<img src="../../images/facebook.gif" width="33" height="33" alt="Facebook">
				<img src="../../images/twitter.gif" width="34" height="34" alt="Twitter">
			</div>
		</footer>
	</div>
</body>
</html>