<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
 <c:if test="${msg =='ok' }">
    <script>
    
    window.alert("성공!");
    </script>
 
 </c:if>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="/css/default.css" rel="stylesheet" type="text/css">
<link href="/css/subpage.css" rel="stylesheet" type="text/css">	
<link rel="icon" href="data:;base64,iVBORw0KGgo=">

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<script type="text/javascript">

 function update() {
	 console.log("===update function start");
	 $("#title").removeAttr("readonly");
	 $("#content").removeAttr("readonly");
	 $("#modBtn").hide();
	 $("#delBtn").hide();
	 $("#submit").show();
	 
}
 
 function sub(obj){
	 
	 console.log("===sub function start");
	 obj.action="/updateBoardContent.do";
	 obj.submit();
	 
 }


 
</script> 
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
<form action="" method="post">
<input type="hidden" name="contentId" value="${contentVO.contentId}">
	<table id="notice">
		<tr align="center">
			<th >번호</th>
			<td class="content">${contentVO.contentId }</td>
		    <th >게시글종류</th>
		    <td class="content">${contentVO.boardNm}</td>	
		    <th >작성자</th>
		    <td class="content">${contentVO.id}</td>
		    <th >작성일</th>
		    <td class="content">${contentVO.regDt}</td>	
		   <c:if test="${FileVO != null }">
		    <th>첨부파일</th>
		    <td class="content">
		     ${FileVO.orgFileName}(${FileVO.fileSize }kb)

		      <input type="button" value="다운로드" onclick="#" >
		     <%--  <input type="button" value="다운로드" onclick="location.href='/fileDown.do?contentId?${FileVO.contentId}'" > --%>
		    </td>
		    </c:if>    
		</tr>
	  <tr align="center">
		   <th colspan="4">제목</th>
		   <td colspan="6" class="content"><%-- ${contentVO.title} --%>
		   <input type="text" name="title" id="title" size="62px" value="${contentVO.title}" readonly>
		   </td>
	  </tr>
	  <tr align="center">
	   <th colspan="4" >내용</th>
	  <td colspan="6" class="content"><%-- ${contentVO.content} --%>
	   <textarea name="content"  id="content" rows="10" cols="65" maxlength="4000" readonly>${contentVO.content } </textarea> 
	  </td>	
   	  </tr>
   	  	
	</table><br>
	<div align="center" id="buttons">
	   <input class="button"	 type="button" onclick="location.href='/index.do'" value="메인화면">
	   <input class="button" type="button" onclick="location.href='/boardContentList.do?boardCd=${contentVO.boardCd}<%-- &pageNum=${pageNum} --%>'" value="목록">   
  <input class="button" type="submit" id="submit" onclick="sub(this.form)"  value="완료" style="display:none;"> 
 <!-- style="display:none;" -->
   <c:choose >
	 <c:when test="${contentVO.id eq sessionScope.id}">
	  <%--  <input  type="button" id="modBtn" onclick="location.href='/updateBoardContentPage.do?contentId=${contentVO.contentId}'" value="수정">  --%>
	  <input class="button" type="button"  id="modBtn" onclick="update();" value="수정"> 
	   <input class="button" type="button" id="delBtn" onclick="location.href='/deleteBoardContent.do?contentId=${contentVO.contentId}&boardCd=${contentVO.boardCd }'" value="삭제">
     </c:when>
    </c:choose>
    </div>
   </form>
   <form id="fileDown" name="fileDown">
   <input type="hidden" name="contentId" id="contentId" value="">
   </form>
   </article>
 </div>  
</body>

</html>