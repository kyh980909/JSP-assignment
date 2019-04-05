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
	이름 : <input name="name" type="text"><br><br>
	학번 : <input name="stu_num" type="text"><br><br>
	while문 <input type="radio" name="select" value="while">
	for문 <input type="radio" name="select" value="for"><br><br>
	입력횟수 <input name="count" type="number"><br><br>
	입력 글자 <input name="input" type="text"><br><br>
	<input type="submit" value="보내기">
</form>
</body>
</html>