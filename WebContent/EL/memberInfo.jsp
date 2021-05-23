<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>02</title>
	</head>	
	<body>
<!-- 		<h3>EL - 2. Getter, Setter Method</h3> -->
		
		<%-- 객체 선언 --%>
		<jsp:useBean id="member" class="com.java.el.MemberInfo"/>
		
		<%-- setters --%>
		${member.setName("이영자")}
		${member.setId("lee1234")}
		${member.setPwd("1234")}
		
		<%-- getters --%>
		<h3>${member.getName()}</h3>
		<h3>${member.getId()}</h3>
		<h3>${member.getPwd()}</h3>
		<br><br>
		
		<%-- 변수명으로 접근하지만 getter 메소드를 호출하는 것이다. --%>
		<h3>${member.name}</h3>
		<h3>${member.id}</h3>
		<h3>${member.pwd}</h3>
		<br><br>
	</body>
</html>