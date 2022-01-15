<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"
 %>
 <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
   <title><tiles:insertAttribute name="title" ignore="true"/></title>
  </head>
    <body>
    <div id="container">
      <div id="header">
         <tiles:insertAttribute name="header" ignore="true"/>
      </div>
      <div id="content">
          <tiles:insertAttribute name="body" ignore="true"/>
      </div>
      <div id="footer">
          <tiles:insertAttribute name="footer" ignore="true"/>
      </div>
    </div>
  </body>
</html>