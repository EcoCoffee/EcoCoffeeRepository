<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/css/body.css"/>
<link rel="stylesheet" href="./resources/css/memo.css"/>
</head>
<body>
	<!-- 메뉴 인클루드 -->
<jsp:include page="menu.jsp"/>
	<section>
		<c:if test="${empty memolist}">
			보낸 메모가 없습니다.
		</c:if>
	<c:forEach items="${memolist}" var="value">
		<c:if test="${!empty memolist}">
		<!-- 보낸 메모가 존재하면 리스트 표시, 없으면 메시지 표시 -->
					<article>
						<!-- 제목 표시 -->
						<h1>${value.title}</h1>
						<!-- 받는 사람 아이디, 작성일 표시 -->
						<h2>${value.toId}&nbsp;${value.inputdate}&nbsp;</h2>
						<!-- 내용 표시 -->
						<h3><pre>${value.content}</pre></h3>
					</article>
		</c:if>			
	</c:forEach>				
	</section>
</body>
</html>