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
<title>게시글</title>
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

	<div class="clear"></div>
<article>
	<h1 align="center">게시글[전체글 개수 : ${totalCount} ]</h1>
	<table id="notice">
      <tr align="center">
          <th class="tno"><b>게시판종류</b></th>
          <th class="tdate"><b>게시글번호</b></th>
          <th class="tdate"><b>게시글이름</b></th>
          <th class="tdate"><b>작성자</b></th>
          <th class="tdate"><b>조회수</b></th>
          <th class="tread"><b>게시일</b></th>
      </tr>
      <c:choose>   
         <c:when test="${contentList != null }">
           <c:forEach items="${contentList}" var="board">  
             <tr align="center">
	            <td>${board.boardNm}</td> 
	            <td>${board.contentId}</td>
	            <td ><a href="/boardContentInfo.do?contentId=${board.contentId }">${board.title}</a>
	            <%-- <c:if test="${board.replyCount !=null }">[${board.replyCount }]</c:if> --%></td>
	            <td>${board.id}</td>   
	            <td>${board.readCnt}</td>   
	            <td>${board.regDt}</td>
            </tr>  
           </c:forEach>
         </c:when> 
	     <c:otherwise>
		     <tr  align="center" >
		        <th colspan="6">
		          <br>등록된 게시글이 없습니다.
		        </th>
		     </tr>
		 </c:otherwise>
    </c:choose> 	
   </table>
   
   <br>
   
	<div align="center">
	<c:choose>
	 <c:when test="${contentList !=null }">
	  
			 <c:if test="${startPage > pageBlock }">
		        <a  href="/boardContentList.do?boardCd=${boardCd}&pageNum=${startPage - pageBlock}">[이전]</a>	
		     </c:if>
		       <c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
		         <a  href="/boardContentList.do?boardCd=${boardCd }&pageNum=${i}">[ ${i} ]</a>
		       </c:forEach>
		     <c:if test="${endPage < pageCount }">
		        <a  href="/boardContentList.do?boardCd=${boardCd}&pageNum=${startPage + pageBlock }">[다음]</a>
		     </c:if>
     
       </c:when>
     </c:choose>
     <br><br>
 </div>
 <div id="buttons" align="center">
	<input class="button" type="button" onclick="location.href='/index.do'" value="메인화면">
	
	<%-- <input type="button" onclick="location.href='boardContentList.do?boardCd=${boardCategoryNo }&pageNum=1'" value="목록"> --%>
    <input class="button" type="button" onclick="location.href='/insertBoardContentPage.do'" value="글쓰기">
 </div>   

  </article>
</div>

</body>
</html>