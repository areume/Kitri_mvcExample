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

	<h3>반복문 - for</h3>

	<c:forEach var='i' begin='1' end='10' step='2'>
		<h4>${i}</h4>
	</c:forEach>
	<br><br>
	
	<c:forEach var='i' begin='1' end='10'>
		<c:if test="${i%2==0}">
			<c:out value="${i}"/>
		</c:if>
	</c:forEach>
	<br><br>
	
	<c:forEach var='i' begin='1' end='100'>
		<c:set var="total" value='${total+i}'/>	 <!-- 변수가 살아있는 것은 페이지 스코프이기 때문에 변수를 밖으로 빼지 않아도 된다 -->
	</c:forEach>
	<h3>1~100 까지의 합 : ${total}</h3>
	
	
	<%-- 주석 --%>
	<%
		// 자바 명령어 가능 - 요즘은 거의 안씀, 알아만 두자!!!
		// <%@ page : page 지시어, taglib : tag 지시어 
		
		int su=77;
	
		java.util.ArrayList<String> arrList=new java.util.ArrayList<String>();
		arrList.add("사과");
		arrList.add("바나나");
		arrList.add("딸기");
		
	%>
	<%= su %>
	<br><br>
	<c:set var="arrList" value="<%=arrList%>"/>
	<c:forEach var="fruit" items="${arrList}">
		<c:out value="${fruit}"></c:out>
	</c:forEach>
	
</body>
</html>