<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
 <c:if test="${msg == 'ok' }">

	<script>
		window.alert("성공!");
	</script>

</c:if>
 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 </title>
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
			<a href="/addUser.do">join</a>			
		</div>	
	  </c:otherwise>
	</c:choose>


	<div id ="logo">
		<a href="/index.do"  title="단미드림 사이트입니다">
			<img src="../../images/logo1.jpg" width="100px"  alt="danmi">
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

	<div class="clear"></div>
<article>
       <h1 align="center">게시판</h1>
	  <table id="notice">
	   <tr align="center">
		   <th class="tno">게시판코드</th>
		   <th class="tdate">게시판명</th>
		   <th class="tdate">게시판타입</th>
		   <th class="tdate">게시판 순서</th>
		   <th class="tdate">추천여부</th>
		   <th class="tdate">스크랩여부</th>
		   <th class="tdate">댓글여부</th>
		   <th class="tdate">카테고리여부</th>
		   <th class="tdate">읽기권한</th>
		   <th class="tdate">쓰기권한</th>
		   <th class="tdate">사용여부</th>
		   <th class="tread">생성일자</th>
	   </tr>
	   <tr  align="center">
		      <td>${vo.boardCd}</td>  
		      <td> ${vo.boardNm}
		      	<input type="button" onclick="javascript:location.href='/boardContentList.do?boardCd=${vo.boardCd}&pageNum=1'" value="이동"/>
		      </td>
		      <td>${vo.boardTp}</td> 
		      <td>${vo.orderby}</td>
		      <td>${vo.recomYn}</td> 
		      <td>${vo.scrapYn}</td>
		      <td>${vo.replyYn}</td>
		      <td> ${vo.categoryYn}</td>
		      <td>${vo.permRead}</td> 
		      <td> ${vo.permInst}</td> 
		      <td>${vo.useYn}</td> 
		      <td>${vo.regDt}	      
		      </td> 
	   </tr>

 </table>
    <p align="center">
    <input type="button" class="button" onclick="location.href='/index.do'" value="메인화면">
    <input class="button" type="button" onclick="javascript:window.history.back();" value="돌아가기">
  <c:if test="${permission == 999 }">  
   <input class="button" type="button" onclick="location.href='/updateBoardPage.do?boardCd=${vo.boardCd}'" value="수정">
   <input class="button"  type="button" onclick="location.href='/deleteBoard.do?boardCd=${vo.boardCd}'" value="삭제"></p>
 </c:if>
 </article>
 </div>
</body>
</html>