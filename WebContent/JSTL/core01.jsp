<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		
		<%-- JSTL (JSP Standard Tag Library : 자바를 태그로 만들어 놓은 것. 
			 CORE, XML, FMT, SQL, FUNCTION	
		--%>

		<c:set var="num1" value="10"/>
		<c:set var="num2" value="${20}"/>
		
<%-- 		<h3>num1 : ${num1}</h3> --%>
<%-- 		<h3>num2 : ${num2}</h3> --%>
		
<%-- 		<c:set var="msg" value="${'hihihihihi'}" scope="page"/>	<!-- page(기본값), request, session, application 가능 --> --%>
<%-- 		<c:set var="age" value="23"/> --%>
		
<!-- 		<div> -->
<%-- 			메세지 : ${msg} --%>
<%-- 			나이 : ${age}		 --%>
<!-- 		</div> -->
<!-- 		<br><br> -->
		
<%-- 		<jsp:useBean id="member" class="com.java.el.MemberInfo"></jsp:useBean> --%>
<%-- 		<c:set target="${member}" property="name" value="홍길동"/>	<!-- value="${param.name} --> --%>
<%-- 		<c:set target="${member}" property="id" value="abc123"/> --%>
<%-- 		<c:set target="${member}" property="pwd" value="1234"/> --%>
		
<%-- 		<h3>${member.name}</h3> --%>
<%-- 		<h3>${member.id}</h3> --%>
<%-- 		<h3>${member.pwd}</h3> --%>
		
<%-- 		<c:set var="id" value="${member.id}" scope="session"/> --%>
<%-- 		<h3>${sessionScope.id}</h3> --%>
		
<!-- 		<h3>변수 제거</h3> -->
<%-- 		<c:remove var="age"/> --%>
<%-- 		<c:remove var="id" scope="session"/>	<!-- 스코프 지정안하면 session 변수는 해당 페이지에서만 지워진다. --> --%>
<!-- 		<div > -->
<%-- 			${id} / ${age}						<!-- 변수 제거되어 출력되지 않는다. (null) --> --%>
<!-- 		</div> -->
		
	</body>
</html>