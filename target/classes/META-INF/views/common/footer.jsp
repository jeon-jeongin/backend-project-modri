<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false"
 %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>하단 부분</title>
  <style type="text/css">
  * {
	margin: 0;
	padding: 0;
	border-width: 0;
	}
	
	body{
		background-color: #FAFAFA;
	}
	
	.footer{
	background-color: #FAFAFA;
	}
		
	.footer-menu{
		background-color: #FAFAFA;
		border-top: 1px solid #d9d9d9;
		border-bottom: 1px solid #d9d9d9; 
	}
		
	.footer-menu li{
	    float: left;
	    list-style: none;
	    padding: 15px 0 13px 0;
	}
		
	.footer-menu ul {
	    max-width: 900px;
	    margin: 0 auto;
	    padding-left: 0;
	    overflow: hidden;
	}
		
	.footer-menu li {
	    float: left;
	    list-style: none;
	    padding: 15px 0 13px 0;
	}
		
	.footer-menu li a {
	    display: inline-block;
	    color: #818181;
	    padding: 0 20px;
	    font-size: 15px;
	    text-decoration: none;
	}
		
	.footer-menu li:first-child a {
	    padding-left: 10px;
	}
		
	.company-info{
		color: #818181;
	    max-width: 900px;
	    margin: 0 auto;
	    padding-bottom: 10px;
	    padding-top: 10px;
	    overflow: hidden;
	}
		
	.company-info p{
		font-size: 15px;
	    padding-left: 10px;
	}
  </style>
</head>
<body>
<div class="footer">
        <div class="footer-menu">
            <ul>
                <li class="mb">
                    <a href="#">이용약관</a>
                </li>
                <li class="mb privacy-txt">
                    <a href="#">개인정보처리방침</a>
                </li>
                <li class="mb cscenter"">
                    <a href="#">고객만족센터</a>
                </li>
                <li class="mb notice">
                    <a href="#">공지사항</a>
                </li>
            </ul>
        </div>
        <hr/>
        <div class="company-info">
	    <p>
		    <strong>모드리 : 더 가까이 더 자연스럽게</strong>
		    <br>
		    대한민국 서울특별시 OO구 OO동
		    <span class="bar">|</span>
		    대표자 : OOO
		    <span class="bar">|</span>
		    통신판매업신고 : 제 2021-XXXX-XXXX호
		    <span class="bar">|</span>
		    개인정보담당자 : 
		    <a href="">XXXXXXX@OOOOO.com</a>
	    </p>
    </div>
	</div>
</body>
</html>