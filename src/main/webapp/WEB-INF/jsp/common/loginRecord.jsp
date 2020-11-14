<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 내역</title>
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
	<table border="1"  align="center"  width="80%">
	    <tr align="center">
	      <!-- <td><b>권한</b></td> -->
	      <td><b>아이디</b></td>
	      <td><b>이름</b></td>
	      <td><b>휴대폰번호</b></td>
	      <td><b>가입일</b></td>
	    </tr>
  <c:choose>
  <c:when test="${loginRecord !=null }">  
   <c:forEach var="login" items="${loginRecord}" >    
   <tr align="center">
   	  <%-- <fmt:parseNumber var="i" type="number" value="${loginRecord.permission}">
      <td>${i}</td>
      </fmt:parseNumber> --%>
      <td>${login.id}</td>
      <td>${login.userNm}</td>
      <td>${login.hphone}</td>
      <td>${login.regDt}</td>
    </tr>
  </c:forEach>
 </c:when>
 </c:choose> 
   </table>
   <p><a href="javascript:window.history.back();">홈으로</a></p>
</body>
</html>