<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>
<style type="text/css">

* {
	margin: 0;
	padding: 0;
	border-width: 0;
}

body{
	background-color: #FAFAFA;
}

.header{
	display: flex;
	flex-flow: row wrap;
	justify-content: flex-start;
	height: 80px;
	background-color: #679467;
} 

.header #banner{
	position: relative;
    margin: 0 auto; 
	width: 900px;
}

.header #banner #logo-left{
	display: inline-block;
	margin-top:20px;
	font-size: 40px;
	font-weight: bold;
	color: white;
	cursor: pointer;
}

.header #banner .login-right h3{
	display: inline-block;
	margin-right: 10px;
	margin-top: 30px;
	font-size: 18px;
	font-weight: bold;
	color: white;	
}

.header #banner .login-right{
	float: right;
}

.header #banner #btn-login-right{
	float: right;
	margin-top:20px;
	width: 108px;
	height: 38px;
	font-size: 18px;
	font-weight: bold;
	color: white;	
	background-color: #679467; 
	border: 1px solid white; 
	cursor: pointer;
}

.header #banner #btn-login-right:hover{
	background-color: #97BB78;
}
</style>
</head>
<body>
	<div class="header">
		<div id="banner">
			<a href="${contextPath}/main.do" class="logo">
				<h1 id="logo-left">모드리</h1>
			</a>
		  <!-- <a href="#"><h3>로그인</h3></a> -->
       <c:choose>
          <c:when test="${isLogOn == true  && user!= null}">
          <div class="login-right">
          	<h3>환영합니다. ${user.name }님!</h3>
            <a href="${contextPath}/user/logout.do">
				<button type="button" id="btn-login-right">로그아웃</button>
            </a>
           </div>
          </c:when>
          <c:otherwise>
	        <a href="${contextPath}/user/loginForm.do">
	        	<button type="button" id="btn-login-right">로그인</button>
	        </a>
	      </c:otherwise>
	   </c:choose>     
		</div>
	</div>
</body>
</html>