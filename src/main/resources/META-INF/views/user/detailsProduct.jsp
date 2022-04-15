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
<link href="${contextPath}/resources/css/detailsProduct.css" rel="stylesheet" />
<title>제품 상세창</title>
</head>
<body>
<div class="nav">
	<c:choose>  
		<c:when test="${!empty productsList}" >
			<c:forEach  var="product" items="${productsList }" >
				<div class="section">
					<div id="section_l">
						<p id="photo"><img src="${contextPath}/${product.purl}" width="300px" height="300px"></p>
					</div>
					<div id="section_r">
						<p id="noCategory">상품코드 : ${product.pno} / 카테고리 : ${product.pcategory}</p>
						<p id="name">${product.pname}</p>
						<p id="desc">${product.pdesc}</p>   
						<p id="price">${product.pprice} 원</p>
						<button id="review">후기</button>
						<button id="QA">문의</button>
					</div>
				</div>
			</c:forEach>
		</c:when>
	</c:choose>
	
</div>
</body>
</html>