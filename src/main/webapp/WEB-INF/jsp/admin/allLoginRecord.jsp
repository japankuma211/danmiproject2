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
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<script type="text/javascript">

function keyWordBtn() {
	$("#keyFrm").action="/allLoginRecord.do?keywordType='"+$("#keywordType").val()+"'&keyword="+$("#keyword").val();
	$("#keyFrm").submit();
}
</script>
</head>
<body>
	<table border="1"  align="center"  width="80%">
	    <tr align="center">
	      <!-- <td><b>권한</b></td> -->
	      <td><b>아이디</b></td>
	      <td><b>이름</b></td>
	      <td><b>휴대폰번호</b></td>
	      <td><b>접속일</b></td>
	    </tr>
  <c:choose>
   <c:when test="${loginRecord !=null }">  
    <c:forEach var="login" items="${loginRecord}" >    
	   <tr align="center">
	      <td>${login.id}</td>
	      <td>${login.userNm}</td>
	      <td>${login.hphone}</td>
	      <td>${login.regDt}</td>
	   </tr>
    </c:forEach>
   </c:when>
 </c:choose>
   </table>
   <br>
   <form action = "" method="get" id ="keyFrm">  
   <div align="center"> 
    <select name="keywordType" id="keywordType">
		<option value="">전체보기</option>
		<option value="id">아이디</option>
		<option value="userNm">이름</option>	
	</select>
		<input type="text" name="keyword" id="keyword">
		<input type="button" name="keyBtn" id="keyBtn" onclick="keyWordBtn();" value="검색">
  </div>
 </form>
   <p>
	 <input type="button" onclick="location.href='javascript:window.history.back();'" value="뒤로">
	 <input type="button" onclick="location.href='/adminIndex.do'" value="관리자홈">
   </p>
</body>
</html>