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
<title>전체 회원 목록</title>
<link href="/css/default.css" rel="stylesheet" type="text/css">
<link href="/css/subpage.css" rel="stylesheet" type="text/css">	
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>

function memberUptPermission(pSeq, pObj) {
	console.log("==============="+pSeq+":"+pObj.value);
	
	if (pSeq > 0) {
		document.getElementById("useq").value = pSeq;
		document.getElementById("permission").value = pObj.value;
	}
	document.getElementById("h_frm").action="/updateUserPermission.do";
	document.getElementById("h_frm").submit();
	
	
	console.log("==============="+document.getElementById("h_seq").value+":"+document.getElementById("h_permission").value);
}

function memberDel(pId) {
	console.log("==============="+pId);

	document.getElementById("h_id").value = pId;
	document.getElementById("h_frm").action = "/userDelete.do";
	document.getElementById("h_frm").submit();
	
	console.log("==============="+document.getElementById("h_id").value);
}
 
function keyWordBtn() {
	$("#keyFrm").action="/userList.do?keywordType='"+$("#keywordType").val()+"'&keyword="+$("#keyword").val();
	$("#keyFrm").submit();
}

function memberUpd(pId) {
	console.log("==============="+pId);
	document.getElementById("h_id").value = pId;
	document.getElementById("h_frm").action = "/updateUseYn.do";
	document.getElementById("h_frm").submit();
}
</script>

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
	
<!-- 	<div class="clear"></div>
<nav id="sub_menu">
<ul>
<li><a href="/index.do">HOME</a></li>
<li><a href="#">Public News</a></li>
<li><a href="#">Driver Download</a></li>
<li><a href="#">Service Policy</a></li>
</ul>
</nav>
 -->
	<div class="clear"></div>
<article style="width: 890px;">

<form id="h_frm" method="post" action="">
<input type="hidden" id="h_id" name="h_id" value=""/>
<input type="hidden" id="useq" name="useq" value=""/>
<input type="hidden" id="permission" name="permission" value=""/>
 </form>
	<table id="notice">
	    <tr align="center">
	      <th class="tno"><b>사용자 순번</b></th>
	      <th class="tdate"><b>권한</b></th>
	      <th class="tdate"><b>아이디</b></th>
	      <th class="tdate"><b>이름</b></th>
	      <th class="tdate"><b>닉네임</b></th>
	      <th class="tdate"><b>이메일</b></th>
	      <th class="tdate"><b>폰번호</b></th>
	      <th class="tdate"><b>전화번호</b></th>
	      <th class="tdate"><b>우편번호</b></th>
	      <th class="tdate"><b>주소1</b></th>
	      <th class="tdate"><b>주소2</b></th>
	      <th class="tdate"><b>생년월일</b></th>
	      <th class="ttitle"><b>메일수신여부</b></th>
	      <th class="ttitle"><b>사용여부</b></th>
	      <th class="tdate"><b>IP제한여부</b></th>
	      <th class="tdate"><b>삭제여부</b></th>
	      <th class="tdate"><b>인증일</b></th>
	      <th class="tdate"><b>가입일</b></th>
	      <th class="tread"><b>회원삭제</b></th>
	     <!--  <td><b>권한변경</b></td> -->
	    </tr>
  <c:choose>
    <c:when test="${allUserList != null }">
	   <c:forEach var="user" items="${allUserList}" >  
	   <tr align="center">
	   	  <td>${user.useq}</td>
	   	  <td> 
	   	  	  <select name="permission" onchange="javascript:memberUptPermission('${user.useq}', this);">
	   	  		<option value="${user.permission}">${user.permission}</option>
	   	  		<option value="1">1(일반)</option>
	   	  		<option value="500">500(중간관리자)</option>
	   	  		<option value="999">999(최종관리자)</option>
	   	  	  </select>
	   	  	  
	   	  </td> 
	      <td>${user.id}</td>
	      <td>${user.userNm}</td>
	      <td>${user.userNick}</td>
	      <td>${user.email}</td>
	      <td>${user.hphone}</td>
	      <td>${user.phone}</td>
	      <td>${user.zipcode}</td>
	      <td>${user.addr1}</td>
	      <td>${user.addr2}</td>
	      <td>${user.birthday}</td>
	      <td>${user.mailingYn}</td>
	      <td>${user.useYn}</td>
	      <td>${user.ipLimit}</td>
	      <td>${user.deleteYn}</td>
	      <td>${user.authDt}</td>
	      <td>${user.regDt}</td>
	      <td>
	      <c:if test="${user.useYn == 'Y' }">
	      <input type="button" onclick="javascript:memberDel('${user.id}');" value="삭제">
	      
	      </c:if>
	      <c:if test="${user.useYn == 'N' }">
	      <input type="button" onclick="javascript:memberUpd('${user.id}');" value="사용">
	    
	      </c:if>
	      </td>
	      <%-- <td><a href="/updatePerm.do?id=${id}">권한</a></td> --%>
	    </tr>
	  </c:forEach>
    </c:when>
  </c:choose>
</table>
   
<form action = "" method="get" id ="keyFrm">  
   <div align="center"> 
    <select name="keywordType" id="keywordType">
		<option value="">전체보기</option>
		<option value="id">아이디</option>
		<option value="userNm">이름</option>	
		<option value="permission">권한</option>
		<option value="useYn">사용여부(Y/N)</option>		
	</select>
			<input type="text" name="keyword" id="keyword">
			<input class="button"  type="button" name="keyBtn" id="keyBtn" onclick="keyWordBtn();" value="검색">
  </div>
 </form>
 <p>
 <input class="button"  type="button" onclick="location.href='javascript:window.history.back();'" value="뒤로">
 <input class="button"  type="button" onclick="location.href='/adminIndex.do'" value="관리자홈">
</p> 

</article>
</div>
</body>
</html>