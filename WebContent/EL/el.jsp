<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>01</title>
	</head>

	<body>
<!-- 		<div>JAVA 명령어는 JSTL, EL 사용해야 한다.</div> -->

		<%-- 데이터, 연산자 --%>
<!-- 		<h3>EL - 1. 출력, 직접 데이터 사용 가능, 연산자 사용 가능. 변수는 JSTL</h3> -->
		<ol>
			<li>수 출력 : ${10}, ${99.99}</li>
			<li>문자(문자열) 출력 : ${"apple"}, ${'apple'}</li>
			<li>연산 : ${10+20}, ${10-20}, ${2*4}, ${4/5}, ${5%7}</li>
			<li>작다 : ${2<3}, ${2 lt 3}</li>
			<li>크다 : ${2>3}, ${2 gt 3}</li>
			<li>작거나 같다 : ${2.5<=3.7}, ${2 le 3}</li>
			<li>크거나 같다 : ${2.5>=3.7}, ${2 ge 3}</li>
			<li>논리 연산자 : ${"&&, AND, ||, OR, !, NOT"}</li>
			<li>NULL : ${null}</li>
		</ol>
	</body>
</html>