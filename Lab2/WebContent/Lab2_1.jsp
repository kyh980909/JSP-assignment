<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lab2_1</title>
</head>
<body>
<%	pageContext.include("header.jsp"); %>
<form action="Lab2_1_result.jsp" method="post">
	�̸� : <input name="name" type="text"><br><br>
	�й� : <input name="stu_num" type="text"><br><br>
	while�� <input type="radio" name="select" value="while">
	for�� <input type="radio" name="select" value="for"><br><br>
	�Է�Ƚ�� <input name="count" type="number"><br><br>
	�Է� ���� <input name="input" type="text"><br><br>
	<input type="submit" value="������">
</form>
</body>
</html>