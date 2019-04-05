<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Lab1_result</title>
<%
request.setCharacterEncoding("utf-8");
%>
</head>
<body>
	<div id="container">
		<h2>주문완료</h2>
		<h3>이름 : <%=request.getParameter("name")%></h3>
		<h3>전화번호 : <%=request.getParameter("tel")%></h3>
		<h3>size : <%=request.getParameter("size")%></h3>
		<h3>수량 : <%=request.getParameter("count")%></h3>
		<hr>
		<h4>금액 : <%=request.getParameter("total_price_value")%></h4>
	</div>
</body>
</html>