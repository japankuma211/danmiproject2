<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/smarteditor/static/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<meta charset="UTF-8">
<title>게시판 수정</title>
<link href="/css/default.css" rel="stylesheet" type="text/css">
<link href="/css/subpage.css" rel="stylesheet" type="text/css">	
<link rel="icon" href="data:;base64,iVBORw0KGgo=">

<script type="text/javascript">
 function boardTp(pSeq, pObj) {
	 console.log("==============="+pSeq+":"+pObj.value);
	 document.getElementById("boardTp").value = pObj.value;
} 
function recomYn(pSeq, pObj) {
	console.log("==============="+pSeq+":"+pObj.value);
	document.getElementById("recomYn").value = pObj.value;
}
function scrapYn(pSeq, pObj) {
	console.log("==============="+pSeq+":"+pObj.value);
	document.getElementById("scrapYn").value = pObj.value;
}
function replyYn(pSeq, pObj) {
	console.log("==============="+pSeq+":"+pObj.value);
	document.getElementById("replyYn").value = pObj.value;
}
function categoryYn(pSeq, pObj) {
	console.log("==============="+pSeq+":"+pObj.value);
	document.getElementById("categoryYn").value = pObj.value;
}
function permRead(pSeq, pObj) {
	console.log("==============="+pSeq+":"+pObj.value);
	document.getElementById("permRead").value = pObj.value;
}
function permInst(pSeq, pObj) {
	console.log("==============="+pSeq+":"+pObj.value);
	document.getElementById("permInst").value = pObj.value;
}
function useYn(pSeq, pObj) {
	console.log("==============="+pSeq+":"+pObj.value);
	document.getElementById("useYn").value = pObj.value;
}
function subBtn(obj) {
	obj.action="/updateBoard.do";
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
	<h1 align="center">게시판 수정</h1>
<form action=""  method="post">
	
	<table id="notice">
		<tr align="center">
		   <th  colspan="">게시판코드</th>
		   <td colspan=""><input type="text" name="boardCd" value= " ${vo.boardCd}"readonly="readonly"></td>
	  </tr>
	  <tr align="center">
		   <th colspan="">게시판이름</th>
		   <td colspan=""><input type="text" name="boardNm" value="${vo.boardNm}" ></td>
		 
	  </tr>
	  		
		<tr align="center">
		    <th colspan="">게시판타입(N:일반형/I:이미지형/C:캘린더형)</th>
		    <td><select name="boardTp"  onchange="javascript:boardTp('${vo.boardTp}', this);" >
		       <option value="${vo.boardTp}">${vo.boardTp}</option>
		       <option value="N">N</option>
		       <option value="I">I</option>
		       <option value="C">C</option>     
		    </select>
		  </td>	
		</tr>
		<tr align="center">
		    <th colspan="">추천여부</th>
		    <td><select name="recomYn"  onchange="javascript:recomYn('${vo.recomYn}', this);" >
		       <option value="${vo.recomYn}">${vo.recomYn}</option>
		       <option value="Y">Y</option>
		       <option value="N">N</option>  
		    </select>
		  </td>	
		<tr align="center">
		  <th colspan="">스크랩여부</th>
		    <td><select name="scrapYn"  onchange="javascript:scrapYn('${vo.scrapYn}', this);" >
		       <option value="${vo.scrapYn}">${vo.scrapYn}</option>
		       <option value="Y">Y</option>
		       <option value="N">N</option>  
		    </select>
		  </td>	
		 </tr>
		 <tr align="center">
		  <th colspan="">댓글여부</th>
		    <td><select name="replyYn"  onchange="javascript:replyYn('${vo.replyYn}', this);"  >
		       <option value="${vo.replyYn}">${vo.replyYn}</option>
		       <option value="Y">Y</option>
		       <option value="N">N</option>
		    </select>
		  </td>
		  </tr>
		  <tr align="center">
		  <th colspan="">카테고리여부</th>
		    <td><select name="categoryYn"   onchange="javascript:categoryYn('${vo.categoryYn}', this);" >
		       <option value="${vo.categoryYn}">${vo.categoryYn}</option>
		       <option value="Y">Y</option>
		       <option value="N">N</option>  
		    </select>
		  </td>	
		  </tr>
		  <tr align="center">
		  <th colspan="">사용여부</th>
		    <td><select name="useYn"   onchange="javascript:useYn('${vo.useYn}', this);" >
		       <option value="${vo.useYn}">${vo.useYn}</option>
		       <option value="Y">Y</option>
		       <option value="N">N</option>  
		    </select>
		  </td>		
		  </tr>
		 <tr align="center">
		  <th colspan="">일기권한(999:최종관리자 / 1:일반회원)</th>
		    <td><select name="permRead" onchange="javascript:permRead('${vo.permRead}', this);"  >
		       <option value="${vo.permRead}">${vo.permRead}</option>
		       <option value="999">999</option>
		       <option value="1">1</option>  
		    </select>
		  </td>		
		  </tr>
		  <tr align="center">
		  <th colspan="">쓰기권한(999:최종관리자 / 1:일반회원)</th>
		    <td><select name="permInst"  onchange="javascript:permInst('${vo.permInst}', this);"  >
		       <option value="${vo.permInst}">${vo.permInst}</option>
		       <option value="999">999</option>
		       <option value="1">1</option>  
		    </select>
		  </td>		
		  </tr> 	   	  
	  
	</table><br>
	<div align="center">
	  <input class="button" type="button" onclick="location.href='/index.do'" value="메인화면">
	  <input class="button"  type="button" onclick="subBtn(this.form);" value="수정">
	  <input class="button" type="reset" value="취소">
    </div>
  </form>
</article>
</div>
</body>


</html>