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
	<form action="fmtView.jsp" method="post">
		<label>메세지</label>
		<input type="text" name="msg">
		<br><br>
		
		<input type="checkbox" name="fruit" value="사과"><label>사과</label>
		<input type="checkbox" name="fruit" value="딸기"><label>딸기</label>
		<input type="checkbox" name="fruit" value="포도"><label>포도</label>
		<br><br>
		
		<input type="submit" name="전송">
		<input type="reset" name="취소">
	</form>
</body>
</html>