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
<title>index_main</title>
<link href="${contextPath}/resources/css/main.css" rel="stylesheet" />
<style type="text/css">
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.search-form').on('input', function(){
				if($('.search-form').val() == ''){
					$('#btn-search').attr('disabled', true);
				} else{
					$('#btn-search').attr('disabled', false);
				}
			});
		});
	</script>
</head>
<body>
	<div class="nav" style="background-image: url('${contextPath}/resources/image/indexMainBackground.jpeg');">
		<div class="search">
			<div> 
				<img src="${contextPath}/resources/image/product-search.png" width="350px" height="40px">
			</div>
			<form action="${contextPath}/user/productSearch.do" method="get">
				<input name="pname" type="text" class="search-form" placeholder="제품, 브랜드, 키워드 검색하세요.">
				<input type="submit" id="btn-search" value="검색" disabled="true">
			</form>
		</div>
	</div>
	<div class="section">
		<div class="main">
			<a href="${contextPath}/user/allProductCate.do" class="thumbnail" id="all">
				<div class="category-title">모든제품</div>
				<img src="${contextPath}/resources/image/category-01.jpg">
			</a>
			<a href="" class="thumbnail" id="skin">
				<div class="category-title">스킨케어</div>
				<img src="${contextPath}/resources/image/category-02.jpg">
			</a>			
			<a href="" class="thumbnail" id="clean">
				<div class="category-title">클렌징/필링</div>
				<img src="${contextPath}/resources/image/category-03.jpg">
			</a>			
			<a href="" class="thumbnail" id="sun">
				<div class="category-title">선케어</div>
				<img src="${contextPath}/resources/image/category-04.jpg">
			</a>			
			<a href="" class="thumbnail" id="laundry">
				<div class="category-title">세탁용품</div>
				<img src="${contextPath}/resources/image/category-05.jpg">
			</a>			
			<a href="" class="thumbnail" id="detergent">
				<div class="category-title">세제</div>
				<img src="${contextPath}/resources/image/category-06.jpg">
			</a>
		</div>
	</div>     
</body>
</html>