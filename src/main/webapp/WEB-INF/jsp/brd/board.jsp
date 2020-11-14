<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<style>
   .text_center{
     text-align:center;
   }
   
   p{
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
       <h1 align="center">게시판</h1> 
       
	  <table id="notice" >
	   <tr align="center">
	   <th class="tno">게시판코드</th>
	   <th class="tdate">게시판명</th>
	   <th class="tread">버튼</th>	   
	   </tr>
	   <c:choose>
	    <c:when test="${boardList !=null }" >
		 <c:forEach items="${boardList}" var="list">
		   <tr  align="center">
		      <td>${list.boardCd}</td>  
		      <td> <%-- <a href="/boardInfo.do?boardCd=${list.boardCd}"> --%>${list.boardNm} </td>
		  <div class="clear"></div>
		  <div id="buttons">
		   <td>
		      <input  type="button" onclick="location.href='/boardContentList.do?boardCd=${list.boardCd}'" value="게시글이동"/>
		     <c:if test="${permission == 999 }" >
		       <input  type="button" onclick="location.href='/boardInfo.do?boardCd=${list.boardCd}'" value="게시판상세페이지"/>
		     </c:if>
		      </td>
		   </div> 
		   </tr>
		</c:forEach>
	  </c:when> 
	  <c:otherwise>
	     <tr  align="center">
	         <td colspan="2" > 등록된 게시글이 없습니다.</td >
	     </tr>
	  </c:otherwise>
	</c:choose>
 </table>
    
    <p align="center">
    <input class="button" type="button" onclick="location.href='/index.do'" value="메인화면">
     <c:if test="${permission == 999 }" >
       <input class="button" type="button" onclick="location.href='/insertBoardPage.do'" value="게시판종류추가"></p>
     </c:if>
     </p>
    <div class="clear"></div>
  </article>
   <div class="clear"></div>
  </div>
</body>
</html>