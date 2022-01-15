<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>    
<html>
<head>
<meta charset="UTF-8">
<link href="${contextPath}/resources/css/listMembers.css" rel="stylesheet" />
<title>회원 정보 출력창</title>
</head>
<body>
	<div class="nav">
		<table border="1" width="70%">
		    <tr align="center" bgcolor="#679467">
		      <td><b>아이디</b></td>
		      <td><b>비밀번호</b></td>
		      <td><b>이름</b></td>
		      <td><b>성별</b></td>
		      <td><b>생년월일</b></td>
		      <td><b>가입일</b></td>
		      <td><b>수정</b></td>
		      <td><b>삭제</b></td>
		   </tr>
		   
		   <c:choose>
		    <c:when test="${empty usersList}" >
		      <tr>
		        <td colspan=5>
		          <b>등록된 회원이 없습니다.</b>
		       </td>  
		      </tr>
		   </c:when>  
		   <c:when test="${!empty usersList}" >
		      <c:forEach  var="user" items="${usersList }" >
		        <tr align="center">
		          <td>${user.id}</td>
			      <td>${user.pass}</td>
			      <td>${user.name}</td>
			      <td>${user.gender}</td>
			      <td>${user.birth}</td>
			      <td>${user.date}</td>
			      <td><a href="${contextPath}/user/modMember.do?id=${user.id }">수정하기</a></td>
		     	  <td><a href="${contextPath}/user/removeUser.do?id=${user.id }">삭제하기</a></td>       
		       </tr>
		     </c:forEach>
		</c:when>
		</c:choose>
		</table>
	</div>
</body>
</html>
