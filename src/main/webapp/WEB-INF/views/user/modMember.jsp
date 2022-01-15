<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${contextPath}/resources/css/modMember.css" rel="stylesheet" />
<title>회원 정보 수정창</title>
<script type="text/javascript">
	window.onload = function(){
		document.modForm.onsubmit = function() {
			var passNode = document.getElementById("pass");

			var passCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^&_*])[a-zA-Z0-9!@#$%^&_*]{7,9}$/i;
			if(!(passCheck.test(passNode.value))) {
				alert("비밀번호는 영문자, 숫자, 특수문자 조합으로 7-9자리를 사용해야합니다.");
				passNode.value = null;
				passNode.focus();
				return false;
			}
		};	
	};
</script>
</head>
<body>
	<div class="nav">
	<form method="get" action="${contextPath}/user/modUser.do" class="modForm" name="modForm">
	<div class="mod">
				<p>아이디</p>
				<input type="text" name="id" id="id" value="${user.id }" readonly="readonly">
			</div>
			<div class="mod">
				<p>비밀번호</p>
				<p id="passInfo">영문자, 숫자, 특수문자 조합으로 7-9자리를 사용해야합니다.</p>
				<input type="password" name="pass" id="pass" value="${user.pass }">
			</div>
			<div class="mod">
				<p>이름</p>
				<input type="text" name="name" id="name" value="${user.name }">
			</div>
			<div class="mod">
				<p>성별</p>
				<input type="text" name="gender" id="gender" value="${user.gender }" readonly="readonly">
			</div>
			<div class="mod">
				<p>생년월일</p>
				<input type="text" name="birth" id="birth" value="${user.birth }" readonly="readonly">
			</div>
			<div class="mod">
				<p>가입일</p>
				<input type="text" name="date" id="date" value="${user.date }" readonly="readonly">
			</div>
			<input type="submit" id="btn_mod" value="수정하기" name="btn_mod">
		</form>
	</div>
</body>
</html>