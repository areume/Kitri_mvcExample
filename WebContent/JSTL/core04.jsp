<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>forToken</h3>
	<c:set var="city" value="서울, 인천, 대구, 부산, 광주, 대전, 제주도"/>
	<c:forTokens var="cdata" items="${city}" delims=",">
		<c:out value="${cdata}"/>
	</c:forTokens>
	<br><br>
	
	<c:set var="traffic" value="비행기, 자동차, 버스, 승합차 / 자전거. 오토바이. 뚜벅이"/> 
	<c:forTokens var="tdata" items="${traffic}" delims=",/." varStatus="sts">
		<c:out value="${sts.count}"></c:out>
		<c:out value="${tdata}"/>
		<br>
	</c:forTokens>
	
	
</body>
</html>