<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
	
		<!-- 하나의 servlet-name에는 한개만 mapping 할 수 있다. xml 파일 확인 -->
	
		<h3>url-pattern : 디렉터리 패턴 방식</h3>
		<a href="http://localhost:8181/mvcExample/com/java/mvc01/Directory">Directory</a><br> <!-- 새로 mapping 했기 때문에 기존의 것은 사용불가 -->
		<a href="http://localhost:8181/mvcExample/aa/bb/cc/ABC">Directory</a><br>			  <!-- 새로 mapping 했기 때문에 기존의 것은 사용불가 -->
		<a href="http://localhost:8181/mvcExample/xyz">Directory</a><br>					  <!-- 새로 mapping 했기 때문에 기존의 것은 사용불가 -->
		
		<h3>url-pattern : 확장자 패턴 방식</h3>
		<a href="http://localhost:8181/mvcExample/xyz.nhn">Directory</a><br>
		<a href="http://localhost:8181/mvcExample/abc.nhn">Directory</a><br>
		<a href="http://localhost:8181/mvcExample/kkk/xxx/yyy/ijk.nhn">Directory</a><br>
		
		<!-- mapping 할 때, *를 사용하면 여러개를 묶을 수 있다. (확장자 패턴 방식에만 적용할 수 있다.) -->
		
	</body>
</html>