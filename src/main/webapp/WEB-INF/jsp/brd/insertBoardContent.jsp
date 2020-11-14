<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 쓰기</title>
<link href="/css/default.css" rel="stylesheet" type="text/css">
<link href="/css/subpage.css" rel="stylesheet" type="text/css">	
<link rel="icon" href="data:;base64,iVBORw0KGgo=">

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
 
 function subMitBtn(obj) {
	console.log("======submit function start");
	obj.action="/insertBoardContent.do";
	obj.submit();
}
 
 function index(obj) {
	 console.log("======index function start");
	 obj.action="/index.do";
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
<form action="" id="frm"  method="post" enctype="multipart/form-data">
	<input type="hidden" name="id" value="${id}">
	<input type="hidden" name="password" value="${vo.password}">
	<table id="notice" style="margin-left: -16px;">
		<tr align="center">
		    <th colspan="1">게시판종류</th>
		    <td colspan="3">
		     <select name="boardCd" style="width:380px; " >
		       <option value="1">공지사항</option>
		       <option value="2">자유게시판</option> 
		       <option value="3">Q&A</option>     
		     </select>
		  </td>	
		</tr>
		  <tr align="center">    
		    <th >아이디</th>
		    <td><%-- <input type="text" value="${id}" name="id" readonly/> --%> ${id }</td>
		    <th >전화번호</th>
		    <td><input type="text"  name="phone" value="${vo.phone}" required /></td>
		</tr> 
	  <tr align="center">
		   <th colspan="1">제목</th>
		   <td colspan="3"><input type="text" name="title" size="62px"></td>
		 
	  </tr>
	  <tr align="center">
	   <th >내용</th>
	   <td colspan="3">
	    <textarea name="content" id="content"  style="width: 100%; height: 412px;" > </textarea>           
	    <input multiple="multiple" type="file" name="file">
	   </td>
   	  </tr>			
	</table><br>
	<div align="center">
	  <input class="button"  type="button" onclick="index(this.form);" value="메인화면">
	  <input class="button" type="button" onclick="subMitBtn(this.form);" value="글쓰기">
	  <input class="button" type="reset" value="취소">
    </div>    
  </form>
  </article>
 </div> 
</body>


</html>