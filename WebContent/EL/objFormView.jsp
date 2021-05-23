<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<!-- EL 내장객체 - HTTP 요청 파라미터. param/paramValues -->
		<h3>이름 : ${param.name}</h3>
		<h3>아이디 : ${param.id}</h3>
		<h3>비밀번호 : ${param.pwd}</h3>
		<br><br>
		
		
		<!-- EL 내장객체  - JSP 저장 객체 (Scope) 읽기 -->
		<ul>
			<li>${pageScope.pName}</li> 		<!-- 페이지 영역이므로 불가능하다. -->
			<li>${requestScope.rName}</li>   	<!-- 넘어오지 않았으므로 불가능하다. -->
			<li>${sessionScope.sName}</li>
			<li>${applicationScope.aName}</li>
		</ul>
		
		<!-- 새 탭에 주소 복사해서 보고, 다른 브라우저에서도 확인해보기 -->	
	</body>
</html>