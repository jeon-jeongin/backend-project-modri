<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="result" value="${param.result }" />
<%
   request.setCharacterEncoding("UTF-8");
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${contextPath}/resources/css/loginForm.css" rel="stylesheet">
<title>로그인창</title>
<c:choose>
	<c:when test="${result=='loginFailed' }">
	  <script type="text/javascript">
		window.onload = function(){
			alert(" 아이디 또는 비밀번호가 잘못 입력 되었습니다. \n 아이디와 비밀번호를 정확히 입력해 주세요.");
			history.go(-1);
		} 
	</script>
	</c:when>
	<c:otherwise>
	  <script type="text/javascript">
		window.onload = function(){
			var idNode = document.getElementById("id"); 
			var passNode = document.getElementById("pass");
			var btn = document.getElementById("btn_log");	
			
			btn.onclick = function(){
				if(idNode.value == ""){					
					alert("아이디를 입력하세요.");
					idNode.focus();
					return false;						
				}
				
				if(passNode.value == ""){
					alert("비밀번호를 입력하세요.");
					passNode.focus();
					return false;
				}
				document.log_f.submit();
			}
		} 
	</script>
	</c:otherwise>
</c:choose>

</head>
<body>
   <div class="nav">
		<form action="${contextPath}/user/login.do" method="post" class="loginForm" name="log_f">
			<h2>로그인</h2>
			<div class="idForm">
				<input type="text" name="id" id="id" placeholder="아이디" value="">
			</div>
			<div class="passForm">
				<input type="password" name="pass" id="pass" placeholder="비밀번호" value="">
			</div>
			<input type="submit" id="btn_log" value="로그인">
			<div class="btn_bottom">
				모드리가 처음이신가요? <a href="${contextPath}/user/memberFormCk.do">회원가입</a>
			</div>
		</form>
	</div>
</body>
</html>
