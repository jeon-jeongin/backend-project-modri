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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="${contextPath}/resources/js/jquery.bxslider.min.js"></script>
<link href="${contextPath}/resources/css/jquery.bxslider.min.css" rel="stylesheet" />
<link href="${contextPath}/resources/css/allProductCate.css" rel="stylesheet" />
<title>모든 제품 카테고리</title>
<script type="text/javascript">
	$(document).ready(function() {
		
		$('#btn').click(function(){
			$('.menu1').toggle();
		});
		
		$('.menu2').hide();
		
		$('.menu1').click(function(){
	         $('.menu2').slideUp();
	         if ($(this).children('.menu2').is(':hidden')){
	            $(this).children('.menu2').slideDown();
	         } else{
	            $(this).children('.menu2').slideUp();
	         }
	      });
		
		$('.bxslider').bxSlider( {
	        mode: 'horizontal',
	        speed: 200,        
	        pager: false,      
	        moveSlides: 1,     
	        slideWidth: 650,   
	        minSlides: 1,     
	        maxSlides: 1,     
	        slideMargin: 5,    
	        auto: true,        
	        autoHover: true,  
	        controls: false   
	    });
		
		var list_zone = document.getElementById("MD_photo_list");
		var ul_li = list_zone.children;
		var num = 0;
		$('#next_btn').click(function(){
			if(num>=ul_li.length-3){
				return false;
			}
			num++;
			list_zone.style.marginLeft = -210 * num + "px";
			return false;
		});
		
		$('#before_btn').click(function(){
			if(num<=0){
				return false;
			}
			num--;
			list_zone.style.marginLeft = -210 * num + "px";
			return false;
		});
		
	});
</script>
</head>
<body>
	<div class="nav">
		<div class="section">
			<div class="aside">
				<button id="btn">카테고리</button>
				<ul id="menu" class="menu_expandFirst">
					<li class="menu1">
						<a href="#">베이비&임산부 카테고리</a>
						<ul id="babyMenu" class="menu2">
							<li><a href="#">스킨케어</a></li>	
							<li><a href="#">헤어</a></li>	
							<li><a href="#">임산부케어</a></li>		
						</ul>
					</li>
					<li class="menu1">
						<a href="#">남성 카테고리</a>
						<ul id="manMenu" class="menu2">
							<li><a href="#">스킨케어</a></li>	
							<li><a href="#">메이크업</a></li>	
							<li><a href="#">헤어</a></li>			
						</ul>
					</li>
					<li class="menu1">
						<a href="#">반려동물 카테고리</a>
						<ul id="animalMenu" class="menu2">
							<li><a href="#">샴푸</a></li>	
							<li><a href="#">귀세정제</a></li>	
							<li><a href="#">치약</a></li>		
						</ul>
					</li>
					<li class="menu1">
						<a href="#">스킨케어</a>
						<ul id="skinMenu" class="menu2">
							<li><a href="#">스킨/토너</a></li>
							<li><a href="#">로션/에멀젼</a></li>
							<li><a href="#">페이스오일</a></li>
							<li><a href="#">크림</a></li>
							<li><a href="#">젤</a></li>
						</ul>
					</li>
					<li class="menu1">
						<a href="#">바디</a>
						<ul id="bodyMenu" class="menu2">
							<li><a href="#">바디워시</a></li>
							<li><a href="#">바디로션</a></li>
							<li><a href="#">풋케어</a></li>
							<li><a href="#">입욕제</a></li>
							<li><a href="#">데오드란트</a></li>
						</ul>
					</li>
					<li class="menu1">
						<a href="#">네일</a>
						<ul id="nailMenu" class="menu2">
							<li><a href="#">네일컬러</a></li>
							<li><a href="#">네일케어</a></li>
							<li><a href="#">네일리무버</a></li>
						</ul>
					</li>
					<li class="menu1">
						<a href="#">세탁용품</a>
						<ul id="laundryMenu" class="menu2">
							<li><a href="#">세제</a></li>
							<li><a href="#">섬유유연제</a></li>
							<li><a href="#">세탁조클리너</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="main1">
				<p>New Product</p>
				<ul class="bxslider">
					<li><img src="${contextPath}/resources/image/productPhoto01.jpg"/></li>
					<li><img src="${contextPath}/resources/image/productPhoto02.jpg" /></li>
					<li><img src="${contextPath}/resources/image/productPhoto03.jpg" /></li>
					<li><img src="${contextPath}/resources/image/productPhoto04.jpg" /></li>
				</ul>
				<div class="main2">
					<p>MD's PICK</p>
					<div id="MD_photo">				
						<ul id="MD_photo_list">
							<li>
								<a href="" class="MD_List">
									<img src="${contextPath}/resources/image/MD_Pick01.jpg"/>
									<div class="MD_Pick">바디워시</div>
								</a>
							</li>
							<li>
								<a href="" class="MD_List">
									<img src="${contextPath}/resources/image/MD_Pick02.jpg"/>
									<div class="MD_Pick">핸드크림</div>
								</a>
							</li>
							<li>
								<a href="" class="MD_List">
									<img src="${contextPath}/resources/image/MD_Pick03.jpg"/>
									<div class="MD_Pick">입욕제</div>
								</a>
							</li>
							<li>
								<a href="" class="MD_List">
									<img src="${contextPath}/resources/image/MD_Pick04.jpg"/>
									<div class="MD_Pick">파운데이션</div>
								</a>
							</li>
							<li>
								<a href="" class="MD_List">
									<img src="${contextPath}/resources/image/MD_Pick05.jpg"/>
									<div class="MD_Pick">샴푸</div>
								</a>
							</li>
							<li>
								<a href="" class="MD_List">
									<img src="${contextPath}/resources/image/MD_Pick06.jpg"/>
									<div class="MD_Pick">틴트</div>
								</a>
							</li>
						</ul>
					</div>	
					<p class="btn_wrap">
						<a href="#" id="before_btn">&lt;</a> <a href="#" id="next_btn">&gt;</a>
					</p>
				</div>

			</div>
		</div>
	</div>
</body>
</html>