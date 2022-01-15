<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${contextPath}/resources/css/memberForm.css" rel="stylesheet" />
<title>회원 가입창</title>
<script type="text/javascript">
	window.onload = function(){
		
		document.signupForm.onsubmit = function() {
			var idNode = document.getElementById("id");
			var passNode = document.getElementById("pass");
			var passCkNode = document.getElementById("passCk");
			var nameNode = document.getElementById("name");
			var genderNode = document.getElementById("gender");
			var birthNode = document.getElementById("birth");
		
			if(idNode.value == "") {
				alert("아이디를 입력하세요.");
				idNode.focus();
				return false;
			}
			
			if(passNode.value == "") {
				alert("비밀번호를 입력하세요.");
				passNode.focus();
				return false;
			}
			
			var passCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^&_*])[a-zA-Z0-9!@#$%^&_*]{7,9}$/i;
			if(!(passCheck.test(passNode.value))) {
				alert("비밀번호는 영문자, 숫자, 특수문자 조합으로 7-9자리를 사용해야합니다.");
				passNode.value = null;
				passNode.focus();
				return false;
			}
			
			if(passCkNode.value == ""){
				alert("비밀번호 재확인을 입력하세요.");
				passCkNode.focus();
				return false;
			} else{
				if(passCkNode.value !== passNode.value) {
					alert("비밀번호가 일치하지 않습니다.");
					passCkNode.value = null;
					passCkNode.focus();
					return false;
				}
			}
			
			if(nameNode.value == "") {
				alert("이름을 입력하세요.");
				nameNode.focus();
				return false;
			}
			
			if(genderNode.value == "") {
				alert("성별을 선택하세요.");
				genderNode.focus();
				return false;
			}
			
			if(birthNode.value == "") {
				alert("생년월일을 선택하세요.");
				birthNode.focus();
				return false;
			}
		}
	};
</script>
</head>
<body>
	<div class="nav">
		<form method="post" action="${contextPath}/user/addUser.do" class="signupForm" name="signupForm">
		<div class="signup">
				<p>아이디</p>
				<input type="text" name="id" id="id">
			</div>
			<div class="signup">
				<p>비밀번호</p>
				<input type="password" name="pass" id="pass" placeholder="영문자, 숫자, 특수문자 조합으로 7-9자리">
			</div>
			<div class="signup">
				<p>비밀번호 재확인</p>
				<input type="password" name="passCk" id="passCk" placeholder="위에 설정한 비밀번호를 동일하게 입력하세요.">
			</div>
			<div class="signup">
				<p>이름</p>
				<input type="text" name="name" id="name">
			</div>
			<div class="signup">
				<p>성별</p>
				<select name="gender" id="gender">
					 <option value="" selected="selected">선택하세요 </option>
					 <option value="M">남자</option>
					 <option value="F">여자</option>
				</select>
			</div>
			<div class="signup">
				<p>생년월일</p>
				<input type="date" name="birth" id="birth" placeholder="yyyy-dd-mm" value="" min="1950-01-01" max="2040-12-31">
			</div>
			<input type="submit" id="btn_signup" value="가입하기" name="btn_signup">
		</form>
	</div>
</body>
