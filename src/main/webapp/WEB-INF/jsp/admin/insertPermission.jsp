<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <c:choose>
   <%-- <c:when test="${msg != null && msg == 'no' }">
     <script>
     window.alert("권한 추가 실패!");
     </script>
   </c:when>  --%>

</c:choose>  
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>권한 추가</title>
<link href="/css/default.css" rel="stylesheet" type="text/css">
<link href="/css/subpage.css" rel="stylesheet" type="text/css">	
<link rel="icon" href="data:;base64,iVBORw0KGgo=">

</head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

  function permissionSubBtn() {
	console.log("=========== permissionSubBtn start");
	$("#frm").action="/insertPermission.do";
	$("#frm").submit();
   }
</script>
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
	  <c:when test="${id ==null }">
	    <div id = "login">
			<a href="/loginPage.do">login</a> |
			<a href="/addUserPage.do">join</a>			
		</div>	
	  </c:when>
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
<article>
	<div class="clear"></div>
	<h1 align="center">권한추가</h1>
<form action="/insertPermission.do" id="frm"  method="post">
	
	<table id="notice">
		
	  <tr align="center">
		   <th colspan="">권한번호</th>
		   <td colspan=""><input type="text" name="permission" size="62px"></td>
	  </tr>
	  <tr align="center">
		   <th colspan="">권한명</th>
		   <td colspan=""><input type="text" name="permissionNm" size="62px"></td>
		 
	  </tr>
	  		
	</table><br>
	<div align="center">
	 <!--  <input  type="button" onclick="permissionSubBtn();"  value="권한추가"> -->
	 <p> 
	   <input class="button" type="submit"  value="권한추가">
	   <input class="button" type="reset" value="취소">
	   <input class="button" type="button" onclick="location.href='javascript:window.history.back();'" value="뒤로">
	   <input class="button" type="button" onclick="location.href='/adminIndex.do'" value="관리자홈">
     </p>
    </div>
  </form>
  </article>
 </div>
</body>


</html>