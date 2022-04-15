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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link href="${contextPath}/resources/css/productSearch.css" rel="stylesheet" />
<title>제품 검색창</title>
</head>
<body>
	<div class="nav" style="background-image: url('${contextPath}/resources/image/indexMainBackground.jpeg');">
		<div class="search">
			<div> 
				<img src="${contextPath}/resources/image/product-search.png" width="350px" height="40px">
			</div>
			<form action="${contextPath}/user/productSearch.do" method="get">
				<input name="pname" type="text" class="search-form" id="search-form" placeholder="제품, 브랜드, 키워드 검색하세요.">
				<input type="submit" id="btn-search" value="검색">
			</form>
		</div>
	</div>
	<div class="section">
		<c:choose>
		    <c:when test="${empty productsList}" >
		    	<div class="noProduct">등록된 상품이 없습니다.</div>
		    </c:when>
		    <c:when test="${!empty productsList}" >
		     	<c:forEach  var="product" items="${productsList }" >
		     		<div class="col-sm-4 serchList">
						<a href="${contextPath}/user/detailsProduct.do?pno=${product.pno }" class="thumbnail">
							<img src="${contextPath}/${product.purl}">
							<div class="productName">${product.pname}</div>
						</a>
					</div>
				</c:forEach>
			</c:when>
		</c:choose>
	</div>
</body>
</html>