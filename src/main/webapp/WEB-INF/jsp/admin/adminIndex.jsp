<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<link href="css/default.css" rel="stylesheet" type="text/css">
<link href="css/front.css" rel="stylesheet" type="text/css">
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
</head>
<body>
	<div id="wrap"> 
	<header>
	<c:choose>
	  <c:when test="${id !=null }">
	     <div id="login">
			<span id="myName">
			${id }관리자님 로그인중&nbsp;</span><span id="myInfo"><a href="/userInfo.do?id=${id}">MyIfo</a></span>
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
		<nav id ="top_menu1" > 
			<ul> 
				<li><a href="/allUserList.do" title="회원리스트">회원관리</a></li>	
				<li><a href="/permissionList.do" title="권한리스트">권한리스트</a></li>
				<li><a href="/insertPermissionPage.do" title="권한추가">권한추가</a></li>
				<li><a href="/boardPage.do" title="게시판관리">게시판관리</a></li>
				<li><a href="/insertBoardPage.do" title="게시판추가">게시판추가</a></li>
				<li><a href="/allBoardContentList.do?boardCd=1" title="게시글관리">게시글관리</a></li>
				<li><a href="/index.do" title="메인화면">메인화면</a></li>	
			</ul>
		</nav>	  
	</header> 
	<nav class="img" >
			<img src="/images/pinkcake1.jpg" width="951" height="600" >
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
<%-- 

 <h1 >관리자 링크 목록</h1>
 <c:choose> 
  <c:when test="${permission == 999 }" >  
    <h3> ${id}관리자님 환영합니다</h3>
    <h3><li><a href="/allUserList.do">회원관리</a></li></h3>
    <h3><li><a href="/allLoginRecord.do">로그인전체 내역</a></li></h3>
    <h3><li><a href="/permissionList.do">권한리스트</a></li></h3>
    <h3><li><a href="/insertPermissionPage.do">권한추가</a></li></h3> 
    <h3><li><a href="/allBoardContentList.do?boardCd=1">게시글관리(공지사항)</a></li></h3> 
    <h3><li><a href="/allBoardContentList.do?boardCd=2">게시글관리(자유게시판)</a></li></h3>
    <h3><li><a href="/boardPage.do?msg=admin">게시판관리</a></li></h3> 
    <h3><li><a href="/insertBoardPage.do">게시판추가</a></li></h3> 
   
    <a href="/index.do">홈으로</a>
  </c:when>
 </c:choose>    --%>
</body>
</html>