<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
   <c:when test="${msg !=null && msg == 'ok' }">
     <script>
       window.alert("성공!");
     </script>
   </c:when>   
</c:choose> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
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
	<table  id="notice">
      <tr align="center">
          <th class="tno">게시판종류</th>
          <th class="tdate">게시글번호</th>
          <th class="tdate">게시글이름</th>
          <th class="tdate">작성자</th>
          <th class="tdate">조회수</th>
          <th class="tdate">게시일</th>
          <th class="tread">삭제여부(N:No/D:Deleted)</th>
      </tr>
      <c:choose>   
         <c:when test="${contentList != null }">
           <c:forEach items="${contentList}" var="board">  
             <tr align="center">
	            <td>${board.boardNm}</td> 
	            <td>${board.contentId}</td>
	            <td><a href="/boardContentInfo.do?contentId=${board.contentId }">${board.title}</td>
	            <td>${board.id}</a></td>   
	            <td>${board.readCnt}</td>   
	            <td>${board.regDt}</td>
	            <td>${board.status }
	            <c:if test="${board.status == 'N'}"> 
	             <input type="button" name="delBtn" onclick="location.href='/deleteBoardContent.do?contentId=${board.contentId}&adminDel=ok&pageNum=${pageNum}&boardCd=${board.boardCd }'" value="삭제">
	            </c:if>
	            <c:if test="${board.status == 'D'}"> 
	             <input type="button" name="delBtn" onclick="location.href='/updateBoardContentUseYn.do?contentId=${board.contentId}&pageNum=${pageNum}&boardCd=${board.boardCd }'" value="사용">
	            </c:if>
	            </td>
            </tr>  
           </c:forEach>
         </c:when> 
	     <c:otherwise>
		     <tr  align="center" >
		        <th colspan="7">
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
		        <a  href="/allBoardContentList.do?boardCd=${boardCd}&pageNum=${startPage - pageBlock}">[이전]</a>	
		     </c:if>
		       <c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
		         <a  href="/allBoardContentList.do?boardCd=${boardCd }&pageNum=${i}">[ ${i} ]</a>
		       </c:forEach>
		     <c:if test="${endPage < pageCount }">
		        <a  href="/allBoardContentList.do?boardCd=${boardCd}&pageNum=${startPage + pageBlock }">[다음]</a>
		     </c:if>
     
       </c:when>
     </c:choose>
     <br><br>
	  <p>
		 <input class="button" type="button" onclick="location.href='javascript:window.history.back();'" value="뒤로">
		 <input class="button" type="button" onclick="location.href='/adminIndex.do'" value="관리자홈">
       <!--   <input class="button" type="button" onclick="location.href='/insertBoardContentPage.do'" value="글쓰기"> -->
      </p>
   </div>
  </article>  
 </div> 
</body>
</html>