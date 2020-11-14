<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:choose>
   <c:when test="${msg != null && msg == 'ok' }">
     <script>
       window.alert("성공!");
     </script>
   </c:when>
</c:choose>  
 
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>권한리스트</title>
<link href="/css/default.css" rel="stylesheet" type="text/css">
<link href="/css/subpage.css" rel="stylesheet" type="text/css">	
<link rel="icon" href="data:;base64,iVBORw0KGgo=">

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<script type="text/javascript">
function modifyBtn() {
	
    console.log("===modifyBtn function start");
    $("#permission").removeAttr("readonly");
    $("#permissionNm").removeAttr("readonly");
    $("#subBtn").removeAttr("style");
    $("#permission").focus();
    $("#modBtn").hide();
    $("#delBtn").hide();
    $("#regDt").hide();
    $("#regDt1").hide(); 
    $("#resetBtn").show();
    

}

function updateBtn(obj) {
	 console.log("===updateBtn function start");
	 document.getElementById("frm").action="/updatePermission.do";
	 document.getElementById("frm").submit();
		
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
	<h1 align="center">권한</h1>
<form action="/updatePermission.do" id="frm" method="post" >
<input type="hidden" name="permissionId" value="${vo.permissionId}">
	<table id="notice">
		<tr align="center">
			 <th class="tno">권한번호</th>
			 
			 <th id="regDt" class="tdate">생성일자</th>
			 <th id="regDt" class="tread">권한명</th>
	      </tr>
	      <tr align="center">		 
			<td><input type="text" name="permission" id="permission" value="${vo.permission }"  readonly></td>  
		    <td id="regDt1">
		    <input type="text" name="regDt"  readonly value="${vo.regDt}" >
		     </td>	
		    <td><input type="text" name="permissionNm" id="permissionNm" readonly  value="${vo.permissionNm}"> </td>
		</tr>
	</table><br>
	<div align="center">
   <input class="button" type="button" onclick="location.href='/adminIndex.do'" value="관리자홈">
   <input class="button" type="button" onclick="javascript:window.history.back();" value="돌아가기">
   <input class="button" type="button"  id="modBtn" onclick="modifyBtn();" value="수정">
   <input class="button" type="button" id="subBtn" value="완료"  onclick="updateBtn(this);"  style="display:none;">
  <!--  <input type="submit" id="subBtn" value="완료" style="display:none;" > -->
   <input class="button" type="reset" id="resetBtn" value="취소" style="display:none;" >
   <input class="button" type="button"  id="delBtn" onclick="location.href='/deletePermission.do?permissionId=${vo.permissionId}'" value="삭제">
    </div>
  </form>
  </article>
 </div>
</body>
</html>