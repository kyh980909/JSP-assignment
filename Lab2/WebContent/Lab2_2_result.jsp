<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lab2_2_result</title>
</head>
<body>
<form action="logout.jsp" method="post">
	<%= request.getParameter("id") %>님 로그인 하셨습니다.
	<input type="button" value="로그아웃">
</form>
</body>
</html>