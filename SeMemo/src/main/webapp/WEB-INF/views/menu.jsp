<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <link rel="stylesheet" href="./resources/css/menu.css"/>    --> 
<header>
	<!-- 로그인 한 유저 이름 표시 -->
	<span>${loginName}</span> 님 로그인 중..
	<a href="logout?id=${loginId}">Logout</a>
</header>
<nav>
	<ul>
		<!-- 메뉴 링크 -->
		<li><a href="send">보내기</a></li>
		<li><a href="sentMemos">보낸 쪽지</a></li>
		<li><a href="receivedMemos">받은 쪽지</a></li>
		<li><a href="schdule">스케쥴</a></li>
	</ul>
</nav>