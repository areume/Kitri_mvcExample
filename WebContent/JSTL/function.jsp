<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:set var="str1" value="Function 태그를 사용합니다."/>
	<c:set var="str2" value="사용"/>
	<c:set var="str3" value="1,2,3,4,5,6,7,8,9,10"/>
	
	<h3>${str1}</h3>
	<h3>${str2}</h3>
	<h3><c:out value="${str3}"/></h3>
	<br><br>
	
	<div>
		1.문자열 길이 : ${fn:length(str1)}<br>
		2.문자열 추출 : ${fn:substring(str1,3,6)}<br>
		3.문자열 치환 : ${fn:replace(str1," ","-")}<br>
		4.문자열 위치 : ${fn:indexOf(str1,"t")}<br>

		5.대문자 : ${fn:toUpperCase(str1)}<br>
		6.소문자 : ${fn:toLowerCase(str1)}<br>
		
		7.문자열1에서 문자열2에 포함되어 있는 문자열 이후 : ${fn:substringAfter(str1,str2)}<br>
		8.문자열1에서 문자열2에 포함되어 있는 문자열 이전 : ${fn:substringBefore(str1,str2)}<br>
		
		9.시작 문자열 : ${fn:startsWith(str1,'Fun')}<br>
		10.끝 문자열 : ${fn:endsWith(str1,'사용합니다.')}<br>
		11.두 문자열이 포함(대소분자 구분) : ${fn:contains(str1,str2)}<br>
		12.두 문자열이 포함(대소문자 무시) : ${fn:containsIgnoreCase(str1,str2)}<br>
		
		문자열 분리해서 배열로 변환
		<c:set var="array" value='${fn:split(str3,",")}'/>
		<c:forEach var="i" items="${array}">${i}&nbsp;</c:forEach><br>
		
		문자열 합치기
		${fn:join(array,"*")}
		
	</div>
	
	
	
	
</body>
</html>