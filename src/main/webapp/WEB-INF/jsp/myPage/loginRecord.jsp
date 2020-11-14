<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 내역</title>
<link href="/css/default.css" rel="stylesheet" type="text/css">
<link href="/css/subpage.css" rel="stylesheet" type="text/css">

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
<nav id="sub_menu">
<ul>
<li><a href="/index.do">HOME</a></li>
<!-- <li><a href="#">Public News</a></li>
<li><a href="#">Driver Download</a></li>
<li><a href="#">Service Policy</a></li> -->
</ul>
</nav>
<article>
	<table id="notice">
	    <tr align="center">
	      <!-- <td><b>권한</b></td> -->
	      <th class="tno"><b>아이디</b></th>
	      <th class="tdate"><b>이름</b></th>
	      <th class="tdate"><b>휴대폰번호</b></tdh>
	      <th class="tread"><b>가입일</b></th>
	    </tr>
  <c:choose>
  <c:when test="${loginRecord !=null }">  
   <c:forEach var="login" items="${loginRecord}" >    
   <tr >
      <td>${login.id}</td>
      <td>${login.userNm}</td>
      <td>${login.hphone}</td>
      <td>${login.regDt}</td>
    </tr>
  </c:forEach>
 </c:when>
 </c:choose> 
   </table>
 </article>
  <div class="clear"></div>
 </div>
</body>
</html>