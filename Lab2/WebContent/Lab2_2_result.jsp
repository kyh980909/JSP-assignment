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
	<%= request.getParameter("id") %>�� �α��� �ϼ̽��ϴ�.
	<input type="button" value="�α׾ƿ�">
</form>
</body>
</html>