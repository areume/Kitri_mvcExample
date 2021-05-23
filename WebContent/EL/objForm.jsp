<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>03</title>
	</head>
	
	<body>
		
		<%-- JSP는 web.xml에서 mapping 하지 않는다. --%>
		<form action="objFormView.jsp" method="post" accept-charset="utf-8">
			<label>이름</label>
			<input type="text" name="name">
			<br><br>
			
			<label>아이디</label>
			<input type="text" name="id">
			<br><br>
			
			<label>비밀번호</label>
			<input type="text" name="pwd">
			<br><br>
			
			<input type="submit" value="전송">
			<input type="reset" value="취소">
		</form>
		
		<%	// 자바코드 작성가능 - 거의 안씀.
			java.util.Date date=new java.util.Date();
		
			
			// page scope : 현재 페이지에서만 데이터 공유
			pageContext.setAttribute("pName","apple");
			
			// request scope : 요청 시, 데이터 공유 (form, include, forward)
			request.setAttribute("rName","banana");
			
			// session scope : 하나의 웹 애플리케이션에서 데이터 공유 (Cookies, Session) > 웹 브라우저 1 개
			session.setAttribute("sName","melon");
			
			// application scope : 하나의 웹 애플리케이션에서 데이터 공유 > 웹 서버가 꺼질 때까지 공유
			application.setAttribute("aName","strawberry");
		%>
		
	</body>
</html>