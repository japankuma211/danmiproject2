<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
   <c:when test="${msg == 'ok' && msg != null}">
     <script>
     window.alert("성공!");
     </script>
   </c:when> 
</c:choose> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>권한리스트 </title>
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
     <h1 align="center">권한리스트</h1>	 
      <table id="notice" >
      <tr align="center">
        <th class="tno">권한번호</th>
        <th class="tread">권한명</th>
      </tr>
	 <c:forEach items="${permissionList}" var="list">	 
		    <tr align="center">
		      <td align="left">
		        ${list.permission} &nbsp;&nbsp;&nbsp;
		       </td> 
		        <td>
		        ${list.permissionNm}&nbsp;&nbsp;
		       <input  type="button" onclick="javascript:location.href='/permissionInfo.do?permissionId=${list.permissionId}'" value="이동" >
		      </td>
		    </tr> 
	</c:forEach>
 </table>
    <p align="center">
      <input class="button" type="button" onclick="location.href='/index.do'" value="메인화면">
      <input class="button" type="button" onclick="location.href='/adminIndex.do'" value="관리자홈">
      <input class="button" type="button" onclick="location.href='/insertPermissionPage.do'" value="권한추가">
    </p>
   </article>
  </div> 
</body>
</html>